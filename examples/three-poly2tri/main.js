// Generated by LiveScript 1.2.0
(function(){
  var slice$ = [].slice;
  $(function(){
    return $.get('../../orig-chars.json', function(OrigChars){
      var shiftFloat, shapeFromOutline, scale, dim, cols, dst, boxes, scene, w, h, box, camera, updateCamera, light, renderer, keys, render, load, i, ch, x, y, obj, results$ = [];
      shiftFloat = function(){
        return parseFloat(this.shift());
      };
      shapeFromOutline = function(it){
        var shape, path, current, tokens;
        shape = new THREE.Shape;
        path = new THREE.Path;
        current = shape;
        tokens = it.split(' ');
        tokens.shiftFloat = shiftFloat;
        while (tokens.length) {
          switch (tokens.shift()) {
          case 'M':
            current.moveTo(tokens.shiftFloat(), tokens.shiftFloat());
            break;
          case 'L':
            while (tokens.length > 1) {
              current.lineTo(tokens.shiftFloat(), tokens.shiftFloat());
              if (tokens[0] === 'Z') {
                if (current !== shape) {
                  shape.holes.push(path);
                  path = new THREE.Path;
                }
                current = path;
                break;
              }
            }
          }
        }
        return shape;
      };
      scale = 0.2;
      dim = 2150;
      cols = 64;
      dst = 10;
      boxes = [];
      scene = new THREE.Scene;
      w = window.innerWidth / scale;
      h = window.innerHeight / scale;
      box = new THREE.Box3(new THREE.Vector3(0, -h, -50), new THREE.Vector3(w, 0, 50));
      camera = new THREE.OrthographicCamera(box.min.x, box.max.x, box.max.y, box.min.y, 1, 1000);
      camera.position.set(0, 0, 500);
      updateCamera = function(){
        var w, h, center;
        w = window.innerWidth / scale;
        h = window.innerHeight / scale;
        center = box.center();
        box.setFromCenterAndSize(center, new THREE.Vector2(w, h));
        camera.left = box.min.x;
        camera.right = box.max.x;
        camera.bottom = box.min.y;
        camera.top = box.max.y;
        return camera.updateProjectionMatrix();
      };
      light = new THREE.DirectionalLight(0xffffff);
      light.position.set(0, 0, 1);
      scene.add(light);
      renderer = new THREE.WebGLRenderer({
        antialias: true
      });
      renderer.setSize(window.innerWidth, window.innerHeight);
      $('#container').append(renderer.domElement);
      keys = {};
      $(document).keydown(function(e){
        return keys[e.keyCode] = true;
      }).keyup(function(e){
        return keys[e.keyCode] = false;
      }).mousewheel(function(e, delta, dx, dy){
        return scale = scale * Math.pow(1.1, delta);
      });
      render = function(){
        var x, y, i$, ref$, len$, o, p, v;
        x = 0;
        y = 0;
        if (keys[37] === true) {
          x -= dst / scale;
        }
        if (keys[39] === true) {
          x += dst / scale;
        }
        if (keys[38] === true) {
          y += dst / scale;
        }
        if (keys[40] === true) {
          y -= dst / scale;
        }
        box.min.x += x;
        box.max.x += x;
        box.min.y += y;
        box.max.y += y;
        updateCamera();
        box.expandByScalar(2 * dim);
        for (i$ = 0, len$ = (ref$ = boxes).length; i$ < len$; ++i$) {
          o = ref$[i$];
          p = new THREE.Vector3(o.position.x + dim / 2, o.position.y - dim / 2, 0);
          v = box.containsPoint(p);
          if (typeof o.load === 'function') {
            o.load();
          }
          o.traverse(fn$);
        }
        box.expandByScalar(-2 * dim);
        requestAnimationFrame(render);
        return renderer.render(scene, camera);
        function fn$(it){
          return it.visible = v;
        }
      };
      requestAnimationFrame(render);
      load = function(){
        var this$ = this;
        this.load = null;
        $.get("./a/" + this.ch + ".json", function(data){
          var j, ref$, outline, color, lineColor, offset, m, shape, points, line, i$, ref1$, len$, hole, pgeo, particles, log, altr, geometry, mesh, results$ = [];
          for (j in ref$ = data != null ? data.outlines : void 8) {
            outline = ref$[j];
            color = 0xffcc00;
            lineColor = 0xee6600;
            offset = new THREE.Vector2(+data.centroids[j][0], -data.centroids[j][1]);
            m = new THREE.Matrix4;
            m.makeTranslation(-offset.x, -offset.y, 0);
            shape = shapeFromOutline(outline);
            points = shape.createPointsGeometry();
            points.applyMatrix(m);
            line = new THREE.Line(points, new THREE.LineBasicMaterial({
              color: lineColor,
              lineWidth: 2
            }));
            line.position.set(offset.x, offset.y, 0);
            this$.add(line);
            for (i$ = 0, len$ = (ref1$ = shape.holes).length; i$ < len$; ++i$) {
              hole = ref1$[i$];
              points = hole.createPointsGeometry();
              points.applyMatrix(m);
              line = new THREE.Line(points, new THREE.LineBasicMaterial({
                color: lineColor,
                lineWidth: 2
              }));
              line.position.set(offset.x, offset.y, 0);
              this$.add(line);
            }
            pgeo = points.clone();
            particles = new THREE.ParticleSystem(pgeo, new THREE.ParticleBasicMaterial({
              color: color,
              size: 20,
              opacity: 0.5
            }));
            particles.position.set(offset.x, offset.y, 0);
            this$.add(particles);
            log = console.log;
            console.log = fn$;
            altr = window.alert;
            window.alert = fn1$;
            geometry = new THREE.ShapeGeometry(shape);
            console.log = log;
            window.alert = altr;
            geometry.applyMatrix(m);
            mesh = THREE.SceneUtils.createMultiMaterialObject(geometry, [
              new THREE.MeshLambertMaterial({
                color: color
              }), new THREE.MeshBasicMaterial({
                color: lineColor,
                wireframe: true,
                transparent: true
              })
            ]);
            mesh.position.set(offset.x + dim, offset.y, 0);
            results$.push(this$.add(mesh));
          }
          return results$;
          function fn$(){
            var args, i$, len$, str;
            args = slice$.call(arguments);
            for (i$ = 0, len$ = args.length; i$ < len$; ++i$) {
              str = args[i$];
              if (str.match(/triangulate/)) {
                color = 0x330000;
                lineColor = 0xff0000;
                break;
              }
            }
            log.call(console, data.ch, j);
            return log.apply(console, args);
          }
          function fn1$(){
            var args, i$, len$, str;
            args = slice$.call(arguments);
            for (i$ = 0, len$ = args.length; i$ < len$; ++i$) {
              str = args[i$];
              if (str.match(/Invalid/)) {
                color = 0x330000;
                lineColor = 0xff0000;
                break;
              }
            }
            log.call(console, data.ch, j);
            return log.apply(console, args);
          }
        });
      };
      for (i in OrigChars) {
        ch = OrigChars[i];
        x = ~~(+i % cols);
        y = ~~(+i / cols);
        obj = new THREE.Object3D;
        obj.ch = ch;
        obj.load = load;
        obj.position.set(x * 2 * dim, -y * dim, 0);
        boxes.push(obj);
        results$.push(scene.add(obj));
      }
      return results$;
    });
  });
}).call(this);
