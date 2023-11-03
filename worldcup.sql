/*
 Navicat Premium Data Transfer

 Source Server         : WorldCup
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : worldcup

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 21/12/2022 16:37:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '男' COMMENT '性别',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/images/avatar/default.jpg' COMMENT '头像',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册邮箱',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '登录时间',
  `login_count` bigint NOT NULL DEFAULT 1 COMMENT '登录次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '超级管理员', '男', '/images/avatar/default.jpg', '13475829262', NULL, '2019-05-14 20:39:31', '2021-03-17 09:07:48', 124);

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `country_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('荷兰', 'img/schedule/flag-1.jpg', 'A', 7);
INSERT INTO `country` VALUES ('塞内加尔', 'img/schedule/flag-2.jpg', 'A', 6);
INSERT INTO `country` VALUES ('厄瓜多尔', 'img/schedule/flag-3.jpg', 'A', 4);
INSERT INTO `country` VALUES ('英格兰', 'img/schedule/flag-5.jpg', 'B', 7);
INSERT INTO `country` VALUES ('美国', 'img/schedule/flag-6.jpg', 'B', 5);
INSERT INTO `country` VALUES ('卡塔尔', 'img/schedule/flag-4.jpg', 'A', 0);
INSERT INTO `country` VALUES ('伊朗', 'img/schedule/flag-7.jpg', 'B', 3);
INSERT INTO `country` VALUES ('威尔士', 'img/schedule/flag-8.jpg', 'B', 1);
INSERT INTO `country` VALUES ('阿根廷', 'img/schedule/flag-9.jpg', 'C', 6);
INSERT INTO `country` VALUES ('波兰', 'img/schedule/flag-10.jpg', 'C', 4);
INSERT INTO `country` VALUES ('墨西哥', 'img/schedule/flag-11.jpg', 'C', 4);
INSERT INTO `country` VALUES ('沙特阿拉伯', 'img/schedule/flag-12.jpg', 'C', 3);
INSERT INTO `country` VALUES ('法国', 'img/schedule/flag-13.jpg', 'D', 6);
INSERT INTO `country` VALUES ('澳大利亚', 'img/schedule/flag-14.jpg', 'D', 6);
INSERT INTO `country` VALUES ('突尼斯', 'img/schedule/flag-15.jpg', 'D', 4);
INSERT INTO `country` VALUES ('丹麦', 'img/schedule/flag-16.jpg', 'D', 1);
INSERT INTO `country` VALUES ('日本', 'img/schedule/flag-17.jpg', 'E', 6);
INSERT INTO `country` VALUES ('西班牙', 'img/schedule/flag-18.jpg', 'E', 4);
INSERT INTO `country` VALUES ('德国', 'img/schedule/flag-19.jpg', 'E', 4);
INSERT INTO `country` VALUES ('哥斯达黎加', 'img/schedule/flag-20.jpg', 'E', 3);
INSERT INTO `country` VALUES ('摩洛哥', 'img/schedule/flag-21.jpg', 'F', 7);
INSERT INTO `country` VALUES ('克罗地亚', 'img/schedule/flag-22.jpg', 'F', 5);
INSERT INTO `country` VALUES ('比利时', 'img/schedule/flag-23.jpg', 'F', 4);
INSERT INTO `country` VALUES ('加拿大', 'img/schedule/flag-24.jpg', 'F', 0);
INSERT INTO `country` VALUES ('巴西', 'img/schedule/flag-25.jpg', 'G', 6);
INSERT INTO `country` VALUES ('瑞士', 'img/schedule/flag-26.jpg', 'G', 6);
INSERT INTO `country` VALUES ('喀麦隆', 'img/schedule/flag-27.jpg', 'G', 4);
INSERT INTO `country` VALUES ('塞尔维亚', 'img/schedule/flag-28.jpg', 'G', 1);
INSERT INTO `country` VALUES ('葡萄牙', 'img/schedule/flag-29.jpg', 'H', 6);
INSERT INTO `country` VALUES ('韩国', 'img/schedule/flag-30.jpg', 'H', 4);
INSERT INTO `country` VALUES ('乌拉圭', 'img/schedule/flag-31.jpg', 'H', 4);
INSERT INTO `country` VALUES ('加纳', 'img/schedule/flag-32.jpg', 'H', 3);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `newsID` int NULL DEFAULT NULL,
  `newsName` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsIntro` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `news` varchar(10240) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '梅西追上了8年前的高峰，期待下一战圆梦 ', '在卡塔尔的，是一支最团队的阿根廷，打造了最合适梅西的体系。6场5球3助攻，这是梅西一个人的世界杯。距离冠军只有一步之遥，期待下一站圆梦。', '4年之后，梅西的主帅变成了马拉多纳，这原本在阿根廷人看来是完美的传承，但在实战中，一个太“信任”梅西的前辈，会让他有些不堪重负。\r\n\r\n因为马拉多纳觉得梅西可以跟自己一样，在前腰的位置上组织、进球一把抓，但22岁的梅西还是太年轻了，无法真正踢好中场的角色。\r\n\r\n\r\n\r\n或许马拉多纳也忘记了，21岁的自己在1982年世界杯上同样遭遇失败，甚至因为不冷静拿到红牌，一度被国家队雪藏。\r\n\r\n那会儿在哈维和伊涅斯塔身边，只需要做好进球和带球突破的梅西，对于组织的理解，就是义无反顾地带球过人。\r\n\r\n然而太长的带球距离，也会降低梅西的射门精度。尽管他完全破防之后，也会让队友获得补射的机会。\r\n\r\n又有几个人会记得梅西一己之力制造出机会，却都在讨论梅西没能收获进球，顶多哀叹一句：可惜打在了门柱上。\r\n\r\n不过踢着踢着，梅西总会觉得不对劲。如果说面对弱队，他可以一个人连续破防，那么进入淘汰赛，事情就不再如此容易。\r\n\r\n与德国队的8强战上，马拉多纳更是摆出一个424的进攻阵型，当迪马利亚都前插时，梅西发觉自己的身前都是队友，却没有一个能跟他打出撞墙配合。\r\n\r\n\r\n\r\n当时梅西在过人、射门和传球的选择上还没有那么好，让他来统领一群前锋是有点拔苗助长了。\r\n\r\n22到23岁的生日，在世界杯赛场度过，却没有多少甜蜜。又一次止步8强，梅西需要再等上4年，期待着能够遇到一名更好的教练和一个更合适他的团队。\r\n\r\n02. 从世界杯亚军，到又一次遇到糟糕的教练\r\n\r\na. 2014年的梅西：距离登顶只差一步之遥\r\n\r\n从2014年到2016年，梅西连续3次带领阿根廷杀入决赛，最终却都功亏一篑。那是球队实力最巅峰的3年，却总差那么一口气。\r\n\r\n或许很多人会责怪伊瓜因，不过除了决赛浪费机会，这名射手在之前的比赛中，依旧是球队的晋级功臣。\r\n\r\n\r\n\r\n在2014年世界杯上，阿根廷踢出了很好的梅西体系，他的第一个进球，就是伊瓜因助攻梅西完成。\r\n\r\n前者在中圈过度后前插，又在肋部给跟进的梅西做球，后者完成穿花绕步的盘带后，用一记低射开启了阿根廷冲向决赛的路。\r\n\r\n带着小组赛的4个进球，梅西和阿根廷以3连胜的姿态进入淘汰赛。不曾想第一场就遇到了恶战，加上补时，瑞士人坚守了差不多120分钟，结果被梅西的突然爆发所击垮。', 'img/15-0.png');
INSERT INTO `news` VALUES (2, '梅西上演“世纪助攻” 阿根廷大胜克罗地亚晋级决赛', '犹如天神下凡，梅西在13日进行的卡塔尔世界杯半决赛中传射建功，率领阿根廷队以3:0大胜克罗地亚队，自2014年后再次闯入世界杯决赛。', '12月13日，阿根廷队球员梅西（右）在比赛中主罚点球得分后庆祝。新华社记者 李尕 摄\r\n\r\n　　阿根廷传奇马拉多纳在1986年世界杯的长途奔袭破门被称为“世纪进球”，梅西当天则完成了一次“世纪助攻”。梅西在下半场展示了自己魔法一般的盘带技术，在防守球员的贴身紧逼下，他从中场位置沿右路边线带球突破至对方禁区，妙传阿尔瓦雷斯为阿根廷队打入锁定胜局的一球。\r\n\r\n　　梅西本场在个人数据方面可谓三喜临门。他在上半场罚入点球，打进个人在世界杯上的第11粒进球，成为阿根廷队世界杯进球最多的球员；这也是他出战的第25场世界杯比赛，和德国传奇球星马特乌斯并列成为世界杯参赛场次最多的球员；本届世界杯梅西目前斩获5球并送出3次助攻，暂时比同样打入5球的法国队前锋姆巴佩多一次助攻，这是他五次参加世界杯进球最多的一届。\r\n\r\n\r\n12月13日，阿根廷队球员梅西（左二）在比赛中拼抢。新华社记者 潘昱龙 摄\r\n\r\n　　22岁的阿尔瓦雷斯当天独中两元表现抢眼，个人在本届赛事已有4球入账，在接到梅西的助攻破门之前，他不仅创造了阿根廷队打破僵局的点球，还单骑闯关打入一粒进球。\r\n\r\n　　此役是阿根廷队第五次亮相世界杯半决赛，五次全部胜出。\r\n\r\n　　比赛前20分钟双方踢得比较谨慎，都未能创造出有威胁的射门。第32分钟，恩佐·费尔南德斯中场传出过顶球，阿尔瓦雷斯高速插入禁区一脚挑射虽然没进，但因遭遇对手犯规，主裁判果断判罚点球，梅西主罚命中。\r\n\r\n\r\n12月13日，阿根廷队球员梅西（前）在比赛中主罚点球得分。新华社记者 徐子鉴 摄\r\n\r\n　　阿根廷队第39分钟发动反击，阿尔瓦雷斯从本方半场得球后带球突入对方禁区，虽然克罗地亚队球员在禁区内阻断了他的带球，但皮球又弹回他的脚下，阿尔瓦雷斯随即将比分扩大为2:0。上半场伤停补时，克罗地亚队有机会扳回一球，尤拉诺维奇的传中打在防守球员身上弹向球门，阿根廷队门将马丁内斯飞身化解险情。\r\n\r\n　　下半场阿根廷队立足防守，场面波澜不惊，直到梅西第69分钟上演个人盘带秀，沿右路边线处带球突入禁区，助攻阿尔瓦雷斯轻松推射破门。\r\n\r\n\r\n12月13日，阿根廷队球员阿尔瓦雷斯（前右）在比赛中进球后与队友梅西（前左）庆祝。新华社记者 徐子鉴 摄\r\n\r\n　　阿根廷队将在18日的决赛迎战法国队和摩洛哥队之间的胜者。', 'img/1.jpg');
INSERT INTO `news` VALUES (3, '法国队闯入四强，主帅德尚得到信任继续执教！', '2022卡塔尔世界杯开赛至今，法国队的表现非常的强势，一路过关斩将来到了4强之争。', '为了离大力神杯更近一步，球队近期也是在全力备战，迎接摩洛哥的挑战。虽然还没有确认捧杯，但球队也算是达到了预期的目标，取得四强位置，因此球队的主帅德尚也将继续得到国家队的信任，带领球队继续冲击更远的目标。\r\n\r\n\r\n不过，随着德尚确认继续执教法国队，那么也就意味着齐达内想在世界杯后执掌国家队基本没有了希望。据悉，齐达内为了等待法国足协的通知，而推掉了多支球队的邀请，其中就包括豪门巴黎圣日耳曼。\r\n\r\n\r\n在2018年，法国队捧起大力神杯之后，来到本届卡塔尔世界杯，法国足协就以四强为目标，如今已经得到实现。根据法国媒体的报道，只要法国完成闯入4强的目标，呢么主帅德尚就可以继续留在国家队执教，但是如果没能达成4强的目标，法国足协就有权在世界杯后进行换帅，将由齐达内去取代德尚的主帅位置。随着法国在8强以2比1击败英格兰之后晋级4强，因此德尚也就保住了主教练的位置，并且德尚本人也一直希望能够率队征战2024年欧洲杯。', 'img/2.jpg');
INSERT INTO `news` VALUES (4, '卡塔尔世界杯上的中国元素', '驱车行驶在卡塔尔首都多哈，主干道旁世界杯标识随处可见，路牌上醒目标注着世界杯各球场的方向，街头不时可见身着各色球衣的球迷。', '“这座体育场的建设显示了中国企业的能力和水平”\r\n\r\n一到多哈，记者便兑换了一些当地货币。10元面值的卡塔尔里亚尔纸币上，卢塞尔体育场的造型极为醒目。走出卢塞尔地铁站，被称为“金色之碗”的体育场映入眼帘。4200多个总面积约6万平方米的三角形单元铝板，分段拟合出碗形弧面。铜色圆形玻璃幕墙，斑斓的灯光，让夜间的卢塞尔体育场更显璀璨。\r\n\r\n卢塞尔体育场由中国铁建(8.350, -0.11, -1.30%)国际集团有限公司（以下简称“中国铁建”）承建，可容纳约9.2万名观众，承担世界杯半决赛、决赛、闭幕式等重要活动和赛事。\r\n\r\n在设计和建造过程中，项目团队克服各种难题、不断优化设计，保证了卢塞尔体育场建设的高质量。“卢塞尔体育场拥有复杂的外立面和屋面索膜结构，这座体育场的建设显示了中国企业的能力和水平。”卡塔尔世界杯组委会秘书长哈桑·阿勒萨瓦迪说。\r\n\r\n世界杯场馆运行所使用的绿电，全部来自多哈以西约80公里荒漠中的一排排太阳能(7.080, -0.05, -0.70%)电池板。哈尔萨电站是卡塔尔第一座非化石燃料电站，是该国推进“2030国家愿景”建设的重点项目。电站由中国电力建设集团承建，受到卡塔尔各界的好评。“哈尔萨电站的顺利建成、投产对卡塔尔新能源产业发展具有典型示范作用，也帮助卡塔尔政府实现了举办碳中和世界杯的承诺。”卡塔尔能源事务国务大臣萨阿德·卡比说。\r\n\r\n中国企业不仅在卡塔尔留下一个个高质量的建设项目，还为当地培训了大量人才。在卢塞尔体育场项目建设的5年多时间里，中国铁建和当地企业携手培养了200多名高级项目管理人员、500多名工程技术人员和7000多名熟练工人。如今，他们在卡塔尔和中东多个国家的不同项目上担当重任，有力促进了当地基础设施建设和经济社会发展。\r\n\r\n“中国产品种类多、质量好，受到消费者的喜爱”\r\n\r\n在多哈滨海大道附近的一家世界杯特许商品专卖店里，很多顾客正在挑选心仪的纪念品。冰箱贴、钥匙扣、马克杯、世界杯吉祥物毛绒玩具……琳琅满目的商品中，随处可见“中国制造”的身影。店员艾哈迈德告诉记者：“我们日常用的很多产品都是从中国进口的，中国产品种类多、质量好，受到消费者的喜爱。”\r\n\r\n在拉古纳购物中心，记者看到几名顾客正在向店员咨询电视机。“我之前买过一台海信电视机，用起来不错。这次我准备再买两台，放在店里用，方便顾客观看世界杯。”阿尔马利·库韦克经营一家小餐馆，有不少顾客希望边用餐边看世界杯。“和同类产品相比，中国电视机质量好、价格优，相信有了这两台电视机，来店里吃饭、看球的客人会更多。”\r\n\r\n在体育场周边，一辆辆客车在赛场、酒店之间穿梭，运送球迷、国际足联官员和媒体记者。中国制造的新能源客车是车队的主力军。2020年，中国宇通公司中标卡塔尔世界杯服务用车项目，加上后续订单，卡塔尔从中国进口了1500台客车，其中包括888台纯电动客车。针对卡塔尔温度高、风沙大的环境特点，设计团队专门开发和优化适配了车型，对空调、动力电池进行专门设计，电机配备了泥沙防护结构，使其能够更好适应当地环境。\r\n\r\n卡塔尔交通与通信大臣苏莱提表示，绿色和可持续发展是卡塔尔“2030国家愿景”的核心理念，中国制造的电动客车不仅为卡塔尔举办碳中和世界杯作出贡献，还将助力卡塔尔公共交通电动化和国家绿色发展战略。\r\n\r\n“为中卡关系发展提供了强劲动力”\r\n\r\n今年10月19日，来自中国四川的大熊猫“京京”和“四海”乘专机抵达多哈，这是大熊猫首次旅居中东地区。世界杯开幕前夕，“京京”和“四海”正式与公众见面。记者来到豪尔熊猫馆时，“京京”正悠闲地靠在木头旁咀嚼着竹子，“四海”骑在树杈上玩耍，它们在自己专属的生活区开启了新生活。\r\n\r\n世界杯期间，很多球迷提前订好票，来大熊猫馆转一圈。不少当地小朋友在家长的带领下来看大熊猫。“大熊猫太可爱了，我希望以后有机会到大熊猫的故乡看看。”来自约旦的小朋友欧贝德说。他的父亲穆罕默德告诉记者，欧贝德从小就喜欢大熊猫，经常看大熊猫相关的动漫。“因为喜欢大熊猫，他时不时问我一些关于中国的事情，我能感受到我们的文化中有很多共通之处。”', 'img/3.jpg');
INSERT INTO `news` VALUES (5, '凯恩点球踢飞毁掉一切，姆巴佩狂笑成世界杯经典一幕', '凯恩点球踢飞毁掉一切，姆巴佩狂笑成世界杯经典一幕', '作为本次比赛身价最高的球队，英格兰小组赛的表现非常强势，淘汰赛首轮完胜塞内加尔后，迎来了真正意义上的首次考验，面对法国队。此役英格兰队2度落后，凯恩2次获得点球，虽然第一次主罚命中，但第二次将点球踢飞，最终英格兰队出局！此时的姆巴佩，笑得非常开心，这成为了世界杯经典瞬间。英格兰队止步八强！1966年，英格兰队唯一一次拿下世界杯冠军，之后再也没有进入到决赛，上届比赛，英格兰进入四强获得第四名，去年欧洲杯英格兰则是进入决赛获得亚军，似乎即将突破瓶颈拿下大赛冠军了，但是没那么容易！英格兰队，最终还是停下了脚步。\r\n\r\n凯恩此役是功臣也是罪人，第一次主罚点球命中，打入国家队第53球，追平鲁尼并列英格兰队史射手榜第一，但是，凯恩的确也在压力下罚丢了第二次点球，这一刻，凯恩和很多在世界杯舞台的超级巨星一样，在12码前留下了永恒的遗憾。', 'img/4.jpg');
INSERT INTO `news` VALUES (6, '世界杯四强诞生！这4队国足全赢过', '战胜英格兰之后，法国成为最后一支晋级世界杯四强的球队。有趣的是，国足也成了唯一一支战胜过本届世界杯四强的亚洲球队。', '本届世界杯冷门迭出，在世界杯八强战里，克罗地亚在点球决战里战胜了巴西，摩洛哥则完胜葡萄牙。最终，克罗地亚、阿根廷、摩洛哥、法国晋级世界杯四强。\r\n\r\n令人惊讶的是，国足曾经战胜过这四支球队，也成为唯一一支曾经战胜过这四支球队的亚洲球队。1977年6月25日，在长城杯四分之一决赛里，国足与摩洛哥在90分钟之内以2比2战平，在加时赛里，国足打入绝杀，最终以3比2战胜了摩洛哥。', 'img/5.jpg');
INSERT INTO `news` VALUES (7, '法国2-1淘汰英格兰晋级4强', '法国队晋级4强！卫冕冠军在英法大战上笑到最后，法国队在半决赛上将对阵黑马摩洛哥队，实力明显占优的高卢雄鸡，有很大机会连续2届进入世界杯决赛。', '英格兰(433)：\r\n\r\n门将：1-皮克福德\r\n\r\n后卫：2-沃克、5-斯通斯(7-格拉利什98\')、6-马奎尔、3-卢克肖\r\n\r\n中场：8-亨德森(19-芒特79\')、4-赖斯、22-贝林厄姆\r\n\r\n前锋：20-福登(11-拉什福德85\')、9-凯恩、17-萨卡(10-斯特林79\')\r\n\r\n法国(4231)：\r\n\r\n门将：1-洛里\r\n\r\n后卫：5-孔德、4-瓦拉内、18-于帕梅卡诺、22-特奥\r\n\r\n后腰：8-琼阿梅尼、14-拉比奥\r\n\r\n中场：11-登贝莱(20-科曼79\')、7-格列兹曼、10-姆巴佩\r\n\r\n前锋：9-吉鲁', 'img/6.jpg');
INSERT INTO `news` VALUES (8, '再见，C罗！10人摩洛哥1-0淘汰葡萄牙', '北京时间12月11日凌晨，2022卡塔尔世界杯1/4决赛，摩洛哥1-0击败葡萄牙，成为历史上首支进入世界杯4强的非洲球队！葡萄牙队史3次征战世界杯1/4决赛首次失利无缘4强，C罗告别世界杯！', '创造历史！非洲球队首进世界杯4强：在淘汰葡萄牙队之后，摩洛哥成为历史上首支晋级世界杯4强的非洲球队！头号黑马继续狂奔！\r\n再见C罗！一代巨星告别世界杯：葡萄牙未能第3次晋级世界杯4强，这也意味着，C罗球员生涯的世界杯之旅就此终结。C罗的葡萄牙队生涯至今196场118球，其中世界杯决赛阶段22场8球。8进4首场没加时比赛：本届杯赛的前两场1/4决赛都打满120分钟并且踢到了点球大战，而本场摩洛哥在90分钟常规时间内就击败葡萄牙，这也是8强战首场没有加时赛的比赛。\r\n精彩瞬间：\r\n第4分钟，布鲁诺-费尔南德斯右侧任意球传中，菲利克斯的鱼跃冲顶被布努奋力扑出底线。第93分钟，舍蒂拉蹬踏菲利克斯，累计两张黄牌被罚出场，摩洛哥只剩10人应战。第96分钟，阿布赫拉尔单刀攻门被迪奥戈-科斯塔挡下。第97分钟，佩佩的头球攻门稍稍顶偏。', 'img/7.jpg');
INSERT INTO `news` VALUES (9, '官方：西班牙U21主帅德拉富恩特出任西班牙主帅', '此前西班牙足协官方宣布，国家队主帅恩里克离任。', '德拉富恩特常年在西班牙足协任职。2015年，他随西班牙U19夺得U19欧洲杯冠军。2018年7月，德拉富恩特出任U21主帅，2019年他率队夺得了U21欧洲杯冠军。去年的奥运会上，德拉富恩特带队夺得了银牌。', 'img/8.jpg');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `country1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `flag1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('英格兰', '法国', '卡塔尔', '2022-12-11 03:00:00', 'img/schedule/flag-5.jpg', 'img/schedule/flag-13.jpg');
INSERT INTO `schedule` VALUES ('澳大利亚', '阿根廷', '卡塔尔', '2022-12-04 03:00:00', 'img/schedule/flag-14.jpg', 'img/schedule/flag-9.jpg');
INSERT INTO `schedule` VALUES ('阿根廷', '克罗地亚', '卡塔尔', '2022-12-10 03:00:00', 'img/schedule/flag-9.jpg', 'img/schedule/flag-22.jpg');
INSERT INTO `schedule` VALUES ('法国', '丹麦', '卡塔尔', '2022-11-27 00:00:00', 'img/schedule/flag-13.jpg', 'img/schedule/flag-16.jpg');
INSERT INTO `schedule` VALUES ('克罗地亚', '摩洛哥', '卡塔尔', '2022-11-23 18:00:00', 'img/schedule/flag-22.jpg', 'img/schedule/flag-21.jpg');
INSERT INTO `schedule` VALUES ('美国', '英格兰', '卡塔尔', '2022-11-26 03:00:00', 'img/schedule/flag-6.jpg', 'img/schedule/flag-5.jpg');
INSERT INTO `schedule` VALUES ('法国', '澳大利亚', '卡塔尔', '2022-11-23 03:00:00', 'img/schedule/flag-13.jpg', 'img/schedule/flag-14.jpg');
INSERT INTO `schedule` VALUES ('澳大利亚', '丹麦', '卡塔尔', '2022-11-27 00:00:00', 'img/schedule/flag-14.jpg', 'img/schedule/flag-16.jpg');

SET FOREIGN_KEY_CHECKS = 1;
