String::codePointAt ?= (pos=0) ->
  str = String @
  code = str.charCodeAt(pos)
  if 0xD800 <= code <= 0xDBFF
    next = str.charCodeAt(pos + 1)
    if 0xDC00 <= next <= 0xDFFF
      return ((code - 0xD800) * 0x400) + (next - 0xDC00) + 0x10000
  return code;

require! fs
const S = 256
const T = 2048
const CharComp = require \./char_comp.json
const Chars = <[ 㠲 㠿 㽴 䀶 䁾 䉛 䋃 䋽 䌤 䍮 䐞 䡑 䡟 䡦 䩞 䪗 一 丁 七 万 丈 三 上 下 不 丐 丑 且 丕 世 丘 丙 丞 丟 並 丨 丫 中 丰 串 丶 丸 丹 主 丿 乂 乃 久 么 之 乍 乎 乏 乒 乓 乖 乘 乙 九 乞 也 乩 乳 乾 亂 亅 了 予 事 二 亍 于 云 互 亓 五 井 亙 些 亞 亟 亠 亡 亢 交 亥 亦 亨 享 京 亭 亮 亳 人 什 仁 仃 仄 仆 仇 仉 今 介 仍 仔 仕 他 仗 付 仙 仞 仟 代 令 以 仨 仰 仲 仳 仵 件 任 份 仿 企 伉 伊 伍 伎 伏 伐 休 伕 伙 伯 估 伴 伶 伸 伺 似 伽 佃 但 佇 佈 位 低 住 佐 佑 佔 何 佗 佘 余 佚 佛 作 佝 佞 你 佣 佩 佪 佬 佯 佰 佳 併 佶 佻 佼 佾 使 侃 侄 來 侈 例 侍 侏 侔 侖 侗 供 依 侮 侯 侵 侶 侷 便 係 促 俄 俊 俎 俏 俐 俑 俗 俘 俚 保 俞 俟 俠 信 修 俯 俱 俳 俸 俺 俾 倀 倆 倉 個 倌 倍 倏 們 倒 倔 倖 倘 候 倚 倜 借 倡 倣 倥 倦 倨 倩 倪 倫 倭 值 偃 假 偈 偉 偌 偎 偏 偕 做 停 健 側 偵 偶 偷 偺 偽 傀 傅 傍 傑 傖 傘 備 傢 催 傭 傯 傲 傳 債 傷 傻 傾 僂 僅 僉 像 僑 僕 僖 僚 僥 僧 僬 僭 僮 僱 僵 價 僻 儀 儂 億 儆 儈 儉 儐 儒 儔 儕 儘 償 儡 優 儲 儷 儺 儻 儼 儿 兀 允 元 兄 充 兆 兇 先 光 克 兌 免 兒 兔 兕 兗 兜 兢 入 內 全 兩 八 公 六 兮 共 兵 其 具 典 兼 冀 冂 冉 冊 再 冑 冒 冕 冖 冗 冠 冢 冤 冥 冪 冫 冬 冰 冶 冷 冽 准 凋 凌 凍 凜 凝 几 凡 凰 凱 凳 凵 凶 凸 凹 出 函 刀 刁 刃 分 切 刈 刊 刎 刑 划 列 初 判 別 刨 利 刪 刮 到 制 刷 券 刺 刻 剁 剃 則 削 剋 剌 前 剎 剔 剖 剛 剜 剝 剩 剪 剮 副 割 剴 創 剷 剽 剿 劃 劇 劈 劉 劊 劍 劑 力 功 加 劣 助 努 劫 劬 劭 劾 勁 勃 勇 勉 勒 動 勗 勘 務 勛 勝 勞 募 勠 勢 勤 勦 勵 勸 勹 勺 勻 勾 勿 包 匆 匈 匍 匏 匐 匕 化 北 匙 匚 匜 匝 匠 匡 匣 匪 匭 匯 匱 匸 匹 匾 匿 區 十 千 卅 升 午 卉 半 卑 卒 卓 協 南 博 卜 卞 占 卡 卦 卩 卬 卮 卯 印 危 即 卵 卷 卸 卹 卻 卿 厂 厄 厘 厚 厝 原 厥 厭 厲 厶 去 參 叄 又 叉 及 友 反 叔 取 受 叛 叟 叢 口 古 句 另 叨 叩 只 叫 召 叭 叮 可 台 叱 史 右 叵 叶 司 叼 吁 吃 各 吆 合 吉 吊 吋 同 名 后 吏 吐 向 吒 君 吝 吞 吟 吠 否 吧 吩 含 吭 吮 吰 吱 吳 吵 吶 吸 吹 吻 吼 吽 吾 呀 呂 呃 呆 呈 告 呎 呢 呦 周 呱 味 呵 呶 呷 呸 呻 呼 命 咀 咂 咄 咆 咋 和 咎 咐 咒 咕 咖 咚 咦 咧 咨 咩 咪 咫 咬 咯 咱 咳 咸 咻 咽 咾 咿 哀 品 哂 哄 哆 哇 哈 哉 哎 哞 員 哥 哦 哧 哨 哩 哪 哭 哮 哲 哳 哺 哼 哽 唁 唄 唆 唇 唉 唏 唐 唔 唚 唧 唬 售 唯 唱 唳 唵 唷 唸 唼 唾 啁 啃 啄 商 啊 問 啕 啖 啜 啞 啟 啡 啣 啤 啥 啦 啪 啻 啼 啾 喀 喂 喃 善 喇 喉 喊 喋 喑 喔 喘 喙 喚 喜 喝 喟 喧 喪 喬 單 喱 喲 喳 喻 嗅 嗆 嗇 嗎 嗑 嗓 嗔 嗖 嗚 嗜 嗝 嗟 嗡 嗣 嗤 嗥 嗦 嗨 嗩 嗯 嗶 嗷 嗽 嗾 嘀 嘆 嘈 嘉 嘍 嘎 嘔 嘖 嘗 嘛 嘟 嘩 嘮 嘯 嘰 嘲 嘴 嘶 嘹 嘻 嘿 噁 噌 噎 噓 噗 噙 噢 噤 噥 器 噩 噪 噫 噬 噯 噱 噴 噶 噸 噹 噼 嚀 嚅 嚇 嚎 嚏 嚐 嚕 嚙 嚥 嚨 嚮 嚴 嚶 嚷 嚼 囀 囁 囂 囈 囉 囊 囌 囑 囗 囚 四 回 因 囡 囤 囧 囪 囫 困 囷 囹 固 囿 圃 圄 圇 圈 圉 國 圍 園 圓 圖 團 圜 土 在 圬 圭 圮 圯 地 圳 圻 圾 址 均 坊 坌 坍 坎 坏 坐 坑 坡 坤 坦 坩 坪 坯 坳 坷 坼 垂 垃 型 垠 垢 垣 垮 埂 埃 埋 城 埒 埔 域 埠 埤 執 培 基 堂 堄 堅 堆 堊 堡 堤 堪 堯 堰 報 場 堵 塈 塊 塌 塑 塔 塗 塘 塚 塞 塢 填 塭 塵 塹 塾 墀 境 墅 墊 墓 墜 增 墟 墨 墩 墮 墳 墼 墾 壁 壂 壅 壇 壑 壓 壕 壘 壙 壞 壟 壢 壤 壩 士 壬 壯 壹 壺 壽 夂 夊 夏 夔 夕 外 夙 多 夜 夠 夢 夤 夥 大 天 太 夫 夭 央 夯 失 夷 夸 夾 奄 奇 奈 奉 奎 奏 奐 契 奔 奕 套 奘 奚 奠 奢 奧 奩 奪 奮 女 奴 奶 奸 她 好 妁 如 妃 妄 妊 妍 妒 妓 妖 妗 妙 妝 妞 妣 妤 妥 妨 妮 妯 妲 妳 妹 妻 妾 姆 姊 始 姍 姐 姑 姒 姓 委 姘 姚 姜 姝 姣 姤 姥 姦 姨 姪 姬 姮 姻 姿 威 娃 娉 娌 娑 娓 娘 娛 娜 娟 娠 娣 娥 娩 娶 娼 婀 婁 婆 婉 婊 婕 婚 婢 婦 婪 婷 婺 婿 媒 媚 媛 媧 媲 媳 媵 媼 媽 媾 嫁 嫂 嫉 嫋 嫌 嫖 嫗 嫘 嫡 嫣 嫦 嫩 嫵 嫻 嬈 嬉 嬋 嬌 嬖 嬗 嬝 嬡 嬤 嬪 嬰 嬴 嬸 孀 孌 子 孑 孓 孔 孕 字 存 孚 孛 孜 孝 孟 孢 季 孤 孥 孩 孫 孬 孰 孱 孳 孵 學 孺 孽 孿 宀 它 宅 宇 守 安 宋 完 宏 宓 宕 宗 官 宙 定 宛 宜 客 宣 室 宥 宦 宮 宰 害 宴 宵 家 宸 容 宿 寂 寄 寅 密 寇 富 寐 寒 寓 寞 察 寠 寡 寢 寤 寥 實 寧 寨 審 寫 寬 寮 寰 寵 寶 寸 寺 封 射 將 專 尉 尊 尋 對 導 小 少 尖 尚 尢 尤 尪 尬 就 尷 尸 尹 尺 尻 尼 尾 尿 局 屁 居 屆 屈 屋 屍 屎 屏 屐 屑 展 屜 屠 屢 屣 層 履 屩 屬 屮 屯 山 屹 屺 岌 岐 岑 岔 岡 岩 岫 岬 岱 岳 岷 岸 峋 峒 峙 峨 峪 峭 峰 島 峻 峽 崁 崆 崇 崎 崑 崔 崖 崗 崙 崛 崢 崩 崴 崽 嵋 嵌 嵎 嵐 嵩 嶂 嶄 嶇 嶗 嶙 嶝 嶸 嶺 嶼 嶽 巍 巒 巔 巖 巛 川 州 巡 巢 工 左 巧 巨 巫 差 己 已 巳 巴 巷 巽 巾 市 布 帆 希 帑 帕 帖 帘 帙 帚 帛 帝 帥 師 席 帳 帶 帷 常 帽 幀 幄 幅 幌 幔 幕 幗 幘 幛 幟 幡 幢 幣 幫 干 平 年 并 幸 幹 幺 幻 幼 幽 幾 广 庇 床 庋 序 底 庖 店 庚 府 庠 度 座 庫 庭 庵 庶 康 庸 庾 廁 廂 廄 廈 廉 廊 廓 廕 廖 廚 廛 廝 廟 廠 廡 廢 廣 廥 廩 廬 廳 廴 延 廷 建 廾 廿 弁 弄 弈 弊 弋 式 弒 弓 弔 引 弗 弘 弛 弟 弦 弧 弩 弭 弱 張 強 弼 彀 彆 彈 彌 彎 彐 彗 彘 彙 彝 彡 形 彤 彥 彩 彪 彫 彬 彭 彰 影 彳 彷 役 彼 彿 往 征 待 徇 很 徉 徊 律 後 徐 徑 徒 得 徘 徙 徜 從 徠 御 徨 復 循 徬 微 徵 德 徹 徼 徽 心 必 忌 忍 忐 忑 忒 忖 志 忘 忙 忝 忠 忡 忤 忪 快 忮 忱 念 忸 忻 忽 忿 怍 怎 怏 怒 怔 怕 怖 怙 思 怠 怡 急 怦 性 怨 怩 怪 怯 怵 恁 恃 恆 恍 恐 恕 恙 恚 恢 恣 恤 恥 恨 恩 恪 恫 恬 恭 息 恰 恿 悄 悅 悉 悌 悍 悔 悖 悚 悛 悟 悠 患 您 悱 悲 悴 悵 悶 悸 悻 悼 悽 情 惆 惇 惋 惑 惕 惘 惚 惜 惟 惠 惡 惦 惰 惱 想 惴 惶 惹 惺 惻 愀 愁 愆 愈 愉 愎 意 愔 愕 愚 愛 愜 感 愣 愧 愫 愴 愾 愿 慁 慄 慇 慈 態 慌 慍 慎 慕 慘 慚 慝 慟 慢 慣 慧 慨 慪 慫 慮 慰 慳 慵 慶 慷 慼 慾 憂 憊 憋 憎 憐 憑 憔 憚 憤 憧 憨 憩 憫 憬 憲 憶 憾 懂 懇 懈 應 懊 懍 懞 懟 懣 懦 懨 懲 懵 懶 懷 懸 懺 懼 懾 懿 戀 戇 戈 戊 戌 戍 戎 成 我 戒 戕 或 戚 戛 戟 戡 戢 戥 戧 截 戮 戰 戲 戳 戴 戶 戽 戾 房 所 扁 扃 扇 扈 扉 手 才 扎 扒 打 扔 托 扛 扞 扣 扭 扮 扯 扳 扶 批 扺 扼 找 承 技 抄 抉 把 抑 抒 抓 投 抖 抗 折 抨 披 抬 抱 抵 抹 押 抽 抿 拂 拄 拆 拇 拈 拉 拊 拋 拌 拍 拎 拐 拒 拓 拔 拖 拗 拘 拙 拚 招 拜 括 拭 拮 拯 拱 拳 拴 拷 拼 拽 拾 拿 持 挂 指 挈 按 挑 挓 挖 挨 挪 挫 振 挲 挹 挺 挽 挾 捂 捃 捅 捆 捉 捋 捌 捍 捎 捏 捐 捕 捧 捨 捩 捫 据 捱 捲 捶 捷 捺 捻 掀 掂 掃 掄 掇 授 掉 掌 掏 掐 排 掖 掘 掙 掛 掠 採 探 掣 接 控 推 掩 措 掬 掮 掰 揀 揃 揄 揆 揉 揍 描 提 插 揖 揚 換 揠 握 揣 揩 揪 揭 揮 援 揶 搆 損 搏 搐 搓 搔 搖 搗 搜 搞 搣 搦 搧 搪 搬 搭 搴 搶 搽 搾 摀 摑 摒 摓 摔 摘 摟 摠 摧 摩 摭 摯 摳 摸 摹 摺 摻 撂 撇 撈 撐 撒 撓 撕 撙 撚 撞 撤 撥 撩 撫 撬 播 撮 撰 撲 撳 撻 撼 撿 擀 擁 擂 擄 擅 擇 擊 擋 操 擎 擒 擓 擔 擘 據 擠 擢 擤 擦 擬 擯 擰 擱 擲 擴 擷 擺 擻 擾 攀 攆 攏 攔 攘 攙 攜 攝 攢 攣 攤 攪 攫 攬 支 攴 收 攸 改 攻 放 政 故 效 敉 敏 救 敕 敖 敗 敘 教 敝 敞 敢 散 敦 敬 敲 整 敵 敷 數 斂 斃 文 斐 斑 斕 斗 料 斜 斟 斡 斤 斥 斧 斫 斬 斯 新 斷 方 於 施 旁 旃 旄 旅 旋 旌 旎 族 旖 旗 无 既 日 旦 旨 早 旬 旭 旮 旯 旰 旱 旺 昀 昂 昃 昆 昇 昊 昌 明 昏 易 昔 昕 星 映 春 昧 昨 昭 是 昱 昴 昵 時 晃 晉 晌 晏 晒 晚 晝 晤 晦 晨 普 景 晰 晴 晶 晷 智 晾 暄 暇 暈 暉 暌 暑 暖 暗 暝 暢 暨 暫 暮 暱 暴 暹 曆 曇 曉 曖 曙 曜 曝 曠 曦 曩 曰 曲 曳 更 曷 書 曹 曼 曾 替 最 會 月 有 朋 服 朔 朕 朗 望 朝 期 朦 朧 木 未 末 本 札 朮 朱 朴 朵 朽 杆 杈 杉 李 杏 材 村 杓 杖 杜 杞 束 杠 杪 杭 杯 杰 東 杲 杳 杵 杶 杷 杼 松 板 枇 枉 枋 析 枒 枕 林 枘 枚 果 枝 枯 枲 枳 枴 枵 架 枷 枸 柄 柏 某 柑 柒 染 柔 柘 柙 柚 柝 柞 柢 查 柩 柬 柯 柰 柱 柲 柳 柴 柵 柿 栓 栖 栗 栝 校 栩 株 栱 核 根 格 栽 桀 桂 桃 桄 桅 框 案 桌 桎 桐 桑 桓 桔 桕 桶 桿 梁 梃 梅 梆 梏 梓 梔 梗 條 梟 梢 梧 梨 梭 梯 械 梱 梳 梵 棄 棉 棋 棍 棒 棕 棗 棘 棚 棟 棠 棣 棧 森 棰 棱 棲 棵 棹 棺 棼 椅 椇 植 椎 椏 椑 椒 椪 椰 椽 椿 楂 楊 楓 楔 楚 楞 楠 楣 楨 楫 業 極 楷 楹 概 榆 榔 榕 榛 榜 榦 榨 榫 榭 榮 榱 榴 榷 榹 榻 榼 槁 槃 構 槌 槍 槐 槓 槤 槥 槧 槨 槫 槳 槽 槿 樁 樂 樅 樊 樓 樗 標 樞 樟 模 樣 樨 樵 樸 樹 樺 樽 橄 橇 橋 橐 橑 橘 橙 機 橡 橢 橫 檀 檃 檄 檔 檜 檢 檬 檯 檳 檸 檻 櫂 櫃 櫓 櫚 櫛 櫝 櫞 櫟 櫥 櫨 櫪 櫫 櫸 櫺 櫻 欂 欄 權 欖 欠 次 欣 欬 欲 欺 欽 款 歃 歆 歇 歉 歌 歐 歙 歛 歟 歡 止 正 此 步 武 歧 歪 歲 歷 歸 歹 死 歿 殂 殃 殄 殆 殉 殊 殍 殖 殘 殛 殞 殤 殪 殫 殭 殮 殯 殲 殳 段 殷 殺 殼 殿 毀 毅 毆 毋 母 每 毒 毓 比 毖 毗 毛 毫 毬 毯 毽 氂 氅 氈 氏 氐 民 氓 气 氖 氛 氟 氡 氣 氤 氦 氧 氨 氫 氮 氯 氰 氳 水 永 氹 氾 汀 汁 求 汆 汐 汕 汗 汙 汛 汜 汝 汞 江 池 汨 汩 汪 汰 汲 汴 汶 決 汽 汾 沁 沂 沃 沅 沆 沈 沉 沌 沏 沐 沒 沓 沖 沙 沚 沛 沫 沮 沱 河 沸 油 治 沼 沽 沾 沿 況 泄 泅 泉 泊 泌 泓 法 泗 泛 泠 泡 波 泣 泥 注 泫 泮 泯 泰 泱 泳 泵 洄 洋 洌 洎 洒 洗 洛 洞 津 洩 洪 洮 洱 洲 洳 洵 洶 活 洽 派 流 浙 浚 浣 浦 浩 浪 浬 浮 浴 海 浸 浹 涂 涅 涇 消 涉 涎 涓 涔 涕 涪 涮 涯 液 涵 涸 涼 涿 淀 淄 淅 淆 淇 淋 淌 淑 淒 淖 淘 淙 淚 淝 淞 淡 淤 淦 淨 淪 淫 淬 淮 深 淳 淵 混 淹 淺 添 清 渙 渚 減 渝 渠 渡 渣 渤 渥 渦 測 渭 港 渲 渴 游 渺 渾 湃 湄 湊 湍 湔 湖 湘 湛 湧 湮 湯 溉 源 準 溘 溜 溝 溢 溥 溪 溫 溯 溲 溶 溷 溺 溼 溽 滂 滄 滅 滇 滋 滌 滎 滑 滓 滔 滕 滫 滬 滯 滲 滴 滷 滸 滾 滿 漁 漂 漆 漉 漏 漓 演 漕 漚 漠 漢 漣 漩 漪 漫 漬 漯 漱 漲 漳 漸 漾 漿 潁 潑 潔 潘 潛 潟 潢 潤 潦 潭 潮 潯 潰 潲 潸 潺 潼 澀 澄 澆 澇 澈 澎 澗 澡 澤 澧 澱 澳 澹 激 濁 濂 濃 濘 濛 濟 濠 濡 濤 濫 濬 濯 濱 濺 濾 瀆 瀉 瀋 瀏 瀑 瀕 瀚 瀛 瀝 瀟 瀣 瀨 瀰 瀲 瀾 灌 灑 灕 灘 灣 灤 灩 火 灰 灶 灸 灼 災 炊 炎 炒 炕 炙 炫 炬 炭 炮 炯 炳 炷 炸 為 烈 烊 烏 烘 烙 烝 烤 烯 烷 烹 烽 焉 焊 焙 焚 焜 無 焦 焰 然 煉 煌 煎 煙 煜 煞 煢 煤 煥 煦 照 煨 煩 煬 煮 煲 煸 煽 熄 熊 熏 熒 熔 熙 熟 熠 熨 熬 熱 熹 熾 燁 燃 燄 燈 燉 燎 燒 燕 燙 燜 營 燠 燥 燦 燧 燬 燭 燮 燴 燹 燻 燼 燿 爆 爍 爐 爛 爨 爪 爬 爭 爰 爵 父 爸 爹 爺 爻 爽 爾 爿 牁 牂 牆 片 版 牌 牒 牖 牘 牙 牛 牝 牟 牠 牡 牢 牧 物 牬 牯 牲 牴 特 牽 犀 犁 犄 犒 犖 犗 犙 犛 犢 犧 犬 犯 犰 狀 狁 狂 狄 狎 狐 狒 狗 狙 狚 狠 狡 狩 狳 狷 狸 狹 狼 狽 猓 猖 猗 猙 猛 猜 猝 猢 猥 猩 猴 猶 猷 猻 猾 猿 獄 獅 獎 獐 獒 獗 獠 獦 獨 獪 獫 獰 獲 獵 獷 獸 獺 獻 獼 玀 玁 玄 率 玉 王 玕 玖 玟 玦 玨 玩 玫 玲 玳 玷 玻 珀 珊 珍 珠 班 珮 現 球 琅 理 琉 琊 琍 琢 琥 琪 琳 琴 琵 琶 琺 琿 瑁 瑕 瑙 瑚 瑛 瑜 瑞 瑟 瑣 瑤 瑩 瑪 瑯 瑰 璀 璃 璇 璋 璜 璞 璣 璦 璧 璨 璩 璫 環 璵 璺 璽 瓊 瓏 瓜 瓠 瓢 瓣 瓦 瓨 瓶 瓷 瓽 瓿 甂 甄 甌 甑 甕 甖 甘 甙 甚 甜 生 產 甥 甦 用 甩 甪 甫 甬 甭 甯 田 由 甲 申 男 甸 町 甽 界 畎 畏 畔 留 畚 畛 畜 畝 畢 略 畦 番 畫 異 當 畷 畸 畿 疆 疇 疊 疋 疏 疑 疒 疕 疙 疚 疝 疣 疤 疥 疫 疲 疳 疵 疸 疹 疻 疼 疽 疾 痀 痂 病 症 痊 痍 痏 痔 痕 痘 痙 痛 痞 痠 痢 痣 痤 痧 痰 痱 痲 痴 痺 痼 痾 痿 瘀 瘁 瘈 瘉 瘋 瘍 瘓 瘕 瘚 瘛 瘟 瘠 瘡 瘢 瘤 瘦 瘧 瘩 瘲 瘴 瘸 瘻 療 癃 癆 癇 癈 癉 癌 癒 癖 癘 癟 癢 癤 癥 癩 癬 癮 癰 癱 癲 癶 癸 登 發 白 百 皁 皂 的 皆 皇 皈 皋 皎 皓 皖 皙 皚 皤 皮 皰 皴 皸 皺 皿 盂 盃 盅 盆 盈 益 盍 盎 盒 盔 盛 盜 盞 盟 盡 監 盤 盥 盧 盪 目 盯 盱 盲 直 相 盹 盼 盾 省 眄 眇 眈 眉 看 真 眠 眥 眨 眩 眵 眶 眷 眸 眺 眼 眾 睇 睏 睚 睛 睜 睞 睡 督 睥 睦 睨 睪 睫 睬 睹 睽 睿 瞄 瞅 瞇 瞋 瞌 瞎 瞑 瞞 瞟 瞠 瞥 瞧 瞪 瞬 瞭 瞰 瞳 瞻 瞼 瞽 瞿 矇 矍 矓 矗 矚 矛 矜 矢 矣 知 矩 矬 短 矮 矯 石 矻 矽 砂 砌 砍 砒 研 砝 砢 砥 砧 砭 砰 破 砷 砸 硃 硅 硝 硟 硫 硬 硯 硼 碇 碉 碌 碎 碑 碓 碗 碘 碟 碡 碧 碩 碰 碳 碴 確 碼 碾 磁 磅 磊 磋 磐 磑 磕 磚 磣 磨 磬 磯 磴 磷 磺 礁 礎 礙 礜 礦 礪 礫 礬 礴 示 社 祀 祁 祆 祇 祈 祉 祐 祕 祖 祗 祚 祛 祝 神 祟 祠 祥 票 祭 祺 祿 禁 禍 禎 福 禦 禧 禪 禮 禱 禸 禹 禺 禽 禾 禿 秀 私 秈 秉 秋 科 秒 秔 秘 租 秣 秤 秦 秧 秩 秫 秭 移 稀 稅 稈 程 稍 稔 稗 稚 稜 稞 稟 稠 種 稱 稷 稻 稼 稽 稿 穀 穆 穌 積 穎 穗 穠 穡 穢 穩 穫 穴 究 穹 空 穿 突 窄 窈 窒 窕 窖 窗 窘 窟 窠 窣 窩 窪 窮 窯 窳 窸 窺 窿 竄 竅 竇 竊 立 站 竟 章 竣 童 竦 竭 端 競 竹 竺 竽 竿 笄 笆 笈 笏 笑 笙 笛 笞 笠 笥 符 笨 笫 第 笭 笳 筆 等 筊 筋 筌 筍 筏 筐 筑 筒 答 策 筠 筥 筧 筩 筭 筮 筲 筵 筷 箄 箅 箋 箍 箏 箔 箕 算 箛 箜 箝 箠 管 箭 箯 箱 箴 箸 節 篁 範 篅 篆 篇 築 篋 篌 篍 篙 篛 篝 篡 篤 篦 篨 篩 篳 篷 篾 簀 簁 簇 簋 簌 簍 簑 簞 簟 簡 簣 簦 簧 簪 簫 簷 簸 簽 簾 簿 籃 籌 籍 籐 籟 籠 籤 籧 籫 籬 籮 籲 米 籽 粉 粑 粒 粕 粗 粘 粟 粥 粱 粲 粳 粵 粹 粼 粽 精 粿 糊 糌 糕 糖 糗 糙 糜 糝 糞 糟 糠 糢 糧 糨 糯 糰 糴 糶 糸 系 糾 紀 紂 紃 約 紅 紆 紇 紈 紉 紊 紋 納 紐 紓 純 紕 紗 紙 級 紛 紜 素 紡 索 紫 紬 紮 累 細 紱 紳 紵 紹 紺 紼 絀 絁 終 絃 組 絆 結 絕 絛 絝 絞 絡 絢 絥 給 絨 絪 絮 統 絲 絳 絹 綁 綈 綌 綏 綑 經 綜 綞 綟 綠 綢 綣 綬 維 綰 綱 網 綴 綵 綸 綹 綺 綻 綽 綾 綿 緇 緊 緋 緒 緘 線 緝 緞 締 緣 編 緩 緬 緯 緲 練 緷 緹 緻 縈 縉 縊 縋 縌 縐 縑 縕 縛 縝 縟 縠 縣 縫 縮 縱 縲 縳 縴 縵 縷 縹 總 績 繁 繃 繅 繆 繇 繎 繒 織 繕 繘 繚 繞 繡 繢 繩 繪 繫 繭 繯 繳 繹 繼 繽 繾 纂 續 纍 纏 纑 纓 纖 纛 纜 缶 缸 缺 缽 罃 罄 罈 罋 罌 罐 网 罔 罕 罟 罡 罣 罩 罪 置 罰 署 罵 罷 罹 羅 羈 羊 羋 羌 美 羑 羔 羖 羚 羝 羞 羠 群 羨 義 羭 羯 羲 羶 羸 羹 羼 羽 羿 翁 翅 翊 翌 翎 習 翔 翕 翟 翠 翡 翩 翰 翱 翳 翹 翻 翼 耀 老 考 耄 者 耆 耋 而 耍 耐 耒 耕 耗 耘 耙 耜 耨 耳 耵 耶 耷 耽 耿 聆 聊 聒 聖 聘 聚 聞 聯 聰 聱 聲 聳 聵 聶 職 聹 聽 聾 聿 肄 肅 肆 肇 肉 肋 肌 肓 肖 肘 肚 肛 肝 股 肢 肥 肩 肪 肫 肯 肱 育 肴 肺 肽 胂 胃 胄 背 胎 胖 胗 胚 胛 胝 胞 胡 胤 胥 胭 胯 胰 胱 胳 胴 胸 胺 胼 能 胾 脂 脅 脆 脈 脊 脖 脛 脣 脩 脫 脯 脹 脾 腆 腊 腋 腌 腎 腐 腑 腔 腕 腢 腥 腦 腨 腩 腫 腮 腰 腱 腳 腴 腸 腹 腺 腿 膀 膂 膈 膊 膍 膏 膘 膚 膛 膜 膝 膠 膨 膩 膳 膹 膺 膽 膾 膿 臀 臂 臃 臆 臉 臊 臍 臏 臘 臚 臟 臠 臢 臣 臥 臧 臨 自 臬 臭 至 致 臺 臻 臼 臾 舀 舂 舄 舅 與 興 舉 舊 舌 舍 舐 舒 舔 舛 舜 舞 舟 舢 舨 航 舫 般 舴 舵 舶 舷 船 艇 艋 艘 艙 艦 艫 艮 良 艱 色 艸 艾 芊 芋 芍 芎 芒 芙 芝 芟 芡 芥 芩 芪 芫 芬 芭 芮 芯 花 芳 芷 芸 芹 芻 芽 苑 苒 苓 苔 苕 苗 苛 苜 苞 苟 苡 苣 若 苦 苧 苯 英 苷 苻 茁 茂 范 茄 茅 茈 茉 茌 茗 茜 茨 茫 茬 茭 茯 茱 茲 茴 茵 茶 茸 茹 茼 荀 荃 荇 草 荊 荏 荐 荒 荔 荷 荸 荻 荼 荽 莆 莉 莊 莎 莒 莓 莖 莘 莝 莞 莠 莢 莧 莫 莽 菀 菁 菅 菇 菊 菌 菔 菕 菖 菜 菟 菠 菡 菩 華 菰 菱 菲 菴 菸 菽 萃 萄 萇 萊 萋 萌 萍 萎 萏 萑 萬 萭 萱 萵 萸 萼 落 葉 著 葚 葛 葡 董 葦 葩 葫 葬 葭 葳 葵 葷 葺 蒂 蒐 蒙 蒜 蒞 蒟 蒡 蒯 蒲 蒸 蒺 蒻 蒼 蒿 蓀 蓄 蓆 蓉 蓋 蓏 蓓 蓬 蓮 蓼 蓽 蓿 蔑 蔓 蔔 蔗 蔚 蔡 蔣 蔥 蔦 蔬 蔭 蔻 蔽 蕁 蕃 蕈 蕉 蕊 蕎 蕒 蕓 蕕 蕖 蕙 蕡 蕤 蕨 蕩 蕪 蕭 蕻 蕾 薄 薇 薈 薊 薌 薏 薑 薔 薛 薜 薤 薦 薨 薩 薪 薯 薰 薴 薹 薺 藉 藍 藎 藏 藐 藕 藜 藝 藠 藤 藥 藩 藪 藭 藹 藺 藻 蘆 蘇 蘊 蘋 蘑 蘗 蘘 蘚 蘥 蘭 蘸 蘿 虍 虎 虐 虔 處 虛 虜 虞 號 虧 虫 虯 虱 虹 虺 蚊 蚌 蚍 蚓 蚜 蚣 蚤 蚩 蚪 蚯 蚱 蚵 蚶 蛀 蛄 蛆 蛇 蛉 蛋 蛐 蛔 蛙 蛛 蛞 蛟 蛤 蛭 蛹 蛻 蛾 蜀 蜂 蜃 蜆 蜇 蜈 蜉 蜊 蜋 蜍 蜒 蜓 蜘 蜚 蜜 蜡 蜢 蜥 蜩 蜴 蜷 蜻 蜿 蝌 蝓 蝕 蝗 蝙 蝟 蝠 蝣 蝦 蝨 蝮 蝲 蝴 蝶 蝸 螂 螃 螄 螅 融 螞 螟 螢 螫 螳 螺 螻 螽 蟀 蟄 蟆 蟈 蟋 蟎 蟑 蟒 蟠 蟪 蟬 蟯 蟲 蟹 蟻 蟾 蠅 蠆 蠊 蠍 蠔 蠕 蠟 蠡 蠢 蠣 蠱 蠶 蠹 蠻 血 衊 行 衍 術 衕 街 衙 衚 衛 衝 衡 衢 衣 表 衫 衰 衲 衷 衽 衿 袁 袂 袈 袋 袍 袒 袖 袞 袢 袤 被 袱 袷 裁 裂 裊 裎 裔 裕 裘 裙 補 裝 裟 裡 裨 裱 裳 裴 裸 裹 製 褂 複 褐 褒 褓 褕 褚 褥 褪 褫 褲 褶 褸 褻 襁 襄 襐 襖 襜 襟 襠 襤 襦 襪 襬 襯 襲 襾 西 要 覃 覆 見 規 覓 視 覦 親 覬 覲 覷 覺 覽 觀 角 觔 觚 觜 解 觥 觴 觸 言 訂 訃 訇 計 訊 訌 討 訐 訑 訓 訕 訖 託 記 訛 訝 訟 訣 訥 訪 設 許 訴 診 註 証 詁 詆 詈 詎 詐 詔 評 詗 詛 詞 詠 詡 詢 詣 試 詩 詫 詬 詭 詮 詰 話 該 詳 詹 詼 誄 誅 誆 誇 誌 認 誑 誓 誕 誘 誚 語 誠 誡 誣 誤 誥 誦 誨 說 誰 課 誹 誼 調 諂 諄 談 諉 請 諍 諒 論 諛 諜 諡 諢 諦 諧 諫 諭 諮 諱 諳 諷 諸 諺 諾 謀 謁 謂 謄 謅 謊 謎 謐 謔 謖 謗 謙 講 謝 謠 謨 謫 謬 謳 謹 謾 譁 證 譎 譏 識 譙 譚 譜 警 譫 譬 譯 議 譴 護 譽 讀 讂 變 讎 讒 讓 讖 讚 讞 谷 谿 豁 豆 豇 豈 豉 豌 豎 豐 豔 豕 豚 象 豢 豪 豫 豬 豭 豳 豶 豸 豹 豺 貂 貅 貉 貊 貌 貍 貓 貔 貝 貞 負 財 貢 貧 貨 販 貪 貫 責 貯 貰 貲 貳 貴 貶 買 貸 貺 費 貼 貽 貿 賀 賁 賂 賃 賄 賅 資 賈 賊 賑 賒 賓 賕 賜 賞 賠 賢 賣 賤 賦 質 賬 賭 賴 賺 購 賽 賾 贄 贅 贈 贊 贍 贏 贓 贖 贗 贛 赤 赦 赧 赫 赭 走 赳 赴 起 趁 趄 超 越 趑 趕 趖 趙 趟 趣 趨 足 趴 趺 趾 跆 跋 跌 跎 跑 跗 跚 跛 距 跟 跡 跤 跨 跪 跬 路 跳 跺 跼 踉 踊 踏 踐 踝 踞 踟 踢 踩 踮 踰 踱 踴 踵 踹 踽 蹂 蹄 蹇 蹈 蹉 蹊 蹋 蹌 蹓 蹕 蹙 蹚 蹟 蹣 蹤 蹦 蹧 蹩 蹬 蹭 蹲 蹴 蹶 蹺 蹼 躁 躂 躅 躇 躉 躊 躋 躍 躐 躑 躓 躕 躡 躪 身 躬 躲 躺 軀 車 軋 軌 軍 軒 軔 軛 軜 軟 軫 軲 軶 軸 軹 軺 軻 軼 軾 較 載 輊 輒 輓 輔 輕 輗 輛 輜 輝 輟 輦 輩 輪 輮 輯 輸 輻 輾 輿 轂 轄 轅 轆 轉 轍 轎 轑 轔 轗 轙 轟 轡 轤 辛 辜 辟 辣 辦 辨 辭 辮 辯 辰 辱 農 辵 迂 迄 迅 迆 迍 迎 近 返 迢 迥 迦 迪 迫 迭 述 迴 迷 迸 迺 追 退 送 适 逃 逅 逆 逍 透 逐 逑 途 逕 逖 逗 這 通 逛 逝 逞 速 造 逢 連 逮 週 進 逵 逶 逸 逼 逾 遁 遂 遇 遊 運 遍 過 遏 遐 遑 道 達 違 遘 遙 遛 遜 遞 遠 遢 遣 遨 適 遭 遮 遯 遲 遴 遵 遶 遷 選 遺 遼 遽 避 邀 邁 邂 邃 還 邅 邇 邈 邊 邋 邏 邐 邑 邕 邗 邢 那 邦 邪 邯 邱 邳 邴 邵 邸 郁 郊 郎 郝 郡 部 郭 郵 都 鄂 鄉 鄒 鄔 鄙 鄞 鄧 鄭 鄰 鄱 鄲 鄹 酉 酊 酋 酌 配 酒 酗 酢 酣 酥 酩 酪 酬 酲 酵 酶 酷 酸 醃 醅 醇 醉 醊 醋 醍 醐 醒 醚 醛 醜 醞 醢 醣 醪 醫 醬 醮 醯 醱 醴 醺 釀 釁 釆 采 釉 釋 里 重 野 量 釐 金 釗 釘 釜 針 釣 釦 釧 釭 釱 釵 鈃 鈇 鈉 鈍 鈐 鈒 鈔 鈕 鈞 鈣 鈦 鈴 鈷 鈸 鈹 鈽 鈾 鈿 鉀 鉅 鉆 鉋 鉏 鉑 鉗 鉚 鉛 鉞 鉤 鉦 鉧 鉸 鉻 銀 銃 銅 銍 銓 銖 銘 銚 銜 銨 銬 銲 銳 銷 銻 銼 鋁 鋃 鋅 鋋 鋌 鋒 鋗 鋙 鋡 鋤 鋦 鋪 鋰 鋸 鋼 錄 錐 錘 錙 錚 錠 錡 錢 錦 錧 錨 錫 錮 錯 錳 錶 鍊 鍋 鍍 鍑 鍚 鍛 鍤 鍥 鍪 鍬 鍭 鍰 鍵 鍼 鍾 鎂 鎊 鎔 鎖 鎘 鎢 鎧 鎩 鎮 鎳 鏃 鏈 鏍 鏑 鏖 鏗 鏘 鏜 鏝 鏟 鏡 鏢 鏤 鏽 鐃 鐈 鐊 鐎 鐐 鐔 鐗 鐘 鐙 鐫 鐮 鐲 鐳 鐵 鐸 鐺 鑄 鑊 鑑 鑒 鑠 鑣 鑰 鑲 鑷 鑼 鑽 鑾 鑿 長 門 閂 閃 閉 開 閏 閑 閒 間 閔 閘 閜 閡 閣 閤 閥 閨 閩 閫 閭 閱 閹 閻 閼 闆 闈 闊 闋 闌 闐 闔 闕 闖 關 闡 闢 阜 阡 阢 阪 阮 阱 防 阻 阿 陀 陂 附 陋 陌 降 限 陛 陝 陟 陡 院 陣 除 陪 陰 陲 陳 陴 陵 陶 陷 陸 陽 隅 隆 隉 隊 隋 隍 階 隔 隕 隘 隙 際 障 隤 隧 隨 險 隰 隱 隴 隶 隸 隹 隻 隼 雀 雁 雄 雅 集 雇 雉 雋 雌 雍 雒 雕 雖 雙 雛 雜 雞 離 難 雨 雩 雪 雯 雲 零 雷 雹 電 需 霄 霆 震 霉 霍 霎 霏 霑 霓 霖 霜 霞 霧 霪 露 霸 霹 霽 霾 靂 靄 靈 青 靖 靚 靛 靜 非 靠 靡 面 靦 靨 革 靯 靳 靴 靶 靷 靸 靼 靽 鞀 鞅 鞇 鞋 鞍 鞏 鞘 鞠 鞢 鞣 鞦 鞭 鞮 韁 韃 韅 韆 韋 韌 韓 韙 韜 韭 音 韶 韻 響 頁 頂 頃 項 順 頇 須 頊 頌 頏 預 頑 頒 頓 頗 領 頜 頞 頡 頤 頭 頰 頷 頸 頹 頻 顆 題 額 顎 顏 顓 願 顛 類 顢 顧 顫 顯 顰 顱 顴 風 颯 颱 颳 颶 颺 颼 飄 飆 飛 食 飢 飧 飩 飪 飭 飯 飲 飴 飼 飽 飾 餃 餅 餉 養 餌 餐 餑 餒 餓 餘 餚 餛 餞 餡 館 餬 餮 餳 餵 餽 餾 餿 饃 饅 饈 饊 饋 饌 饑 饒 饕 饗 饜 饞 首 香 馥 馨 馬 馭 馮 馱 馳 馴 駁 駐 駑 駒 駕 駙 駛 駝 駟 駢 駭 駮 駱 駹 駿 騁 騂 騅 騎 騏 騖 騙 騩 騫 騭 騮 騰 騶 騷 騾 驀 驁 驃 驅 驊 驍 驕 驗 驚 驛 驟 驢 驥 驪 骨 骯 骰 骷 骸 骼 髀 髏 髒 髓 體 髕 髖 高 髟 髡 髣 髦 髫 髭 髮 髯 髴 髹 髻 鬃 鬆 鬈 鬍 鬚 鬟 鬢 鬥 鬧 鬨 鬩 鬮 鬯 鬱 鬲 鬼 鬾 魁 魂 魄 魅 魍 魎 魏 魔 魘 魚 魠 魨 魯 魷 鮐 鮑 鮒 鮪 鮫 鮭 鮮 鯀 鯁 鯉 鯊 鯛 鯝 鯢 鯧 鯨 鯰 鯽 鰈 鰍 鰓 鰥 鰭 鰱 鰲 鰹 鰻 鰾 鱈 鱉 鱒 鱔 鱖 鱗 鱘 鱟 鱣 鱷 鱸 鱺 鳥 鳧 鳩 鳳 鳴 鳶 鴆 鴇 鴉 鴒 鴕 鴛 鴞 鴟 鴣 鴦 鴨 鴰 鴳 鴻 鴿 鵃 鵑 鵝 鵠 鵡 鵪 鵬 鵰 鵲 鶉 鶚 鶩 鶯 鶴 鶺 鶻 鷂 鷃 鷓 鷗 鷥 鷲 鷸 鷹 鷺 鸚 鸛 鸝 鸞 鹵 鹹 鹼 鹽 鹿 麂 麇 麈 麋 麒 麓 麗 麝 麟 麠 麥 麩 麮 麴 麵 麻 麼 麾 黃 黍 黎 黏 黑 黔 默 黛 黜 黝 點 黠 黥 黨 黯 黴 黷 黹 黽 黿 鼇 鼎 鼐 鼓 鼕 鼙 鼠 鼬 鼯 鼴 鼻 鼾 齊 齋 齎 齒 齔 齜 齟 齡 齣 齦 齧 齪 齬 齲 齶 齷 龍 龐 龔 龕 龜 龠 ， 𥫱 𨬍 𨽍 𩉾 𩌈 𩍜 𩍿 𩎃 ]>

for char in Chars
  console.log char
  out = "#{ char.codePointAt!toString 16}.json"
  continue if fs.exists-sync "json/#out"
  comp = CharComp[char]
  continue unless comp
  strokes = []
  for {c, x, y, w, h} in comp
    if fs.exists-sync "json/#{ c.codePointAt!toString 16}.json"
      strokes.push { val: c, matrix: [w/S, 0, 0, h/S, x/S*T, y/S*T] }
    else
      console.log "Missing char: #c"
      strokes = null
      break
  if strokes
    console.log "Writing #out"
    fs.write-file-sync "missing/#out" JSON.stringify { strokes, val: char }
