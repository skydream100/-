#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS sky_car;
#创建数据库
CREATE DATABASE sky_car CHARSET=UTF8;
#进入数据库
USE sky_car;

/**汽车品牌**/
CREATE TABLE car_brand(
  brand_id INT PRIMARY KEY AUTO_INCREMENT,
  bname VARCHAR(32)
);

/**汽车产品系列**/
CREATE TABLE car_product(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  brand_id INT,          #汽车品牌编号
  title VARCHAR(128),    #汽车标题
  car_type VARCHAR(128), #车型
  series VARCHAR(32),    #车系
  configure VARCHAR(64), #配置款
  seat_num VARCHAR(64),   #座位数
  fuel VARCHAR(32),        #燃料类型
  capacity VARCHAR(32),    #油箱容量
  car_gps VARCHAR(32),     #GPS导航
  video_card VARCHAR(32),  #变速箱类型
  bas_service DECIMAL(10,2)   #基础服务费
);

/**汽车型号信息**/
INSERT INTO `car_product` VALUES
('1', '1', '奔驰BX5', '经济型', 'BX5', '品悠版', '4', '汽油', '55', '有', 'AT', '¥80/天'),
('2', '1', '奔驰BX6', '商务型', 'BX6', '品悠版', '4', '汽油', '55', '有', 'AT', '¥160/天'),
('3', '1', '奔驰BX7', '经济型', 'BX7', '品悠版', '4', '汽油', '55', '有', 'AT', '¥200/天'),
('4', '1', '奔驰G10', '经济型', 'G10', '品悠版', '4', '汽油', '55', '有', 'AT', '¥180/天');

/**汽车图片**/
CREATE TABLE car_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  brand_id INT,     #汽车品牌编号
  sm VARCHAR(128),  #小图片路径
  md VARCHAR(128),  #中图片路径
  lg VARCHAR(128)   #大图片路径
);

/**在线预约**/
CREATE TABLE car_msg(
  user_name VARCHAR(32),  #联系姓名
  crede_type VARCHAR(18), #证件类型
  crede_number VARCHAR(32), #证件号码
  phone VARCHAR(11),  #手机号码
  car_type VARCHAR(128),   #预约车型
  reser_time DATE  #预约时间
);

/**底部分类**/
CREATE TABLE car_news(
  tid INT PRIMARY KEY,
  title VARCHAR(32),
  addtime DATE,
  content text
);

-- 转存表中的数据  `底部小分类`


/**用户信息**/
CREATE TABLE car_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);


/*******************/
/******数据导入******/
/*******************/
/**汽车型号**/
INSERT INTO `car_brand` VALUES
(NULL,'奔驰'),
(NULL,'宝马'),
(NULL,'奥迪'),
(NULL,'丰田'),
(NULL,'福特'),
(NULL,'别克'),
(NULL,'大众');


/**汽车大中小图片*/
INSERT INTO `car_pic` VALUES
(NULL, 1, 'img/product/sm/57b12a31N8f4f75a3.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 1, 'img/product/sm/57ad359dNd4a6f130.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 1, 'img/product/sm/57ad8846N64ac3c79.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 2, 'img/product/sm/57b12a31N8f4f75a3.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg');


/**用户信息**/
INSERT INTO car_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');