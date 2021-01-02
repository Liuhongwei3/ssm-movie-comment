/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : ssm_example

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 26/12/2020 23:54:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '666666');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `comment_vid` int NOT NULL,
  `comment_uname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`, `comment_vid`, `comment_uname`) USING BTREE,
  INDEX `cvid`(`comment_vid`) USING BTREE,
  INDEX `cuname`(`comment_uname`) USING BTREE,
  CONSTRAINT `cuname` FOREIGN KEY (`comment_uname`) REFERENCES `user` (`user_name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cvid` FOREIGN KEY (`comment_vid`) REFERENCES `movie` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, 'tadm', '期待三年的电影，开场三秒就已经被带进了oasis。斯皮尔伯格已经72岁了，72岁了，又把小说改编成了电影神作。阿基拉、闪灵、异形、金刚、侏罗纪、银河系漫游指南、starwar、DC、Marvel、甚至守望先锋和吃鸡...影片本身就是彩蛋。感觉不管是影迷、游戏迷、动漫迷还是科幻迷，都能在《头号玩家》中找到燃点泪点。佩服老头的想象力，实在是太过瘾了...打分？感觉是侮辱', '2018-03-30 11:08:33');
INSERT INTO `comment` VALUES (2, 1, 'tadm', '震惊了！看完发现大boss既然是腾讯爸爸', '2020-12-09 23:09:19');
INSERT INTO `comment` VALUES (6, 1, 'tadm2', '不需要言语表达的好看！简直是漫迷、影迷、游戏迷的盛宴各种彩蛋和梗接种而来真的让人眼花缭乱到产生共鸣！看的时候使劲的在鼓掌！而路人则会觉得娱乐性极高！这次的观影体验让我非常享受！这个周末打算在刷一遍！老斯真的是商业片中的艺术大师！这种电影只有老斯能拍出来！推荐给所有人看！无论是路人、漫迷、影迷还是游戏迷都会有很好的观影体验！ 最后推荐你们去看看《闪灵》这部恐怖电影，喜欢看恐怖片的建议去看！', '2020-12-09 23:10:15');
INSERT INTO `comment` VALUES (7, 1, 'tadm6', '胡说几句。 我看到有人说这个故事蛮俗套的，其实俗套也是好莱坞的一部分 。这个把巨量美国流行文化元素——其中大部分是中国人翻遍大脑也找不到记忆坐标的东西——糅合进快速画面切换，现实游戏交叉结合又不断升级的两个小时电影里面，其承载的信息量可能是重压，是障碍，也可能是快感。这不像是给你一块蛋糕，你立马就能判断它好不好吃。 斯皮尔伯格应该是找到了他的快感，在肆意张扬的想象里有他的童心。当然还有表达对虚拟世界的反思，维权体制的对抗，梦想的追求，还有勇敢爱你身边的人，其实这也是他的俗套，这些你会拒绝吗。我们总不能指望他弄个《厉害了，我的美国》。3D效果真的不错。画面还是略暗。值得感兴趣的朋友多刷。', '2020-12-09 23:10:41');
INSERT INTO `comment` VALUES (8, 2, 'tadm3', '超级好看！海王人气可以赶上大超！温子仁导演必须支持！！！在此立贴为证：海王将成为dc抗衡漫威的重要人气角色！会成为dc除超人外最聚人气英雄！祝大卖！强烈推荐观看！赞同的兄弟把我顶上去！', '2018-12-09 23:28:13');
INSERT INTO `comment` VALUES (9, 2, 'tadm3', '《海王》一部电影带你重温《驯龙高手》《变形金刚》《星球大战》《星河战队》《铁血战士》《安德的游戏》《异形》可能还借鉴了对手的《钢铁侠》与《黑豹》剧情，再稍稍带一点《大鱼海棠》的味道，配上一丢丢温子仁式恐怖片套路，优秀的商业片，应该是DC年度最佳了。温子仁，优秀的集大成者。 缺点很明显，没剧情，海王角色特征性一般', '2020-12-09 23:28:48');
INSERT INTO `comment` VALUES (10, 2, 'tadm4', '零点场刚看完，温导的电影一直很不错，无论是速7，电锯惊魂还是招魂都很棒。打斗和音效方面没话说非常棒，特别震撼。总之，dc扳回一分（￣▽￣）。比正义联盟好的不止一点半点（我个人感觉）。还有艾梅伯希尔德是真的漂亮，温导选的人都很棒。', '2020-12-09 23:29:06');
INSERT INTO `comment` VALUES (11, 2, 'tadm5', 'IMAX厅效果就是爽，好看，温导???就是首映太困了???', '2020-12-09 23:29:27');
INSERT INTO `comment` VALUES (12, 3, 'tadm5', '希望林诣彬能够继续执导速激系列，如果没有他，这个系列走不到今天这一步，从第一部的小制作，到第二部的没落，再通过第三部和第四部练手，终于到第五六部把这个系列做成大片，这位华裔导演真的功不可没！ 提前续订这部2019年必看大片！！！', '2020-12-09 23:29:49');
INSERT INTO `comment` VALUES (13, 3, 'tadm', '没有杰森，和巨石强森，感觉少了些什么。速度与激情特别行动，就特别棒。飙车追逐感觉太炫了，还加进了些科幻进去。太牛了。希望速度9不要让人失望。', '2020-12-09 23:30:16');
INSERT INTO `comment` VALUES (14, 3, 'tadm2', '我现在多么希望两年后坐在我身旁的人还是你、 求祝福祈祷一波！', '2020-12-09 23:30:41');
INSERT INTO `comment` VALUES (15, 4, 'tadm', '无意中刷到这部电影被简介吸引买了首映，第二天就发现绿皮书斩获奥斯卡最佳影片，本担心剧情会过于主旋律，毕竟故事大概有关种族主义，但看完真是惊喜！影片并没有过度宣扬种族主义的负面情绪或把剧情搞得跌宕起伏惊险异常让两位男主在困境中激发友情，老徐从影片中看到的，是尊重与自我尊重。每个人生来独特，受教育不同，生活环境不同，必然会有不同的观念，无法改变他人的根深蒂固，却可以打破自我禁锢；对于不被尊重，选择暴力或忍让？还是自我尊重坚定立场？学会自我尊重，才懂得尊重与被尊重的可贵；两位男主通过这趟商旅相互影响，一个学会打开一个学会收敛，最暖心的，是即使身边可能有无数不理解不尊重你的人，也有愿意分享爱与笑容的人', '2020-12-09 23:31:03');
INSERT INTO `comment` VALUES (16, 4, 'tadm', '这应该是最接地气的奥斯卡最佳影片了，虽说是关于种族歧视的现实主义题材电影，但是却没有丝毫沉重感而看得很压抑，反而一些插科打诨的地方非常幽默搞笑。剧情方面，两位男主从不理解到彼此了解认知再到患难与共最后到共同欣赏全过程也反应了该片要表现的主题：不论是各种肤色，阶层，甚至性取向，人生来平等。而且片中许多细节值得反复推敲品味，最后的结局也是很温馨感人。完美佳作！', '2020-12-09 23:31:23');
INSERT INTO `comment` VALUES (17, 4, 'tadm3', '浓缩的改观之路，映射一生。以情动人，以细节取胜，因为不同，所以火花一路。', '2020-12-09 23:31:40');
INSERT INTO `comment` VALUES (18, 4, 'tadm6', '一部类似于《雷查尔斯》+《为奴十二年》的好电影， 精彩的对话、饱满的人物性格，诙谐中带着信仰。', '2020-12-09 23:32:04');
INSERT INTO `comment` VALUES (19, 1, 'tadm', 'add comm test1', '2020-12-10 20:11:39');
INSERT INTO `comment` VALUES (20, 1, 'tadm', 'add comm test2~', '2020-12-10 20:15:16');
INSERT INTO `comment` VALUES (21, 1, 'tadm', 'delete comm test1', '2020-12-10 20:41:47');
INSERT INTO `comment` VALUES (25, 1, 'tadm', 'add comm test2', '2020-12-10 21:44:10');
INSERT INTO `comment` VALUES (28, 1, 'tadm', 'add sth', '2020-12-10 22:34:03');
INSERT INTO `comment` VALUES (29, 8, 'tadm', 'this is a good comm~', '2020-12-13 18:44:10');
INSERT INTO `comment` VALUES (30, 8, 'tadm', 'this is test1', '2020-12-13 18:44:21');
INSERT INTO `comment` VALUES (32, 1, 'tadm', 'test new sth', '2020-12-26 19:24:17');
INSERT INTO `comment` VALUES (33, 1, 'tadm', 'wow so good from react', '2020-12-26 19:25:02');
INSERT INTO `comment` VALUES (34, 1, 'tadm', 'delete test1', '2020-12-26 19:25:17');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `movie_director` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movie_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `movie_actors` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movie_cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `movie_description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movie_rate` decimal(2, 1) NULL DEFAULT NULL,
  `movie_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movie_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`movie_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '头号玩家', '史蒂文·斯皮尔伯格', '动作 冒险 科幻', '泰伊·谢里丹，奥利维亚·库克，西蒙·佩吉，本·门德尔森，马克·里朗斯', 'https://p0.meituan.net/movie/52c8c57caeeaacbeaa3d54eec62023fd483970.jpg@464w_644h_1e_1c', '故事发生在2045年，虚拟现实技术已经渗透到了人类生活的每一个角落。詹姆斯哈利迪（马克·里朗斯 Mark Rylance 饰）一手建造了名为“绿洲”的虚拟现实游戏世界，临终前，他宣布自己在游戏中设置了一个彩蛋，找到这枚彩蛋的人即可成为绿洲的继承人。要找到这枚彩蛋，必须先获得三把钥匙，而寻找钥匙的线索就隐藏在詹姆斯的过往之中。 韦德（泰尔·谢里丹 Tye Sheridan 饰）、艾奇（丽娜·维特 Lena Waithe 饰）、大东（森崎温 饰）和修（赵家正 饰）是游戏中的好友，和之后遇见的阿尔忒弥斯（奥利维亚·库克 Olivia Cooke 饰）一起，五人踏上了寻找彩蛋的征程。他们所要对抗的，是名为诺兰索伦托（本·门德尔森 Ben Mendelsohn 饰）的大资本家。', 4.0, '美国 / 140分钟\r\n', '2018-03-30中国大陆上映');
INSERT INTO `movie` VALUES (2, '海王', '温子仁', '动作 冒险 奇幻', '杰森·莫玛，艾梅柏·希尔德，帕特里克·威尔森，叶海亚·阿卜杜勒-迈丁', 'https://p0.meituan.net/movie/c106904da68edd848afd4a320976d051346321.jpg@464w_644h_1e_1c', '许多年前，亚特兰蒂斯女王（妮可·基德曼 Nicole Kidman 饰）和人类相知相恋，共同孕育了爱情的结晶——后来被陆地人称为海王的亚瑟·库瑞（杰森·莫玛 Jason Momoa 饰）。在成长的过程中，亚瑟接受海底导师维科（威廉·达福 Willem Dafoe 饰）的严苛训练，时刻渴望去看望母亲，然而作为混血的私生子这却是奢望。与此同时，亚瑟的同母异父兄弟奥姆（帕特里克·威尔森 Patrick Wilson 饰）成为亚特兰蒂斯的国王，他不满陆地人类对大海的荼毒与污染，遂谋划联合其他海底王国发动对陆地的全面战争。为了阻止他的野心，维科和奥姆的未婚妻湄拉（艾梅柏·希尔德 Amber Heard 饰）将亚瑟带到海底世界。 宿命推动着亚瑟，去寻找失落已久的三叉戟，建立一个更加开明的海底王国……', 4.3, '美国 / 137分钟', '2018-12-07中国大陆上映');
INSERT INTO `movie` VALUES (3, '速度与激情9', '林诣彬', '动作 犯罪', '范·迪塞尔、泰瑞斯·吉布森、卢卡斯·布莱克、查理兹·塞隆', 'https://p0.meituan.net/movie/5c858e2f34fdd995f5ccb05c4f6c9f56350665.jpg@464w_644h_1e_1c', '范·迪塞尔饰演的唐老大多姆·托莱多，与莱蒂和他的儿子小布莱恩，过上了远离纷扰的平静生活。然而他们也知道，安宁之下总潜藏着危机。这一次，为了保护他所爱的人，唐老大不得不直面过去。他和伙伴们面临的是一场足以引起世界动荡的阴谋，以及一个前所未遇的一流杀手和高能车手。而这个名叫雅各布（约翰·塞纳饰，《自杀小队2》）的人，恰巧是多姆遗落在外的亲弟弟。', 4.5, '美国 / 138分钟', '2021中国大陆上映');
INSERT INTO `movie` VALUES (4, '绿皮书', '彼得·法雷里', '剧情 喜剧 传记', '维果·莫腾森、马赫沙拉·阿里、琳达·卡德里尼、塞巴斯蒂安·马尼', 'https://p1.meituan.net/movie/c9b280de01549fcb71913edec05880585769972.jpg@464w_644h_1e_1c', '托尼（维果·莫腾森 Viggo Mortensen 饰）是一个吊儿郎当游手好闲的混混，在一家夜总会做侍者。这间夜总会因故要停业几个月，可托尼所要支付的房租和生活费不会因此取消，所以他的当务之急是去寻找另一份工作来填补这几个月的空缺。在这个节骨眼上，一位名叫唐雪莉（马赫沙拉·阿里 Mahershala Ali 饰）的黑人钢琴家提出雇佣托尼。 唐雪莉即将开始为期八个星期的南下巡回演出，可是，那个时候南方对黑人的歧视非常的严重，于是托尼便成为了唐雪莉的司机兼保镖。一路上，两人迥异的性格使得他们之间产生了很多的矛盾，与此同时，唐雪莉在南方所遭受的种种不公平的对待也让托尼对种族歧视感到深恶痛绝。', 4.5, '美国 / 130分钟', '2019-03-01中国大陆上映');
INSERT INTO `movie` VALUES (6, '1001', 'Tadm', '1', '1', 'https://i.loli.net/2020/02/28/2OPSFfaL73QIizV.jpg', 'It\'s so cool, After some days tadm finish a movie-comment-sys at last!', 1.0, '120分钟', '2020年12月13日 中国');
INSERT INTO `movie` VALUES (8, 'good', 'tadm', '11', '11', 'https://i.loli.net/2020/02/28/2OPSFfaL73QIizV.jpg', '111111', 5.0, '120分钟', '今天');
INSERT INTO `movie` VALUES (9, '342332', '3453', '123123', '34343', '34434', '33443', 4.0, '34344', '3445');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `user_name`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'tadm', '男', '123456');
INSERT INTO `user` VALUES (2, 'tadm2', '女', '222222');
INSERT INTO `user` VALUES (3, 'tadm3', '男', '111111');
INSERT INTO `user` VALUES (4, 'tadm4', '密', '112233');
INSERT INTO `user` VALUES (5, 'tadm5', '密', '11223344');
INSERT INTO `user` VALUES (6, 'tadm6', '女', '112223');
INSERT INTO `user` VALUES (7, 'tadm7', '女', '111777');
INSERT INTO `user` VALUES (8, 'tadm6', '男', '112223');
INSERT INTO `user` VALUES (13, 'tadm6', '男', '112223');
INSERT INTO `user` VALUES (15, 'tadm200', '女', '1323232');
INSERT INTO `user` VALUES (16, 'tadm666', '男', '123456');
INSERT INTO `user` VALUES (17, 'tadm1226', '男', '1234567');
INSERT INTO `user` VALUES (18, 'tadm-admin', '男', '2343423432');

SET FOREIGN_KEY_CHECKS = 1;
