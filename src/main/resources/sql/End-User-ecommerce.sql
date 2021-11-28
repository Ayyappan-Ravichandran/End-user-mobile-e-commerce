CREATE DATABASE IF NOT EXISTS mobilemart;
use mobilemart;
DROP TABLE IF EXISTS `mobilemart`.`admin`;
CREATE TABLE `mobilemart`.`admin`(
  `id` int NOT NULL AUTO_INCREMENT,
  `adminname` varchar(45) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

insert into admin(adminname,password) values("admin","1234");

DROP TABLE IF EXISTS `mobilemart`.`customer`;
CREATE TABLE `mobilemart`.`customer`(
 `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

insert into customer(username,password) values("ayyappan","12345");

set sql_safe_updates=0;

DROP TABLE IF EXISTS `mobilemart`.`mobiles`;
CREATE TABLE `mobilemart`.`mobiles`(
  `id` int NOT NULL,
  `company` varchar(45) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `photo1` varchar(500) DEFAULT NULL,
  `photo2` varchar(500) DEFAULT NULL,
  `RAM` varchar(10) DEFAULT NULL,
  `ROM` varchar(10) DEFAULT NULL,
  `OS` varchar(20) DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
);


insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(1,'APPLE','iPhone 7','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ7wWaP272CfhheivV2fDNqKYj8-hMQMzgZTg&usqp=CAU','https://images-na.ssl-images-amazon.com/images/I/51v9hWDo6QL._SL1024_.jpg','https://images-na.ssl-images-amazon.com/images/I/41asQf%2BWrML._SL1024_.jpg','2 GB','32 GB',29799,'IOS');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(2,'APPLE','iPhone 11','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Black-128-GB-p/-Apple-iPhone-11-Black-128-GB-p-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Black-128-GB-p/-Apple-iPhone-11-Black-128-GB-p-3-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Black-128-GB-p/-Apple-iPhone-11-Black-128-GB-p-4-550x550h.jpg','4 GB','64 GB',63999,'IOS');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(3,'APPLE','iPhone 11 Pro','https://vlebazaar.in/image/cache/catalog/-Apple-iPhone-11-Pro-Max-Midnight-Green-256-GB-p/-Apple-iPhone-11-Pro-Max-Midnight-Green-256-GB-p-0-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Pro-Midnight-Green-512-GB-p/-Apple-iPhone-11-Pro-Midnight-Green-512-GB-p-3-550x550.jpg','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Pro-Midnight-Green-512-GB-p/-Apple-iPhone-11-Pro-Midnight-Green-512-GB-p-5-1000x1000.jpg','4 GB','64 GB',99599,'IOS');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(4,'APPLE','iPhone 11 Pro Max','https://vlebazaar.in/image/cache/catalog/-Apple-iPhone-11-Pro-Silver-64-GB-p/-Apple-iPhone-11-Pro-Silver-64-GB-p-1-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Pro-Max-Silver-512-GB-p/-Apple-iPhone-11-Pro-Max-Silver-512-GB-p-3-550x550.jpg','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Pro-Max-Silver-512-GB-p/-Apple-iPhone-11-Pro-Max-Silver-512-GB-p-5-550x550.jpg','4 GB','64 GB',109099,'IOS');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(5,'APPLE','iPhone Xs','https://vlebazaar.in/image/cache/catalog/apple%204s/apple-iphone-xsg-550x550h.jpeg','https://vlebazaar.in/image/cache/catalog//B07J318ZL8/Apple-iPhone-Xs-256GB---Gold-B07J318ZL8-4-550x550w.jpg','https://vlebazaar.in/image/cache/catalog//B07J318ZL8/Apple-iPhone-Xs-256GB---Gold-B07J318ZL8-7-550x550h.jpg','4 GB','512 GB',97900,'IOS');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(6,'APPLE','iPhone Xs Max','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-xs-max-spacegray?wid=400&hei=400&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1579299535473','https://images-na.ssl-images-amazon.com/images/I/71UYtMYg6WL._SL1024_.jpg','https://images-na.ssl-images-amazon.com/images/I/41dV4kx%2BC3L._SL1024_.jpg','4 GB','256 GB',93906,'IOS');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(7,'SAMSUNG','Samsung Galaxy M31','https://vlebazaar.in/image/cache/catalog//B07HGGYWL6/Samsung-Galaxy-M31-Ocean-Blue-6GB-RAM-128GB-Storage-B07HGGYWL6-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//B07HGGYWL6/Samsung-Galaxy-M31-Ocean-Blue-6GB-RAM-128GB-Storage-B07HGGYWL6-2-550x550.jpg','https://vlebazaar.in/image/cache/catalog//B07HGGYWL6/Samsung-Galaxy-M31-Ocean-Blue-6GB-RAM-128GB-Storage-B07HGGYWL6-8-550x550h.jpg','6 GB','128 GB',17499,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(8,'SAMSUNG','Samsung Galaxy M21','https://images.samsung.com/is/image/samsung/in-galaxy-m21-m215f-6gb-sm-m215fzkgins-frontblack-221755190?$PD_GALLERY_L_SHOP_JPG$','https://images.samsung.com/is/image/samsung/in-galaxy-m21-m215f-6gb-sm-m215fzkgins-backblack-221755179?$PD_GALLERY_L_SHOP_JPG$','https://images.samsung.com/is/image/samsung/in-galaxy-m21-m215f-6gb-sm-m215fzkgins-lsideblack-221755180?$PD_GALLERY_L_SHOP_JPG$','4 GB','64 GB',13999,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(9,'SAMSUNG','Samsung Galaxy M01','https://images.samsung.com/is/image/samsung/in-galaxy-m01-m015g-sm-m015gzbdins-3000x2000-253497081?$PD_GALLERY_L_SHOP_JPG$','https://images.samsung.com/is/image/samsung/in-galaxy-m01-m015g-sm-m015gzbdins-3000x2000-253497083?$PD_GALLERY_L_SHOP_JPG$','https://images.samsung.com/is/image/samsung/in-galaxy-m01-m015g-sm-m015gzbdins-3000x2000-253520087?$PD_GALLERY_L_SHOP_JPG$','3 GB','32 GB', 8399,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(10,'SAMSUNG','Samsung Galaxy A71','https://images.samsung.com/is/image/samsung/in-galaxy-a71-a715fz-8gb-sm-a715fzkwins-front-205858772?$PD_GALLERY_L_SHOP_JPG$','https://images.samsung.com/is/image/samsung/in-galaxy-a71-a715fz-8gb-sm-a715fzkwins-backl-205858762?$PD_GALLERY_L_SHOP_JPG$','https://images.samsung.com/is/image/samsung/in-galaxy-a71-a715fz-8gb-sm-a715fzkwins-lside-205858764?$PD_GALLERY_L_SHOP_JPG$','8 GB','128 GB',30999 ,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(11,'SAMSUNG','Samsung Galaxy A31','https://images.samsung.com/is/image/samsung/in-galaxy-a31-a315-6gb-sm-a315fzwwins-front-246030166?$PD_GALLERY_L_SHOP_JPG$','https://images.samsung.com/is/image/samsung/in-galaxy-a31-a315-6gb-sm-a315fzwwins-back-246030155?$PD_GALLERY_L_SHOP_JPG$','https://images.samsung.com/is/image/samsung/in-galaxy-a31-a315-6gb-sm-a315fzwwins-lside-246030158?$PD_GALLERY_L_SHOP_JPG$','6 GB','128 GB',20999,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(12,'SAMSUNG','Samsung Galaxy A21s','https://images.samsung.com/is/image/samsung/in-galaxy-a21s-a217f-6gb-sm-a217fzkfins-261087940?$PD_GALLERY_L_SHOP_JPG$','https://images.samsung.com/is/image/samsung/in-galaxy-a21s-a217f-6gb-sm-a217fzkfins-back-256703190?$PD_GALLERY_L_SHOP_JPG$','https://images.samsung.com/is/image/samsung/in-galaxy-a21s-a217f-6gb-sm-a217fzkfins-lside-256703193?$PD_GALLERY_L_SHOP_JPG$','4 GB','64 GB', 14998,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(13,'OPPO','OPPO Find X2','https://images-na.ssl-images-amazon.com/images/I/91-2d0XeliL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/81AnAIYd0jL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71%2BXdvHaB7L._SL1500_.jpg','12 GB','256 GB',64990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(14,'OPPO','OPPO A12','https://images-na.ssl-images-amazon.com/images/I/71-nSoWl8iL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71Gk0IC6waL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/91T4wWtlimL._SL1500_.jpg','3 GB','32 GB',9990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(15,'OPPO','OPPO A5','https://images-na.ssl-images-amazon.com/images/I/514zYTXaCqL._SL1000_.jpg','https://images-na.ssl-images-amazon.com/images/I/51Moqx%2Bcw2L._SL1000_.jpg','https://images-na.ssl-images-amazon.com/images/I/51QdGE%2BrEyL._SL1000_.jpg','3 GB','64 GB',10990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(16,'OPPO','OPPO A31','https://images-na.ssl-images-amazon.com/images/I/71KCwNV6MuL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71kfaDSxHzL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/710nxlkN5TL._SL1500_.jpg','4 GB','64 GB',12490,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(17,'OPPO','Oppo F15','https://images-na.ssl-images-amazon.com/images/I/61imtbccqsL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/6121XaI8H-L._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71XVGArGqFL._SL1500_.jpg','8 GB','128 GB',18990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(18,'OPPO','OPPO Reno2 F','https://images-na.ssl-images-amazon.com/images/I/8121-n8-ekL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71HAdbQNq3L._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/81nQAqoPjML._SL1500_.jpg','8 GB','128 GB',21990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(19,'VIVO','Vivo Y11','https://images-na.ssl-images-amazon.com/images/I/81WVehzY2%2BL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/81jbDqGI6ML._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/61vO2FlVC0L._SL1500_.jpg','3 GB','32 GB',9990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(20,'VIVO','Vivo Y30','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRUAsBezaDzU8SYrnSy8bzdNc3wsVre5cloaw&usqp=CAU','https://s1.poorvikamobile.com/image/data/AAAAA/vivo/Y30/New/Black/vivo-y30-emerald-black-128gb-4gb-ram-back-side_ios.jpeg','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTDTL25m4Wk50DvrnvdNHO_OZpyrAfe5ZK7Qg&usqp=CAU','4 GB','128 GB',14990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(21,'VIVO','Vivo Y50','https://vlebazaar.in/image/cache/catalog//B086KDZGTZ/Vivo-Y50-Pearl-White-8GB-RAM-128GB-Storage-with-No-Cost-EMIAdditional-Exchange-Offers-B086KDZGTZ-550x550h.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT_WvaKzc49ZgvG-jBVOsvVzMZLhu-9D4nxSg4bkWCJPg&usqp=CAU&ec=45695923','https://s3b.cashify.in/gpro/uploads/2020/04/28091018/vivo-y50-back.jpg','8 GB','128 GB',17990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(22,'VIVO','Vivo Y12','https://images-na.ssl-images-amazon.com/images/I/51tarfn3vxL._SL1000_.jpg','https://images-na.ssl-images-amazon.com/images/I/51wRun9RmdL._SL1000_.jpg','https://images-na.ssl-images-amazon.com/images/I/515Sj9PH0LL._SL1000_.jpg','3 GB','64 GB',10990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(23,'VIVO','Vivo V15 Pro','https://vlebazaar.in/image/cache/catalog//-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM/-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM/-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM-4-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM/-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM-5-550x550h.jpg','8 GB','128 GB',27990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(24,'VIVO','Vivo S1','https://vlebazaar.in/image/cache/catalog//-Vivo-S1-Skyline-Blue-128-GB-4-GB-RAM/-Vivo-S1-Skyline-Blue-128-GB-4-GB-RAM-0-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Vivo-S1-Skyline-Blue-128-GB-4-GB-RAM/-Vivo-S1-Skyline-Blue-128-GB-4-GB-RAM-2-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Vivo-S1-Skyline-Blue-128-GB-4-GB-RAM/-Vivo-S1-Skyline-Blue-128-GB-4-GB-RAM-3-550x550h.jpg','6 GB','64 GB',17990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(25,'NOKIA','Nokia 105','https://images-na.ssl-images-amazon.com/images/I/31Z2ee9oYQL.jpg','https://images-na.ssl-images-amazon.com/images/I/31kw3XsSZTL.jpg','https://images-na.ssl-images-amazon.com/images/I/21zWtNkN4UL.jpg','-','-',1199,'BASIC');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(26,'NOKIA','Nokia 110','https://images-na.ssl-images-amazon.com/images/I/317a%2BV7Qu-L.jpg','https://images-na.ssl-images-amazon.com/images/I/317a%2BV7Qu-L.jpg','https://images-na.ssl-images-amazon.com/images/I/31h-uxPPk7L.jpg','-','-',1858,'BASIC');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(27,'NOKIA','Nokia 5.3','https://images-na.ssl-images-amazon.com/images/I/61L1ItFgFHL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/619vpnbl6-L._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/61MOKwyG4SL._SL1500_.jpg','4 GB','64 GB',13999,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(28,'NOKIA','Nokia 2.3','https://images-na.ssl-images-amazon.com/images/I/51h09OaleyL._SL1024_.jpg','https://images-na.ssl-images-amazon.com/images/I/412T97bWMtL.jpg','https://images-na.ssl-images-amazon.com/images/I/31-5hQNusZL.jpg','2 GB','32 GB',8865,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(29,'NOKIA','Nokia 4.2','https://images-na.ssl-images-amazon.com/images/I/81YTUmk8zCL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/81nmHaX46xL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71UHw%2BfatnL._SL1500_.jpg','3 GB','32 GB',11990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(30,'NOKIA','Nokia 3.2','https://images-na.ssl-images-amazon.com/images/I/81dOOs7xhLL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/816Gizqr3OL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71lsGcmyUGL._SL1500_.jpg','3 GB','32 GB',10690,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(31,'REALME','Realme U1','https://seller.shoponn.in/Item/Realme%20U1%20Ambitious%20Black%2032%20GB%203%20GB%20RAM%20A.jpg','https://seller.shoponn.in/Item/Realme%20U1%20Ambitious%20Black%2032%20GB%203%20GB%20RAM%20C.jpg','https://seller.shoponn.in/Item/Realme%20U1%20Ambitious%20Black%2032%20GB%203%20GB%20RAM%20B.jpg','3 GB','32 GB',12999,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(32,'REALME','Realme X','https://images-na.ssl-images-amazon.com/images/I/81hcorK3VuL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71oB8dy9z6L._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/61yZVtDQTpL._SL1500_.jpg','4 GB','128 GB',18990,'ANDROID');
insert into mobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(33,'REALME','Realme 6','https://vlebazaar.in/image/cache/catalog//-Realme-6-Comet-Blue-128-GB-8-GB-RAM/-Realme-6-Comet-Blue-128-GB-8-GB-RAM-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Realme-6-Comet-Blue-128-GB-8-GB-RAM/-Realme-6-Comet-Blue-128-GB-8-GB-RAM-3-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Realme-6-Comet-Blue-128-GB-8-GB-RAM/-Realme-6-Comet-Blue-128-GB-8-GB-RAM-4-550x550h.jpg','6 GB','128 GB',15999,'ANDROID');

DROP TABLE IF EXISTS `mobilemart`.`latestmobiles`;
CREATE TABLE `mobilemart`.`latestmobiles` (
  `id` int NOT NULL,
  `company` varchar(45) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `photo1` varchar(500) DEFAULT NULL,
  `photo2` varchar(500) DEFAULT NULL,
  `RAM` varchar(10) DEFAULT NULL,
  `ROM` varchar(10) DEFAULT NULL,
  `OS` varchar(20) DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
);

insert into latestmobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(2,'APPLE','iPhone 11','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Black-128-GB-p/-Apple-iPhone-11-Black-128-GB-p-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Black-128-GB-p/-Apple-iPhone-11-Black-128-GB-p-3-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Black-128-GB-p/-Apple-iPhone-11-Black-128-GB-p-4-550x550h.jpg','4 GB','64 GB',63999,'IOS');
insert into latestmobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(3,'APPLE','iPhone 11 Pro','https://vlebazaar.in/image/cache/catalog/-Apple-iPhone-11-Pro-Max-Midnight-Green-256-GB-p/-Apple-iPhone-11-Pro-Max-Midnight-Green-256-GB-p-0-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Pro-Midnight-Green-512-GB-p/-Apple-iPhone-11-Pro-Midnight-Green-512-GB-p-3-550x550.jpg','https://vlebazaar.in/image/cache/catalog//-Apple-iPhone-11-Pro-Midnight-Green-512-GB-p/-Apple-iPhone-11-Pro-Midnight-Green-512-GB-p-5-1000x1000.jpg','4 GB','64 GB',99599,'IOS');
insert into latestmobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(13,'OPPO','OPPO Find X2','https://images-na.ssl-images-amazon.com/images/I/91-2d0XeliL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/81AnAIYd0jL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71%2BXdvHaB7L._SL1500_.jpg','12 GB','256 GB',64990,'ANDROID');
insert into latestmobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(23,'VIVO','Vivo V15 Pro','https://vlebazaar.in/image/cache/catalog//-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM/-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM/-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM-4-550x550h.jpg','https://vlebazaar.in/image/cache/catalog//-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM/-Vivo-V15-Aqua-Blue-64-GB-6-GB-RAM-5-550x550h.jpg','8 GB','128 GB',27990,'ANDROID');
insert into latestmobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(27,'NOKIA','Nokia 5.3','https://images-na.ssl-images-amazon.com/images/I/61L1ItFgFHL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/619vpnbl6-L._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/61MOKwyG4SL._SL1500_.jpg','4 GB','64 GB',13999,'ANDROID');
insert into latestmobiles(id,company,brand,photo,photo1,photo2,RAM,ROM,price,OS) values(32,'REALME','Realme X','https://images-na.ssl-images-amazon.com/images/I/81hcorK3VuL._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71oB8dy9z6L._SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/61yZVtDQTpL._SL1500_.jpg','4 GB','128 GB',18990,'ANDROID');

DROP TABLE IF EXISTS `mobilemart`.`cart`;
CREATE TABLE `mobilemart`.`cart` (
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `cus_id` varchar(20) DEFAULT NULL,
  KEY `product_id` (`product_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `mobiles` (`id`)
  
);

DROP TABLE IF EXISTS `mobilemart`.`orders`;
CREATE TABLE `mobilemart`.`orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `cus_id` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `mobiles` (`id`)
    
) ;


DROP TABLE IF EXISTS `mobilemart`.`myorders`;
CREATE TABLE `mobilemart`.`myorders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `cus_id` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `myorders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `mobiles` (`id`)
   
) ;

DROP TABLE IF EXISTS `mobilemart`.`compare`;
CREATE TABLE `mobilemart`.`compare`(
  `product_id` int DEFAULT NULL,
  `cus_id` varchar(45) DEFAULT NULL,
  KEY `product_id` (`product_id`),
  CONSTRAINT `compare_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `mobiles` (`id`)

) ;
