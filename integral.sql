SET NAMES UTF8;
DROP DATABASE IF EXISTS integral;
CREATE DATABASE integral CHARSET=UTF8;
USE integral;

/**用户信息**/
CREATE TABLE integral_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),          #用户名
  upwd VARCHAR(32),           #用户密码
  email VARCHAR(64),          #用户邮箱
  phone VARCHAR(16),          #用户电话
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用真实户名，如王小明
  id_card VARCHAR(32),        #用户身份证
  gender INT,                 #性别  0-女  1-男
  member BOOLEAN             #是否为会员
);

/*添加用户信息数据*/
INSERT INTO integral_user VALUES
(NULL,'小明',123456,'xioaming@163.com',15697061916,'../img/bciusb.png','王大锤',532428199803126776,1,1),
(NULL,'小楚',123456,'xioachu@163.com',15697062918,'../img/bm.png','张楚岚',532428199806106976,0,1);

/**收货地址信息**/
CREATE TABLE integral_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县区
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编

  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/*添加用户地址信息*/
INSERT INTO integral_address VALUES
(NULL,1,'王大锤','重庆','重庆市','渝北区','重庆渝北区华山南路16号',15697061916,15697061916,'401135',1),
(NULL,1,'张楚岚','重庆','重庆市','渝北区','重庆渝北区华山南路16号',15697062918,15697062918,'401135',1);

/*首页轮播图片*/
CREATE TABLE integral_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64)
);
/*添加轮播图片*/
INSERT INTO integral_carousel VALUES
(NULL,"image/banner1.jpg",'轮播图商品1'),
(NULL,"image/banner2.jpg",'轮播图商品2'),
(NULL,"image/banner3.jpg",'轮播图商品3'),
(NULL,"image/banner4.jpg",'轮播图商品4');

/**用户订单**/
CREATE TABLE integral_order(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);

/*添加用户订单*/






/*商品列表*/
CREATE TABLE integral_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(64),
  title VARCHAR(64),
  integral INT,
  Price VARCHAR(16),
  frequency INT
);
/*添加商品列表*/
INSERT INTO integral_index_product VALUES
(NULL,'img/01.jpg','可口可乐瓶装600ml','350','3.50',100),
(NULL,'img/02.jpg','维他柠檬茶250ml','350','3.50',110),
(NULL,'img/03.jpg','元气森林白桃味苏打气泡水','500','5.00',45),
(NULL,'img/04.jpg','天友利友核桃奶240ml','220','2.20',78),
(NULL,'img/05.jpg','百事可乐摩登罐330ml','300','3.00',89),
(NULL,'img/06.jpg','娃哈哈AD钙奶220g','250','2.50',208),
(NULL,'img/07.jpg','红牛饮料250ml','650','6.50',179),
(NULL,'img/08.jpg','统一阿萨姆奶茶','450','4.50',149),
(NULL,'img/09.jpg','红牛饮料250ml','650','6.50',179),
(NULL,'img/10.jpg','旺仔牛奶原味245ml','650','6.50',68),
(NULL,'img/11.jpg','港荣蒸蛋糕整箱','3750','37.50',89),
(NULL,'img/12.jpg','友臣肉松饼整箱','4450','44.50',109),
(NULL,'img/13.jpg','奥利奥休闲食品网红零食','9950','99.50',270),
(NULL,'img/14.jpg','三只松鼠_零食大礼包','4980','49.80',89),
(NULL,'img/15.jpg','旺旺大米饼1000g*2袋','3580','35.80',399),
(NULL,'img/16.jpg','口水娃麻辣卤藕600g','1380','13.80',279),
(NULL,'img/17.jpg','源氏老式大辣片','1480','14.80',179),
(NULL,'img/18.jpg','乐事薯片40g*10包','2890','28.90',146),
(NULL,'img/19.jpg','达利园瑞士卷蛋糕混合装1500g','1500','15.00',306),
(NULL,'img/20.jpg','嘉华鲜花饼经典玫瑰饼300g','9600','96.00',257),
(NULL,'img/21.jpg',' 汤达人 日式豚骨味方便面','25800','258.00',374),
(NULL,'img/22.jpg','美国进口车厘子带箱3斤大樱桃','19900','199.00',394),
(NULL,'img/23.jpg','泰国莲雾果带箱5斤装','12900','129.00',400),
(NULL,'img/24.png','泰国进口红毛丹带箱5斤','7900','79.00',267),
(NULL,'img/25.jpg','比利时Truval啤梨12只','8900','89.00',398),
(NULL,'img/26.jpg','菲律宾都乐无冠菠萝2只装','4600','46.00',287),
(NULL,'img/27.jpg','南非进口西柚 9个装单果重200-300g','6800','68.00',217),
(NULL,'img/28.jpg','墨西哥进口牛油果8个新鲜当季水果190-240g','5790','57.90',287),
(NULL,'img/29.jpg','榴鲜生金枕头榴莲果肉净重900g','20700','207.00',232),
(NULL,'img/30.jpg','菲律宾进口非转基因木瓜','3900','39.00',232),
(NULL,'img/31.jpg','','25900','259.00',232),