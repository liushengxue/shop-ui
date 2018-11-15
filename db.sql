SET NAMES UTF8;
CREATE DATABASE web CHARSET=utf8;
USE web;
#3:创建用户名 xz_user(针对登录)
#建议:用户密码8位以上(有大写;小写;数字;特殊字符)
CREATE TABLE xz_user(
  uid   INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25),
  upwd  VARCHAR(32)
);
INSERT INTO xz_user VALUES(null,'tom','123');
INSERT INTO xz_user VALUES(null,'dongdong','123');
INSERT INTO xz_user VALUES(null,'jerry','123');

#图片轮播表 xz_imagelist
CREATE TABLE xz_imagelist(
  id      INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255)
);
INSERT INTO xz_imagelist VALUES(null,
'http://127.0.0.1:3003/img/banner1.jpg');
INSERT INTO xz_imagelist VALUES(null,
'http://127.0.0.1:3003/img/banner2.jpg');
INSERT INTO xz_imagelist VALUES(null,
'http://127.0.0.1:3003/img/banner3.jpg');
INSERT INTO xz_imagelist VALUES(null,
'http://127.0.0.1:3003/img/banner4.jpg');


CREATE TABLE xz_news(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title   VARCHAR(255),
  img_url VARCHAR(255),
  ctime   DATETIME
);
INSERT INTO xz_news VALUES(null,'小米合伙人为MIX 3辩解: 你们用过几台屏幕指纹手机?',
'http://127.0.0.1:3003/img/comment1.jpg',now());
INSERT INTO xz_news VALUES(null,'经典始于一句建议 保时捷Speedster(上)',
'http://127.0.0.1:3003/img/comment2.jpg',now());
INSERT INTO xz_news VALUES(null,'荣威i5正式上市 指导售价6.89-11.59万元',
'http://127.0.0.1:3003/img/comment3.jpg',now());
INSERT INTO xz_news VALUES(null,'新车一图流：新款奔驰C级31.58-48.68万',
'http://127.0.0.1:3003/img/comment4.jpg',now());
INSERT INTO xz_news VALUES(null,'港珠澳大桥通车！ 这份兜风指南请收好',
'http://127.0.0.1:3003/img/comment5.jpg',now());
INSERT INTO xz_news VALUES(null,'推荐C 260 L车型 新款奔驰C级怎么选？',
'http://127.0.0.1:3003/img/comment6.jpg',now());
INSERT INTO xz_news VALUES(null,'普通版+混动版 东风本田INSPIRE怎么选？',
'http://127.0.0.1:3003/img/comment7.jpg',now());
INSERT INTO xz_news VALUES(null,'特斯拉Model 3产能稳定 三季度实现盈利',
'http://127.0.0.1:3003/img/comment8.jpg',now());
INSERT INTO xz_news VALUES(null,'大众柴油门没完 保时捷被判罚4700万欧元',
'http://127.0.0.1:3003/img/comment9.jpg',now());
INSERT INTO xz_news VALUES(null,'沃尔沃收购移动充电公司股份 纯电动计划',
'http://127.0.0.1:3003/img/comment10.jpg',now());
INSERT INTO xz_news VALUES(null,'北京奔驰新款C级上市 售价31.58-48.68万',
'http://127.0.0.1:3003/img/comment11.jpg',now());
INSERT INTO xz_news VALUES(null,'兰博基尼欲打造全新超跑 对标Valkyrie',
'http://127.0.0.1:3003/img/comment12.jpg',now());
INSERT INTO xz_news VALUES(null,'Fisker固态电池有望量产 纯电动车新进展',
'http://127.0.0.1:3003/img/comment13.jpg',now());
INSERT INTO xz_news VALUES(null,'奔驰召回部分GL/M/GLE/GLS/S级 两个原因',
'http://127.0.0.1:3003/img/comment14.jpg',now());

CREATE TABLE xz_comment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nid       INT,
  ctime     DATETIME,
  content   VARCHAR(50),
  username  VARCHAR(25),
  isdel     INT
);
INSERT INTO xz_comment VALUES(null,1,now(),'111','wh',0);

CREATE TABLE xz_goods(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(255),
  price DECIMAL(10,2)
);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods1.jpg',"三只松鼠肉干肉脯小吃卤味熟食鸡翅根奥尔良味小鸡腿160g
/袋",15.90);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods2.jpg',"好想你 坚果炒货 休闲零食
新疆薄皮手剥核桃 原味核桃454g/袋",21.80);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods3.jpg',"良品铺子 手造麻薯组合 爆浆糕点早餐
零食大礼包特产小吃150g*7袋",36.90);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods4.jpg',"姚生记 原味山核桃仁 坚果炒货
零食干果仁 小核桃仁160g/罐",53.90);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods5.jpg',"坑王府 椰奶清补凉280g
*12罐 辫儿哥哥德云社张云雷代言 海南特产水果罐头 方便速食食品",88.00);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods6.jpg',"盐津铺子 休闲零食 京东JOY定制款肉类零食礼盒零食大礼包送女友一整箱
520g",59.90);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods7.jpg',"沃隆 每日蔓越莓干 坚果蜜饯
休闲零食360克",49.90);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods8.jpg',"新边界 新疆特产 红枣
骏枣子 和田大枣500g*2",29.90);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods9.jpg',"西域美农 新疆大枣 六星和田红枣500g
/袋 休闲食品特产 蜜饯果干 骏枣子 孕妇零食",19.90);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods10.jpg',"【京东JOY联名款
】西域美农  美仁枣88g/袋 休闲零食 蜜饯坚果仁 每日坚果 红枣夹核桃仁",9.88);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods11.jpg',"俏香阁 每日坚果 零食大礼包10袋装
狗年定制版京喜年礼1845g",218.00);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods12.jpg',"【京东JOY联名款
】臻味 每日坚果礼盒 坚果炒货 混合干果零食大礼包 果仁多672g/盒g",99.90);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods13.jpg',"【京东JOY联名款
】雨果小镇 九种综合果蔬干 9袋装 休闲零食 冻干水果干大礼包255g/盒",89.90);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods14.jpg',"洽洽 坚果炒货  JOY定制零食瓜子皇葵礼盒880g",48.90);
INSERT INTO xz_goods VALUES(null,'http://127.0.0.1:3003/img/goods15.jpg',"厂家配送 ileven 休闲特产
聚甄礼盒1243g 零食大礼包 赠红肠150g 每日坚果",49.90);


/**购物车条目**/
CREATE TABLE xz_cart(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(16),      #用户名
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

INSERT INTO xz_cart VALUES(null,'tom',1,2,false)







