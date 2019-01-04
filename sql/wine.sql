SET NAMES UTF8;
DROP DATABASE IF EXISTS wine;
CREATE DATABASE wine CHARSET=UTF8;
USE wine;
#用户表
create table wine_user(
    uid int primary key AUTO_INCREMENT,
    uname varchar(128),
    upwd varchar(128),
    cpwd varchar(128),
    phone varchar(11) not null UNIQUE,
    email VARCHAR(64),
    gender int,
    user_name varchar(128)
);

INSERT INTO wine_user values
    (null,"huang",'123456','123456','13413413411','1654654864@qq.com',1,'fangzi2'),
    (null,"dong",'123456','123456','13413445411','1665454864@qq.com',1,'fangzi1');

#详情表
create table wine_pro(
    fid int primary key AUTO_INCREMENT,
    href varchar(128),
    title varchar(128),
    price decimal(10,2),
    des  varchar(128),      #产品描述
    area varchar(128),            #产地
    variety   varchar(64),           #品种
    sales   int,                    #销量
    product_id  varchar(64),       #商品编号：001
    expiration  varchar(64),        #保质期
    capacity    varchar(64),        #容量
    degree     varchar(32)          #度数
);

INSERT INTO wine_pro values
        (null,'pro_ex.html?fid=1','红酒001','2800.00','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式','匈牙利','红葡萄酒',1100,'001','9个月','550ml及以上','15度'),
        (null,'pro_ex.html?fid=2','红酒002','3000.00','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式','法国','起泡酒/香槟',1500,'002','7个月','850ml及以上','11度'),
         (null,'pro_ex.html?fid=3','白葡萄酒003','3500.00','白葡萄酒，用优质葡萄酿制，参照国际名牌葡萄酒生产工艺，经发酵陈酿而成。酒度12%，糖分1．5%以下，卫生指标符合国家规定，酒液呈果绿色，清澈透明，气味清爽，酒香浓郁，回味深长，含有多种维生素，营养丰富，具有舒筋、活血、养颜、润肺之功效','澳大利亚','白葡萄酒',1560,'003','8个月','450ml及以上','10度'),
         (null,'pro_ex.html?fid=4','红葡萄酒004','3300.00','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式','澳大利亚','红葡萄酒',5500,'004','5个月','950ml及以上','15度'),
         (null,'pro_ex.html?fid=5','红葡萄酒005','4000.00','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式','法国','桃红葡萄酒',1300,'005','12个月','650ml及以上','13度'),
         (null,'pro_ex.html?fid=6','红葡萄酒006','4500.00','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式','中国','红葡萄酒',1760,'006','12个月','1200ml及以上','10度'),
         (null,'pro_ex.html?fid=7','起泡酒007','5000.00','所谓起泡酒，专业解释是在20℃时，二氧化碳压力大于1巴的葡萄酒。通俗的说就是会冒泡泡的酒。起泡酒是一种富含二氧化碳、适合于各种喜庆场合的酒种。起泡酒在欧洲都作餐前开胃酒，饮用前需冰镇至8~12度为佳。而对于口味偏重的美国人，他们又偏向于饭后搭配甜点来饮用。多数人饮用起泡酒会选择细高个的香槟杯，这样可以细致地观赏到汽泡的层次，但是窄小的杯口却让人无法尽情领略起泡酒的迷人香味，推荐使用瓶口稍宽的郁金香杯','法国','起泡酒/香槟',7560,'007','6个月','950ml及以上','13度'),
         (null,'pro_ex.html?fid=8','红葡萄酒008','5500.00','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式','西班牙','桃红葡萄酒',1060,'008','4个月','850ml及以上','12度'),
         (null,'pro_ex.html?fid=9','红葡萄酒009','4200.00','红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式','匈牙利','红葡萄酒',9500,'009','12个月','550ml及以上','11度'),
         (null,'pro_ex.html?fid=10','白葡萄酒010','4600.00','白葡萄酒，用优质葡萄酿制，参照国际名牌葡萄酒生产工艺，经发酵陈酿而成。酒度12%，糖分1．5%以下，卫生指标符合国家规定，酒液呈果绿色，清澈透明，气味清爽，酒香浓郁，回味深长，含有多种维生素，营养丰富，具有舒筋、活血、养颜、润肺之功效','澳大利亚','白葡萄酒',7000,'010','7个月','1000ml及以上','13度'),
         (null,'pro_ex.html?fid=11','冰纯嘉士伯啤酒','156.00','冰纯嘉士伯是一款绝对迎合消费者所需的潮流型啤酒。为了提供独特的啤酒体验和冰爽清纯的口味，嘉士伯公司运用科学创新的啤酒工艺，配合最好的原材料（还原酒花浸膏）研发出冰纯嘉士伯这款世界公认的优质啤酒','中国','啤酒',6731,'011','9个月','600ml及以上','10度'),
         (null,'pro_ex.html?fid=12','王祖烧坊酱香窖藏酒·深邃1000ml(6瓶装）','399.00','白酒为中国特有的一种蒸馏酒，是世界六大蒸馏酒（白兰地Brandy、威士忌Whisky、伏特加Vodka、金酒Gin、朗姆酒Rum、中国白酒Liquor and Spirits）之一，由淀粉或糖质原料制成酒醅或发酵后经蒸馏而得','中国大陆','白酒',9760,'012','8个月','1000ml及以上','53度'),
         (null,'pro_ex.html?fid=13','(清仓)52°泸州老窖·龙香醇999ml（4瓶装）','528.00','泸州老窖酒，有着“四百年老窖飘香、九十载金牌不倒”之美誉；1952年在全国首届评酒会上与茅台、西凤、汾酒一道被评为中国“最古老的四大名酒”，并确定为浓香型的典型代表。其酿造工艺、酒质特点、香味风格，成为浓香型白酒的生产标准，检验标准，故浓香型白酒又称“泸型酒”；该产品以其“醇香浓郁、清冽甘爽、回味悠长、饮后尤香”的风格特点响誉世界','中国','白酒',5760,'013','12个月','999ml及以上','52度'),
         (null,'pro_ex.html?fid=14','45°泸州泸名 名窖尚品500ml（4瓶装）+45°泸州泸名 名窖尚品500ml（乐享）（双瓶装）','399.00','泸州老窖酒的酿造技艺，发源于古江阳，是在秦汉以来的川南酒业发展这一特定历史时空氛围下，逐渐孕育，兴于唐宋，并在元、明、清三代得以创制、雏型、定型及成熟的。两千年来，世代相传，形成了独特的、举世无双的酒文化','中国','白酒',29483,'014','10个月','500ml及以上','45度'),
         (null,'pro_ex.html?fid=15','52°泸州老窖封藏老酒福运双禧1800ml','129.00','泸州原浆酒是在泸州老窖传统酿造工艺基础上，酿酒师采用分层堆糟、蒸馏中层、取中层中段酒的酿制手法，得到最精华、口感最适中的原浆美酒，然后经过贮藏使其自然老熟。口感窖香浓郁，口味丰满，干净纯正。是集营养、健康、时尚、美味、高雅、高质六大优势为一身的高品质健康酒','中国','原浆酒',30852,'015','24个月','1800ml及以上','52度'),
         (null,'pro_ex.html?fid=16','(清仓)52°泸州老窖龙香醇·绵藏礼盒800ml*2（献礼版）','89.00','龙香醇系列酒一脉相承，在独特的酿酒龙脉上选用上乘优质的龙泉井水经泸州老窖传统酿造技艺酿造出的优质白酒，再经洞藏储存、精心勾调成为浓香型白酒典范，至此“龙香醇”系列白酒孕育而出，这就是泸州老窖股份有限公司推出的一款浓香型白酒代表之作—龙香醇','中国','白酒',11711,'016','12个月','800ml及以上','52度'),
         (null,'pro_ex.html?fid=17','（清仓）53°汾酒集团千秋老酒(唐宋元明清)礼盒245ml*5','179.00','千秋老酒采用中国酒文化最著名、最典型的 黑陶制品为酒具，使古老的酒文化和瓷文化得以完美的展现。千秋老酒，采用传统的酿造工艺，顾而酒质清香纯正，棉柔悠长。因黑陶能隔绝紫外线辐射，对酒质保护极好，且装之陈年老酒，使得千秋汾酒越放越陈、其口味更佳','中国','千秋老酒',2905,'017','9个月','245ml及以上','53度'),
         (null,'pro_ex.html?fid=18','(清仓)52°酒鬼酒（天工开物）','229.00','酒鬼酒产品系列主要有：酒鬼酒、湘泉酒、内参酒、湘泉原浆、洞藏文化酒、52度酒鬼酒、封坛年份酒二十年、洞藏文化酒、湘泉锦绣潇湘酒12年、封坛年份酒十五年、湘泉王、内参等系列白酒产品','中国','白酒',44853,'018','10个月','1000ml及以上','52度'),
         (null,'pro_ex.html?fid=19','52五岭洞藏黑金刚1500ml(双瓶装）','139.00','五岭洞藏黑金刚酒是一款来自安徽古井镇的浓香美酒，该酒净含量为1500ML，规格为1*6瓶。一经推出市场就受到了高度推崇，有“2015尖叫巨作”之称。瓶身和整个设计直观该酒堪称高端、大气、上档次之作','中国','金刚酒',14361,'019','16个月','1500ml及以上','52度'),
          (null,'pro_ex.html?fid=20','52°沙漠春兰亭颂10000ml','699.00','沙漠春兰亭颂酒以超然的艺术气息致胜，周身洋溢着生气勃勃的气息，富有创造精神。瓶子底部用诗词花瓣点缀，凸显了瓶身的淡雅，让人爱不释手；瓶身用一只黑白虾，为我们展示了一张极具特色的水墨画','中国','兰亭颂酒',3490,'020','10个月','1000ml及以上','52度'),
          (null,'pro_ex.html?fid=21','清仓45°诗仙太白山城小调100ml','15.00','诗仙太白山城小调裸瓶外观清新，透彻，让人一目了然的观察到清澈的酒体。由名师亲选五谷之精华，在古窖池中发酵而成，酒液具有纯香、绵柔、恬静等口感，是一款可与朋友小酌的佳酿','中国','白酒',5297,'021','36个月','100ml及以上','45度'),
          (null,'pro_ex.html?fid=22','(清仓)50°悟界酒缘悟界酒缘250ml','69.00','悟界酒是一种以佛祖的头像作为象征的一种酒,给人一个视觉上的体验','中国','白酒',5645,'022','24个月','250ml及以上','50度'),
          (null,'pro_ex.html?fid=23','40°水晶头骨伏特加50ml（微时代）','159.00','Crystal Head Vodka水晶头骨伏特加由好莱坞老牌影星Dan Aykroyd和资深雕刻艺术大师John Alexander于2008年携手打造的，其灵感源于“13个水晶骷髅头”的传说。','美国','白酒',3225,'023','48个月','50ml及以上','40度'),
          (null,'pro_ex.html?fid=24','60°双龙飞天·青龙原浆5000ml（套装）','299.00','10斤大坛超值享，产自古井的好酒，景德镇的订制瓷瓶，镂空浮雕一体化的设计，送礼、收藏、聚饮都非常有面儿！每次库存都紧张，再不抢又得等好久！','中国安徽古井镇','原浆酒',10960,'024','长期保存','5000ml及以上','60度'),
          (null,'pro_ex.html?fid=25','42°国帅中国韵.八宝福佑500ml*2','699.00','中国韵·八宝福佑酒分为两瓶，一个为上善若水，另一个为厚德载物。传递八方福气，润泽万物佳人','中国','白酒',2112,'025','12个月','500ml及以上','42度'),
          (null,'pro_ex.html?fid=26','52°五粮液股份公司戎威胜利大阅兵系列酒500ml*6','789.00','为纪念2015年9月3号，反法西斯胜利抗战70周年大阅兵五粮源股份有限公司推出的一款纪念酒，也是国务院批准首次已军事为题材的一款军队内供纪念酒。','中国','白酒',9652,'026','9个月','500ml及以上','52度'),
          (null,'pro_ex.html?fid=27','【洋酒特卖】41度梅赛宝威士忌酒正品洋酒高端威士忌700ML 送木礼盒','59.00','威士忌(WHISKY)是一种由大麦、黑麦、燕麦、小麦、玉米等谷物为原料，经发酵、蒸馏后放入橡木桶中陈酿多年后，调配成43度左右的烈性蒸馏酒。英国人称之为“生命之水”。威士忌酒是勾兑而成的一种酒精饮料','英国','白酒',4946,'027','12个月','700ml及以上','41度'),
          (null,'pro_ex.html?fid=28','40°英国格兰菲迪12年单一纯麦威士忌700ml','195.00','威士忌(WHISKY)是一种由大麦、黑麦、燕麦、小麦、玉米等谷物为原料，经发酵、蒸馏后放入橡木桶中陈酿多年后，调配成43度左右的烈性蒸馏酒。英国人称之为“生命之水”。威士忌酒是勾兑而成的一种酒精饮料','英国','白酒',587,'028','36个月','700ml及以上','40度'),
           (null,'pro_ex.html?fid=29','法国拉菲集团罗斯柴尔德天然香槟750ml（ASC正品行货）','498.00','吴奇隆与刘诗诗婚宴用酒，罗斯柴尔德香槟的每一款都具有优质香槟的独特个性。这款天然香槟浓郁、复杂、轻盈。由来自香槟区优质土壤资源的莎当尼、黑皮诺和莫尼耶皮诺葡萄混合酿制，并至少存酿3年','法国','香槟',1287,'029','12个月','750ml及以上','10度'),
           (null,'pro_ex.html?fid=30','46°五粮液股份干一杯100ml（2013年）*6','99.00','五粮液用小麦、大米、玉米、高粱、糯米5种粮食发酵酿制而成，在中国浓香型酒中独树一帜。宋代宜宾姚氏家族私坊酿制，采用大豆、大米、高粱、糯米、荞子五种粮食酿造的“姚子雪曲”是五粮液最成熟的雏形','中国','酿酒',5276,'030','24个月','100ml及以上','46度');


create table wine_pic(
    pid  int primary key AUTO_INCREMENT,
    fid  int,
    sm  varchar(128),
    md  varchar(128),
    lg  varchar(128)
);

INSERT INTO wine_pic values
            (null,1,'img/small_product/001.jpg','img/middle_product/001.jpg','img/large_product/001.jpg'),
            (null,2,'img/small_product/002.jpg','img/middle_product/002.jpg','img/large_product/002.jpg'),
             (null,3,'img/small_product/003.jpg','img/middle_product/003.jpg','img/large_product/003.jpg'),
            (null,4,'img/small_product/004.jpg','img/middle_product/004.jpg','img/large_product/004.jpg'),
            (null,5,'img/small_product/005.jpg','img/middle_product/005.jpg','img/large_product/005.jpg'),
            (null,6,'img/small_product/006.jpg','img/middle_product/006.jpg','img/large_product/006.jpg'),
            (null,7,'img/small_product/007.jpg','img/middle_product/007.jpg','img/large_product/007.jpg'),
            (null,8,'img/small_product/008.jpg','img/middle_product/008.jpg','img/large_product/008.jpg'),
            (null,9,'img/small_product/009.jpg','img/middle_product/009.jpg','img/large_product/009.jpg'),
            (null,10,'img/small_product/010.jpg','img/middle_product/010.jpg','img/large_product/010.jpg'),
            (null,11,'img/small_product/011_1.jpg','img/middle_product/011_1.jpg','img/large_product/011_1.jpg'),
            (null,11,'img/small_product/011_2.jpg','img/middle_product/011_2.jpg','img/large_product/011_2.jpg'),
            (null,11,'img/small_product/011_3.jpg','img/middle_product/011_3.jpg','img/large_product/011_3.jpg'),
            (null,11,'img/small_product/011_4.jpg','img/middle_product/011_4.jpg','img/large_product/011_4.jpg'),
             (null,12,'img/small_product/012_1.jpg','img/middle_product/012_1.jpg','img/large_product/012_1.jpg'),
              (null,12,'img/small_product/012_2.jpg','img/middle_product/012_2.jpg','img/large_product/012_2.jpg'),
               (null,12,'img/small_product/012_3.jpg','img/middle_product/012_3.jpg','img/large_product/012_3.jpg'),
                (null,12,'img/small_product/012_4.jpg','img/middle_product/012_4.jpg','img/large_product/012_4.jpg'),
                 (null,13,'img/small_product/013_1.jpg','img/middle_product/013_1.jpg','img/large_product/013_1.jpg'),
                  (null,13,'img/small_product/013_2.jpg','img/middle_product/013_2.jpg','img/large_product/013_2.jpg'),
                   (null,13,'img/small_product/013_3.jpg','img/middle_product/013_3.jpg','img/large_product/013_3.jpg'),
                    (null,13,'img/small_product/013_4.jpg','img/middle_product/013_4.jpg','img/large_product/013_4.jpg'),
                     (null,14,'img/small_product/014_1.jpg','img/middle_product/014_1.jpg','img/large_product/014_1.jpg'),
                      (null,14,'img/small_product/014_2.jpg','img/middle_product/014_2.jpg','img/large_product/014_2.jpg'),
                       (null,14,'img/small_product/014_3.jpg','img/middle_product/014_3.jpg','img/large_product/014_3.jpg'),
                        (null,14,'img/small_product/014_4.jpg','img/middle_product/014_4.jpg','img/large_product/014_4.jpg'),
                         (null,15,'img/small_product/015_1.jpg','img/middle_product/015_1.jpg','img/large_product/015_1.jpg'),
                          (null,15,'img/small_product/015_2.jpg','img/middle_product/015_2.jpg','img/large_product/015_2.jpg'),
                           (null,15,'img/small_product/015_3.jpg','img/middle_product/015_3.jpg','img/large_product/015_3.jpg'),
                            (null,15,'img/small_product/015_4.jpg','img/middle_product/015_4.jpg','img/large_product/015_4.jpg');





