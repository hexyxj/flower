set names utf8;
drop database if exists flower;
create database flower charset=utf8;
use flower;
#养花知识
create table f_article(
    aid int primary key auto_increment,
    title varchar(128) not null default "",
    heat int not null default 0,
    type varchar(16) not null default "",
    form varchar(4) not null default "",
    pic varchar(128) not null default "",
    href varchar(128) not null default "",
    descr varchar(128) not null default "",
    update_time int not null default 0,
    target varchar(24) not null default ""
);
#花卉大全 h ,养花知识 y, 多肉植物 d , 百花图谱 b
insert into f_article values(null,"她家的绿萝1晚上长出来8个芽，都是因为做了这样一件事",10,"家庭养花","y","images/article/lvluo.jpg","#","中国功夫有十八般武艺，而咱养花界也可是卧虎藏龙，今天花花就跟大家切磋几个让花迅速蹿芽的养花绝招，掰、拉、砍、掐、截、撸，分分钟让花像雨后春笋一样冒出7-8个芽，简直神乎其技，佩服佩服啊！",1,"绿萝");
insert into f_article values(null,"四川惊现冥界之花！浅谈仙草的前世今生！",8,"花与健康","y","images/article/mingjiezhihua.jpg","#","水晶兰，有“幽灵草”“梦兰花”“冥界之花”等别称。在中国许多小说里，或被神化为有起死回生之效的仙草，或被视为具有杀人魔力的植物。",1,"冥界之花");
insert into f_article values(null,"飞碟瓜的种植方法",0,"家庭养花","y","images/article/fidiegua.jpg","#","飞碟瓜又名碟瓜、碟形瓜、齿缘瓜、扁圆西葫芦，为葫芦科南瓜属美洲南瓜的一个变种。",1,"飞碟瓜");
insert into f_article values(null,"沙枣的功效与作用",4,"花与健康","y","images/article/shazao.jpg","#","沙枣，别名：七里香、香柳、刺柳、桂香柳、银柳、银柳胡颓子、牙格达、红豆、则给毛道、给结格代，拉丁文名：Elaeagnus angustifolia Linn. 胡颓子科、胡颓子属落叶乔木或小乔木，高5-10米，无刺或具刺，刺长30-40毫米，棕红色，发亮；幼枝密被银白色鳞片，老枝鳞片脱落，红棕色，光亮。",22,"沙枣");
insert into f_article values(null,"天山雪莲果的功效与作用",9,"花与健康","y","images/article/tianshanxuelianguo.jpg","#","雪莲果，菊薯的商品名。 雪莲果原产于南美安第斯山，是长得像地瓜又像山药的根茎植物，雪莲果具有清凉退火、清热解毒、健胃整肠、软化血管的保健作用，富含蛋白质、藻角质、矿物质。具有祛痰、抗菌活血、降血压的功效。",1,"雪莲果");
insert into f_article values(null,"花友1元钱水泥做的花盆，比我50元买来的花盆还漂亮",6,"家庭养花","y","images/article/shuinihuapen.jpg","#","花友1元钱水泥做的花盆，比我50元买来的花盆还漂亮",4,"水泥花盆");
insert into f_article values(null,"榴莲盆栽种植方法",18,"盆景制作","y","images/article/liulianpenzai.jpg","#","榴莲盆栽种起来,比其他的盆栽还好看,关键是还能吃",9,"榴莲盆栽");
insert into f_article values(null,"火龙果皮能吃吗",1,"家庭养花","y","images/article/huolongguo.jpg","#","火龙果皮能吃吗",9,"火龙果");
insert into f_article values(null,"黄金菊的功效与作用",1,"花与健康","y","images/article/huangjinju.jpg","#","黄金菊是一种草本植物。菊科，菊属。多年生草本花卉 ，叶子绿色，花黄色，花心黄色，夏季开花。全株具香气，叶略带草香及苹果的香气。",1,"黄金菊");
insert into f_article values(null,"常见的十大绿篱植物",1,"家庭养花","y","images/article/lvlizhiwu.jpg","#","凡是由灌木或小乔木以近距离的株行距密植，栽成单行或双行，紧密结合的规则的种植形式，称为绿篱，也叫植篱、生篱等。",1,"绿篱植物");
insert into f_article values(null,"玻璃翠怎么养？",1,"家庭养花","y","images/article/bolicui.jpg","#","璃翠-玻璃翠,又名玻璃海棠,因其花、叶、茎都呈肉质,酷似玻璃,故得名。它平时枝叶青翠,花色妖艳浓郁,如同盛妆美人。",1,"玻璃翠");
insert into f_article values(null,"满天星的花语是什么",1,"家庭养花","b","images/article/mantianxing.jpg","#","你知道满天星的花语是什么吗？是甘当配角。在故事小说中，它代表着隐忍不张扬，却执着的爱恋。其实满天星有着更深刻的含义。",6,"满天星");
insert into f_article values(null,"绿萝可以放在卧室吗",1,"家庭养花","y","images/article/lvluo1.jpg","#","绿萝，深绿色的叶片饱满圆润，能为房间增添美感，许多人都喜欢养一盆在家中。但是也有人想问，绿萝有没有毒，可不可以放在卧室里呢？放在什么地方养比较好，有什么要注意的事项？",1,"绿萝");
insert into f_article values(null,"黄金万年草的养殖方法",1,"家庭养花","y","images/article/huangjinwanniancao.jpg","#","黄金万年草是薄雪万年草的自然变种，黄金万年草养殖方法也相对容易，对于新手来说没有太多的挑战，本文就带领花友一起来了解一下黄金万年草怎么养，希望能对花友的养护过程有所帮助。",1,"黄金万年草");
insert into f_article values(null,"栀子花叶子发黄怎么办",1,"家庭养花","y","images/article/zhizihua.jpg","#","对于养花爱好者而言，栀子花叶子发黄一直困扰着人们，是一个比较棘手的问题。花朵与绿叶本是绝配，无奈黄叶折枝双分离。其实这种分离是可以避免的，保证栀子花的养分供应，多浇水……看一下具体的要点。",1,"栀子花");
insert into f_article values(null,"风信子有毒吗",1,"养花技巧","b","images/article/fengxinzi.jpg","#","风信子的球茎很像洋葱，开花时有淡淡的额香味，真是让人忍不住端上饭桌，这是万万不可以的，风信子的华丽外表下有你想不到的毒性！",8,"风信子");
insert into f_article values(null,"薰衣草的花期多久",1,"养花技巧","b","images/article/xunyicao.jpg","#","薰衣草(拉丁学名:Lavandula angustifolia Mill.)又名香水植物,灵香草,香草,黄香草,拉文德。",3,"薰衣草");
insert into f_article values(null,"扶桑花有什么风水作用",1,"养花技巧","b","images/article/fusanghua.jpg","#","朱槿（学名：Hibiscus rosa-sinensis Linn. ）：又名扶桑、佛槿、中国蔷薇。",1,"扶桑花");
insert into f_article values(null,"8种最容易爆盆的多肉植物",1,"养花技巧","d","images/article/duorouzhiwu.jpg","#","多肉植物（succulent plant）是指植物根、茎、叶三种营养器官中至少有一种是肥厚多汁，具备储藏大量水分功能的。",0,"多肉植物");
insert into f_article values(null,"熊童子怎么浇水？",1,"养花技巧","d","images/article/xiontongzi.jpg","#","熊童子（学名：Cotyledon tomentosa Harv.）是景天科、银波锦属的多年生肉质草本植物，植株多分枝，呈小灌木状，茎深褐色，肥厚的肉质叶交互对生，叶片卵形，长2厘米至3厘米，宽1厘米至2厘米，顶部叶缘有缺刻，叶表绿色，密生白色短毛。",1,"熊童子");
insert into f_article values(null,"君子兰开花有什么兆头",1,"家庭养花","b","images/article/junzilan.jpg","#","君子兰的花非常漂亮，并且有很好的寓意，今天我们就来看一下君子兰的花期，以及它开花有什么兆头，还会告诉大家，如果君子兰不开花，应该采取怎样的措施，快来涨姿势吧。",1,"君子兰");

#花卉大全
create table f_flower(
    fid int primary key auto_increment,
    name varchar(20) not null default "",
    family varchar(16) not null default "",
    pic varchar(128) not null default "images/moreflower/default.jpg",
    href varchar(128) not null default "",
    update_time int not null default 0
);

insert into f_flower values(null,"金粟兰","草本植物","images/moreflower/59673cc33d312.jpg","#",1);
insert into f_flower values(null,"杜英花","草本植物","images/moreflower/596737a23a9b1.jpg","#",3);
insert into f_flower values(null,"狼毒","草本植物","images/moreflower/5950c9e11ea9f.jpg","#",4);
insert into f_flower values(null,"金缕梅","草本植物","images/moreflower/5950c9a0e786a.jpg","#",5);
insert into f_flower values(null,"活血丹","草本植物","images/moreflower/5950c92a45b83.jpg","#",7);
insert into f_flower values(null,"婆婆纳","草本植物","images/moreflower/5950a39fc4828.jpg","#",9);
insert into f_flower values(null,"甘露子","草本植物","images/moreflower/594b8ececaa37.jpg","#",11);
insert into f_flower values(null,"鹿葱","草本植物","images/moreflower/593faeed39727.jpg","#",22);
insert into f_flower values(null,"蛇目菊","草本植物","images/moreflower/593a595155262.jpg","#",24);
insert into f_flower values(null,"蓝亚麻","草本植物","images/moreflower/593a58458477c.jpg","#",555);
insert into f_flower values(null,"龙面花","草本植物","images/moreflower/5937c4b5da9d2.jpg","#",222);
insert into f_flower values(null,"菊苣","草本植物","images/moreflower/5937c08b15745.jpg","#",11);

#多肉植物
create table f_succulent(
    sid int primary key auto_increment,
    name varchar(20) not null default "",
    family varchar(16) not null default "",
    pic varchar(128) not null default "images/moreflower/default.jpg",
    descr varchar(128) not null default "",
    href varchar(128) not null default "",
    update_time int not null default 0
);
insert into f_succulent values(null,"冬美人","crassulaceae","images/succulent/595229eb0d3ef.jpg","冬美人是属于景天科的多肉植物，适合养殖观赏，一般是将其作为室内盆栽进行养护的。","#",1);
insert into f_succulent values(null,"筒叶花月","crassulaceae","images/succulent/594a237fa0c1e.jpg","筒叶花月是多肉植物的一种，外形小巧，叶型奇特，十分适合观赏养殖。养殖筒叶花月，一般是盆栽室内养殖，在光照充足的时候，叶面呈现红色。","#",5);
insert into f_succulent values(null,"仙女杯","crassulaceae","images/succulent/5923f427585f4.jpg","仙女杯是多肉植物中的一种，它属于景天科。仙女杯的观赏价值还是很高的，很多养殖多肉的花友都会养殖仙女杯的。","#",6);
insert into f_succulent values(null,"塔花瓦松","crassulaceae","images/succulent/58feb36341f79.jpg","塔花瓦松是景天科瓦松属的一种多肉植物，是小型的原生品种。它的植株比较优美，在充足的光照下会格外艳丽。","#",6);
insert into f_succulent values(null,"红稚莲","crassulaceae","images/succulent/58ad664502e05.jpg","红稚莲是景天科石莲花属植物，是一种具有较高的观赏性的多肉，适合家庭养殖。","#",2);
insert into f_succulent values(null,"密叶莲","crassulaceae","images/succulent/58ad6f9f89fc8.jpg","密叶莲为韩国多肉植物，景天科，也有叫达利的，比较容易群生，春季叶片颜色红绿相间，夏季度夏的时候会变绿色，12月份的时候随着温差变大颜色会变红色，总的来说密叶莲还是比较容易养护的多肉植物。","#",1);
insert into f_succulent values(null,"小米星","crassulaceae","images/succulent/5760e82613e73.jpg","小米星是景天科的多肉植物，叶片尖尖的，灰绿色或浅绿色，开花时花朵如米粒般挂满枝头，颇为华丽。","#",5);
insert into f_succulent values(null,"姬秋丽","crassulaceae","images/succulent/57579c396f382.jpg","姬秋丽，是景天科的一种多肉植物，外形如玉石般精致、小巧。总是一簇簇的聚集在一起，数量繁多又晶莹可爱。","#",1);
insert into f_succulent values(null,"若歌诗","crassulaceae","images/succulent/574fdc1fa306c.jpg","若歌诗长得胖嘟嘟的，新生的叶子交错排列，每一片叶子上面还会覆盖一层细细的绒毛，看起来毛茸茸的，十分的惹人喜欢。","#",7);
insert into f_succulent values(null,"山地玫瑰","crassulaceae","images/succulent/5723269753c0d.jpg","山地玫瑰是一种很美丽的多肉植物，如同它的名字一样，山地里生长的玫瑰一般的植物，很多家庭因其独特的外形而选择养殖它，那么我们也一起认识一下它吧。","#",9);

#首页轮播图
create table f_index_slider(
    iid int primary key auto_increment,
    pic varchar(128) not null default "",#750*328像素图片
    href varchar(128) not null default "",
    update_time int not null default 0
);

insert into f_index_slider values(null,"images/index/112312314156qqwe.jpg","#",4);
insert into f_index_slider values(null,"images/index/123123123qeqwe.jpg","#",3);
insert into f_index_slider values(null,"images/index/12312315g.jpg","#",2);
insert into f_index_slider values(null,"images/index/1231235wwerwe.jpg","#",1);
insert into f_index_slider values(null,"images/index/banner1.jpg","#",0);


#首页百花图谱
create table f_index_atlas(
    aid int primary key auto_increment,
    bpic varchar(128) not null default "",
    spic varchar(128) not null default "",
    href varchar(128) not null default "",
    title varchar(32) not null default "",
    descr varchar(128) not null default "",
    update_time int not null default 0,
    heat int not null default 0
);
insert into f_index_atlas values(null,"images/index/58da467a520dd.jpg","images/index/58da467a520dasdd.jpg","#","世界花后——郁金香","“兰陵美酒郁金香，玉碗盛来琥珀光。”郁金香花朵大型而艳丽，是许多国家的国花，拥有世界花后的美名。",now(),17);
insert into f_index_atlas values(null,"images/index/57610d0487874.jpg","images/index/57610d03630a2.jpg","#","荷兰船长——洋水仙","听到荷兰船长这个名字，大家脑海里的第一反应是不是一个人，但是，荷兰船长可是一种洋水仙哦~",now(),72);
insert into f_index_atlas values(null,"images/index/575fc14a99b55.jpg","images/index/575fc147a2437.jpg","#","她在丛中，深山含笑","看到这个名字，深山含笑，既给人一种侠骨柔情的武侠感觉，又给人带来深林奇缘的惊喜之旅。",now(),192);
insert into f_index_atlas values(null,"images/index/574d4fa39d178.jpg","images/index/574d4fa154975.jpg","#","复活的希望——鸡蛋花","鸡蛋花，别名缅栀子、蛋黄花、印度素馨、大季花，花数朵聚生于枝顶，外面乳白色，中心鲜黄色，极芳香。",now(),100);
insert into f_index_atlas values(null,"images/index/574fe9bc3b269.jpg","images/index/574fe9be406a3.jpg","#","天堂之花——曼陀罗华","曼陀罗华是一种和曼珠沙华，也就是彼岸花很像的花卉，只不过二者明显的不同就是，摩天轮还是纯洁的白色，象征着天堂，所以，它是天堂之花。",now(),123);
insert into f_index_atlas values(null,"images/index/57611dceb2adc.jpg","images/index/57611dcc6cccf.jpg","#","冰清玉洁","冰清玉洁，是洋水仙的其中一个品种，他的特色就就是白色加上奶油黄色，看起来奇异又美丽。",now(),144);
insert into f_index_atlas values(null,"images/index/575fc520e8967.jpg","images/index/575fc522db042.jpg","#","花叶交织的艳山姜","艳山姜，又被称为彩叶姜、月桃……虽然名字中带着姜字儿，模样却跟姜一点儿都不同。快随我一起来看吧！",now(),354);
insert into f_index_atlas values(null,"images/index/575fc24dd2056.jpg","images/index/575fc2542d925.jpg","#","白色木香花","木香花开了，一簇簇洁白的如雪一样的花朵，密密麻麻洒满一树，驻足弥漫着沁人心脾的木香花下，我的思绪，回到了那个也同样开满木香花的小院",now(),1765);



#百花图谱
create table f_atlas(
    aid int primary key auto_increment,
    pic varchar(128) not null default "",
    href varchar(128) not null default "",
    title varchar(32) not null default "",
    descr varchar(128) not null default "",
    update_time int not null default 0,
    heat int not null default 0
);

insert into f_atlas values(null,"images/index/58da467a520dd.jpg","#","世界花后——郁金香","“兰陵美酒郁金香，玉碗盛来琥珀光。”郁金香花朵大型而艳丽，是许多国家的国花，拥有世界花后的美名。",now(),17);
insert into f_atlas values(null,"images/index/57610d0487874.jpg","#","荷兰船长——洋水仙","听到荷兰船长这个名字，大家脑海里的第一反应是不是一个人，但是，荷兰船长可是一种洋水仙哦~",now(),72);
insert into f_atlas values(null,"images/index/575fc14a99b55.jpg","#","她在丛中，深山含笑","看到这个名字，深山含笑，既给人一种侠骨柔情的武侠感觉，又给人带来深林奇缘的惊喜之旅。",now(),192);
insert into f_atlas values(null,"images/index/574d4fa154975.jpg","#","复活的希望——鸡蛋花","鸡蛋花，别名缅栀子、蛋黄花、印度素馨、大季花，花数朵聚生于枝顶，外面乳白色，中心鲜黄色，极芳香。",now(),100);
insert into f_atlas values(null,"images/index/574fe9bc3b269.jpg","#","天堂之花——曼陀罗华","曼陀罗华是一种和曼珠沙华，也就是彼岸花很像的花卉，只不过二者明显的不同就是，摩天轮还是纯洁的白色，象征着天堂，所以，它是天堂之花。",now(),123);
insert into f_atlas values(null,"images/index/57611dceb2adc.jpg","#","冰清玉洁","冰清玉洁，是洋水仙的其中一个品种，他的特色就就是白色加上奶油黄色，看起来奇异又美丽。",now(),144);
insert into f_atlas values(null,"images/index/575fc522db042.jpg","#","花叶交织的艳山姜","艳山姜，又被称为彩叶姜、月桃……虽然名字中带着姜字儿，模样却跟姜一点儿都不同。快随我一起来看吧！",now(),354);
insert into f_atlas values(null,"images/index/575fc2542d925.jpg","#","白色木香花","木香花开了，一簇簇洁白的如雪一样的花朵，密密麻麻洒满一树，驻足弥漫着沁人心脾的木香花下，我的思绪，回到了那个也同样开满木香花的小院",now(),175);

insert into f_atlas values(null,"images/atlas/5784a52f57077.jpg","#","花器和花材完美结合","喜欢养花，也喜欢插花，喜欢用鲜花将自己的家装扮的古色古香的。那插花最重要的是什么？除了鲜花，更重要的是花瓶，鲜花与花器的完美搭配，美自然的流露！",now(),177);
insert into f_atlas values(null,"images/atlas/57650f6b74972.jpg","#","非洲菊图片","非洲菊又叫作太阳花，中间一点是太阳，四周的花瓣是太阳的光芒，在阳光下格外的耀眼。在家中种上一盆，瞬间充满阳光。",now(),882);
insert into f_atlas values(null,"images/atlas/5767501c6d665.jpg","#","幽灵之花——水晶兰图片","幽灵之花水晶兰：鹿蹄草科，不是兰花也不是蕈类，为腐物寄生植物，无叶绿素不进行光合作用，叶退化成鳞片状。",now(),102);
insert into f_atlas values(null,"images/atlas/5761166db60f7.jpg","#","渴望被爱的朱顶红","“神清气质嘉，貌赛水仙花。昂首朱颜笑，含情醉若霞。”用这几句简单的花来夸赞朱顶红一点儿都不显夸张，反而觉得夸得还不够呢。",now(),188);
insert into f_atlas values(null,"images/atlas/576111562a3bc.jpg","#","夏菊名流千秋","名流千秋是夏菊的一个品种，夏菊名流千秋会随着阳光照射的强度而改变颜色，光线越强，颜色越淡，是非常值得花友拥有的一个品种。",now(),1662);
insert into f_atlas values(null,"images/atlas/57610c346301a.jpg","#","水鳖——诡异的名字","咳咳，小编看到这个名字的时候也是愣神了好久，明明是一种植物，为什么这名字却和鳖扯上了关系呢？",now(),122);
insert into f_atlas values(null,"images/atlas/575e70d57d63b.jpg","#","粉色荷花——娇羞女子","粉色的荷花看起来比较的清新淡雅，甚至像是一位水中的仙子正在静静的站立，又像是一个娇羞的少女，含羞静立。",now(),165);
insert into f_atlas values(null,"images/atlas/575fca61023d4.jpg","#","疑是紫藤驾云来，秀色可餐蒜香藤","蒜香藤叶片有大蒜的味道，故名而来。这是一种很怪的味道，想象一下，自己的家中放着一棵时刻散发着大蒜味道的植物，你能保证自己不被同化？",now(),342);
insert into f_atlas values(null,"images/atlas/575f9be96605d.jpg","#","倾慕与浪漫的代言——粉色风信子","风信子，大家常见的一般是紫色的风信子，但是风信子的颜色可是不是那么的保守哦，粉色的风信子，一听，是不是就觉得粉红色的气息扑面而来？",now(),156);
insert into f_atlas values(null,"images/atlas/575f980983ead.jpg","#","开在天界的彼岸花","彼岸花是一种充满着神奇色彩的花，它是开在天界之花，是生长在三途河边的接引之花，花香传说有魔力，能唤起死者生前的记忆。",now(),185);
insert into f_atlas values(null,"images/atlas/575f7786dd7b5.jpg","#","天女花——绝世独立秀娉婷","天女木兰是中国的传统花卉，然而却一直长于深山人未识。周围还是料峭，珍贵花卉天女木兰已收起笑靥，将惊艳与芬芳静置于自己萧瑟的体内。",now(),1772);
insert into f_atlas values(null,"images/atlas/575e494c695ad.jpg","#","绽放着的甘德唐菖蒲","唐菖蒲具有很多的种类，除了原有的之外，人们还因其美丽又培育出许多的新品种。甘德唐菖蒲就是其中的一种。",now(),197);
insert into f_atlas values(null,"images/atlas/575e477a6e48e.jpg","#","四大切花之一的唐菖蒲","唐菖蒲具有迷人的魅力，它模样美丽，花色鲜艳多彩。拥有美好的象征意义，许多西方人士视之为欢乐、喜庆、和睦的象征。",now(),1097);
insert into f_atlas values(null,"images/atlas/575e756fd36dc.jpg","#","黄色的荷花——暖意春融","荷花的颜色有很多，除了常见的白荷和红色之外，黄色的荷花也不少见，黄色的荷花，颜色有些淡淡的，带着些太阳的味道。",now(),1543);
insert into f_atlas values(null,"images/atlas/575e7978883ba.jpg","#","金银莲花——印度荇菜","金银莲花的花朵看起来毛茸茸的，分开的花瓣上面有着丝丝缕缕的丝状物，看起来暖和极了，白色的花瓣和花絮在一起，看起来和谐的很~",now(),12245);
insert into f_atlas values(null,"images/atlas/575cf30bb5577.jpg","#","月下香来晚香玉","依序花开鳞次第，轩庭摇曳秋芳。枝枝穗穗感清凉。蝶休蜂息远，梦幻晚来香。",now(),145);
insert into f_atlas values(null,"images/atlas/575e48285128b.jpg","#","清秀的葱兰","葱兰，顾名思义它的叶子像葱，亭亭玉立、清秀碧绿。平时与普通的花草并没有什么区别，只有当花季了到来之时，它的绽放令人惊讶。",now(),1662);
insert into f_atlas values(null,"images/atlas/5757c18d0fbf3.jpg","#","美艳村居足众愿， 随人指点小桃红——榆叶梅","榆叶梅，因其叶片像榆树叶，花朵酷似梅花而得名，于4月盛开，满枝花团，给人们带来一场红色盛宴。",now(),124);
insert into f_atlas values(null,"images/atlas/575cf0efa6c46.jpg","#","洁白优雅的韭菜莲","如果说粉色的花已被看倦，那么纯净的白色韭菜莲就是一个永远不会厌倦的选择。",now(),1567);
insert into f_atlas values(null,"images/atlas/575788dd5c8b6.jpg","#","珊瑚藤美图欣赏","珊瑚藤别名凤冠、凤宝石。蓼科，珊瑚藤属，常绿木质藤本。珊瑚藤夺目壮观，是园林和垂直绿化的好植物，也是有观赏价值的花卉之一。有“藤蔓植物之后”之称。",now(),67);
insert into f_atlas values(null,"images/atlas/57568f7fa70dd.jpg","#","花儿映月——月见草","月见草为柳叶菜科月见草属下的一个种，是夏季至秋季开放的花，在全国各地野生。黄昏后开花，因此得名‘月见草’。",now(),892);
insert into f_atlas values(null,"images/atlas/5757c5513a554.jpg","#","松叶牡丹——松红梅","松红梅，因其叶似松叶、花似红梅而得名，又因其重瓣花朵形似牡丹，也称做“松叶牡丹”，是一种近些年来引进的观花植物。",now(),1442);
-- insert into f_atlas values(null,"images/atlas/","#","title","descr",now(),12);


