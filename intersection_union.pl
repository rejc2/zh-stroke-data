# Usage:
#   createdb zh
#   perl intersection_union.pl | psql zh
#   cd sql2; ls | xargs -P 8 -n 1 -- psql zh -f
#
# Adjust "-P 8" above for concurrent CPU cores.
# Tested on PostgreSQL 9.3 using http://postgresapp.com/.
use 5.12.0;
use File::Slurp;
use JSON::XS;
binmode STDOUT, ':utf8';
say 'CREATE EXTENSION IF NOT EXISTS postgis;';
say 'CREATE TABLE IF NOT EXISTS outlines ( ch text NOT NULL, outline geometry );';
say 'CREATE TABLE IF NOT EXISTS overlap ( ch1 text NOT NULL, ch2 text NOT NULL, overlap int );';
say 'CREATE INDEX idx_overlap on overlap (overlap);';
say 'DELETE FROM outlines; DELETE FROM overlap;';
my @chars;
for (<json/*.json>) {
    my $char = $_;
    $char =~ s/^json.|.json$//g;
    $char = chr hex $char;
    my @mls;
    for my $part (@{ JSON::XS::decode_json(File::Slurp::read_file($_)) }) {
        push @mls, [ map {
            $_->{begin} ? (
                "$_->{begin}{x} $_->{begin}{y}",
                ($_->{mid} ? "$_->{mid}{x} $_->{mid}{y}" : ()),
                "$_->{end}{x} $_->{end}{y}",
            ) : "$_->{x} $_->{y}"
        } @{  $part->{outline} } ];
    }
    say "INSERT INTO outlines VALUES ('$char', ST_MakeValid(ST_SimplifyPreserveTopology(ST_GeomFromText('MULTIPOLYGON(@{[ join ', ', map { qq[(($_))] } map { join ', ', @$_ } @mls ]})'), 32)));";
    push @chars, $char;
}
mkdir 'sql2';
for (@chars) {
    open FH, ">sql2/".ord($_).".sql";
    binmode FH, ':utf8';
    print FH qq[
    INSERT INTO overlap (
        SELECT '$_' ch1, ch ch2, (ST_AREA(ST_intersection(
            (SELECT outline FROM outlines WHERE ch = '$_'), outline
        )) / st_area(
            st_union( (SELECT outline FROM outlines WHERE ch = '$_'), outline)
        ) * 100)::int overlap FROM outlines WHERE '$_' < outlines.ch
    );
];
};