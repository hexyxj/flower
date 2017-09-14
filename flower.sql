set names utf8;
drop database if exists flower;
create database flower charset=utf8;
use flower;

create table f_article(
    aid int primary key auto_increment,
    title varchar(128) not null default "",
    heat int not null default 0,
    type varchar(16) not null default "",
    form varchar(4) not null default "",
    pic varchar(128) not null default ""
);
#花卉大全 h ,养花知识 y, 多肉植物 d , 百花图谱 b
insert into f_article values(null,"她家的绿萝1晚上长出来8个芽，都是因为做了这样一件事",10,"家庭养花","y","images/article/lvluo.jpg");
insert into f_article values(null,"四川惊现冥界之花！浅谈仙草的前世今生！",8,"花与健康","y","images/article/mingjiezhihua.jpg");
insert into f_article values(null,"飞碟瓜的种植方法",0,"家庭养花","y","images/article/fidiegua.jpg");
insert into f_article values(null,"沙枣的功效与作用",4,"花与健康","y","images/article/shazao.jpg");
insert into f_article values(null,"天山雪莲果的功效与作用",9,"花与健康","y","images/article/tianshanxuelianguo.jpg");
insert into f_article values(null,"花友1元钱水泥做的花盆，比我50元买来的花盆还漂亮",6,"家庭养花","y","images/article/shuinihuapen.jpg");
insert into f_article values(null,"榴莲盆栽种植方法",18,"盆景制作","y","images/article/liulianpenzai.jpg");
insert into f_article values(null,"火龙果皮能吃吗",1,"家庭养花","y","images/article/huolongguo.jpg");
insert into f_article values(null,"黄金菊的功效与作用",1,"花与健康","y","images/article/huangjinju.jpg");
insert into f_article values(null,"常见的十大绿篱植物",1,"家庭养花","y","images/article/lvlizhiwu.jpg");
insert into f_article values(null,"玻璃翠怎么养？",1,"家庭养花","y","images/article/bolicui.jpg");
insert into f_article values(null,"君子兰开花有什么兆头",1,"家庭养花","b","images/article/junzilan.jpg");
insert into f_article values(null,"满天星的花语是什么",1,"家庭养花","b","images/article/mantianxing.jpg");
insert into f_article values(null,"绿萝可以放在卧室吗",1,"家庭养花","y","images/article/lvluo1.jpg");
insert into f_article values(null,"黄金万年草的养殖方法",1,"家庭养花","y","images/article/huangjinwanniancao.jpg");
insert into f_article values(null,"栀子花叶子发黄怎么办",1,"家庭养花","y","images/article/zhizihua.jpg");
insert into f_article values(null,"风信子有毒吗",1,"养花技巧","b","images/article/fengxinzi.jpg");
insert into f_article values(null,"薰衣草的花期多久",1,"养花技巧","b","images/article/xunyicao.jpg");
insert into f_article values(null,"扶桑花有什么风水作用",1,"养花技巧","b","images/article/fusanghua.jpg");
insert into f_article values(null,"8种最容易爆盆的多肉植物",1,"养花技巧","d","images/article/duorouzhiwu.jpg");
insert into f_article values(null,"熊童子怎么浇水？",1,"养花技巧","d","images/article/xiontongzi.jpg");

create table f_flower(
    fid int primary key auto_increment,
    name varchar(20) not null default "",
    family varchar(16) not null default "",
    pic varchar(128) not null default "images/moreflower/default.jpg",
    update_time int not null default 0
);

insert into f_flower values(null,"金粟兰","草本植物","images/moreflower/59673cc33d312.jpg",1);
insert into f_flower values(null,"杜英花","草本植物","images/moreflower/596737a23a9b1.jpg",3);
insert into f_flower values(null,"狼毒","草本植物","images/moreflower/5950c9e11ea9f.jpg",4);
insert into f_flower values(null,"金缕梅","草本植物","images/moreflower/5950c9a0e786a.jpg",5);
insert into f_flower values(null,"活血丹","草本植物","images/moreflower/5950c92a45b83.jpg",7);
insert into f_flower values(null,"婆婆纳","草本植物","images/moreflower/5950a39fc4828.jpg",9);
insert into f_flower values(null,"甘露子","草本植物","images/moreflower/594b8ececaa37.jpg",11);
insert into f_flower values(null,"鹿葱","草本植物","images/moreflower/593faeed39727.jpg",22);
insert into f_flower values(null,"蛇目菊","草本植物","images/moreflower/593a595155262.jpg",24);
insert into f_flower values(null,"蓝亚麻","草本植物","images/moreflower/593a58458477c.jpg",555);
insert into f_flower values(null,"龙面花","草本植物","images/moreflower/5937c4b5da9d2.jpg",222);
insert into f_flower values(null,"菊苣","草本植物","images/moreflower/5937c08b15745.jpg",11);

create table f_succulent(
    sid int primary key auto_increment,
    name varchar(20) not null default "",
    family varchar(16) not null default "",
    pic varchar(128) not null default "images/moreflower/default.jpg",
    descr varchar(128) not null default "",
    update_time int not null default 0
);
insert into f_succulent values(null,"冬美人","crassulaceae","images/succulent/595229eb0d3ef.jpg","冬美人是属于景天科的多肉植物，适合养殖观赏，一般是将其作为室内盆栽进行养护的。",1);
insert into f_succulent values(null,"筒叶花月","crassulaceae","images/succulent/594a237fa0c1e.jpg","筒叶花月是多肉植物的一种，外形小巧，叶型奇特，十分适合观赏养殖。养殖筒叶花月，一般是盆栽室内养殖，在光照充足的时候，叶面呈现红色。",5);
insert into f_succulent values(null,"仙女杯","crassulaceae","images/succulent/5923f427585f4.jpg","仙女杯是多肉植物中的一种，它属于景天科。仙女杯的观赏价值还是很高的，很多养殖多肉的花友都会养殖仙女杯的。",6);
insert into f_succulent values(null,"塔花瓦松","crassulaceae","images/succulent/58feb36341f79.jpg","塔花瓦松是景天科瓦松属的一种多肉植物，是小型的原生品种。它的植株比较优美，在充足的光照下会格外艳丽。",6);
insert into f_succulent values(null,"红稚莲","crassulaceae","images/succulent/58ad664502e05.jpg","红稚莲是景天科石莲花属植物，是一种具有较高的观赏性的多肉，适合家庭养殖。",2);
insert into f_succulent values(null,"密叶莲","crassulaceae","images/succulent/58ad6f9f89fc8.jpg","密叶莲为韩国多肉植物，景天科，也有叫达利的，比较容易群生，春季叶片颜色红绿相间，夏季度夏的时候会变绿色，12月份的时候随着温差变大颜色会变红色，总的来说密叶莲还是比较容易养护的多肉植物。",1);
insert into f_succulent values(null,"小米星","crassulaceae","images/succulent/5760e82613e73.jpg","小米星是景天科的多肉植物，叶片尖尖的，灰绿色或浅绿色，开花时花朵如米粒般挂满枝头，颇为华丽。",5);
insert into f_succulent values(null,"姬秋丽","crassulaceae","images/succulent/57579c396f382.jpg","姬秋丽，是景天科的一种多肉植物，外形如玉石般精致、小巧。总是一簇簇的聚集在一起，数量繁多又晶莹可爱。",1);
insert into f_succulent values(null,"若歌诗","crassulaceae","images/succulent/574fdc1fa306c.jpg","若歌诗长得胖嘟嘟的，新生的叶子交错排列，每一片叶子上面还会覆盖一层细细的绒毛，看起来毛茸茸的，十分的惹人喜欢。",7);
insert into f_succulent values(null,"山地玫瑰","crassulaceae","images/succulent/5723269753c0d.jpg","山地玫瑰是一种很美丽的多肉植物，如同它的名字一样，山地里生长的玫瑰一般的植物，很多家庭因其独特的外形而选择养殖它，那么我们也一起认识一下它吧。",9);


create table f_index_slider(
    iid int primary key auto_increment,
    pic varchar(128) not null default "",
    href varchar(128) not null default ""
)

