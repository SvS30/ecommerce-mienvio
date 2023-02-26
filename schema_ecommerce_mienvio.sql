/*
 Navicat Premium Data Transfer

 Source Server         : MySQL 8
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : ecommerce_mienvio

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 26/02/2023 12:28:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_02_26_181506_create_products_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double(8, 2) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `products_nombre_unique`(`nombre`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Prof. Leanna Douglas V', 'Sunt impedit dolorem odio voluptatum ducimus et explicabo blanditiis perferendis voluptatum vitae provident officiis sunt deleniti velit quia ipsam.', 30.44, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (2, 'Jonas Langworth I', 'Sit dolore deleniti sit qui id magni alias quia nemo nulla a porro.', 99.78, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (3, 'Arturo McDermott', 'Voluptas aut sed ducimus veritatis enim corporis perspiciatis quo numquam iusto fuga nihil consequuntur nihil autem dolore quis repellat ullam excepturi itaque quia sit qui ut non.', 62.96, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (4, 'Rebeca Gutkowski', 'Nulla harum temporibus assumenda placeat veniam autem id suscipit velit at ab quos sed odit illo rerum vero nam aliquam sed consequatur alias dolor aut est.', 20.55, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (5, 'Prof. Arnaldo Feil', 'Repellendus facere incidunt rerum perspiciatis sit eos magnam similique atque enim modi nostrum consequuntur voluptatem quis deserunt officiis est omnis fuga est provident eaque aliquam vel est ipsum.', 21.23, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (6, 'Daron Boyer', 'Est ad doloremque enim dolores iure molestiae autem perferendis et vel in quasi quia perspiciatis eos.', 76.40, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (7, 'Michele Casper', 'Incidunt et ad est sapiente accusamus dicta vel expedita accusantium culpa harum porro repudiandae voluptas maiores aspernatur in.', 86.24, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (8, 'Dariana Kautzer', 'Dolorum reprehenderit est enim culpa incidunt perspiciatis aliquam dolorum iusto pariatur aut porro est atque non velit magnam voluptas est et laboriosam dolores magni quo quod quod.', 81.20, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (9, 'Pearlie Price', 'Minima id incidunt et voluptatum hic expedita explicabo dolore autem atque alias debitis consequuntur sapiente.', 47.96, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (10, 'Dr. Dock Hartmann', 'Quos earum id est totam excepturi provident officiis omnis maiores fugiat sunt assumenda ullam rerum.', 21.29, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (11, 'Prof. Emery Kohler PhD', 'Earum nesciunt cum corporis consequatur perspiciatis et illo aut perspiciatis quod eos id aut sapiente dolorem reprehenderit suscipit sunt consequatur reiciendis placeat.', 82.55, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (12, 'Molly Jast', 'Minima praesentium ratione labore dicta dolorem et ut non sunt quaerat odio atque voluptatem libero occaecati voluptas est et dolores sed nobis nulla ea dolorum fugit harum iure.', 90.00, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (13, 'Dr. Sarai Stokes II', 'Nisi dolores aut voluptates in non ratione reiciendis quis fugit id nihil atque voluptas cupiditate eligendi sit laboriosam eveniet tempora veniam autem recusandae asperiores sit nobis exercitationem.', 26.38, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (14, 'Darrell Wintheiser', 'Enim expedita deserunt inventore nihil enim qui voluptatum blanditiis veritatis tempora magni iste et debitis iusto.', 78.57, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (15, 'Heather Rippin', 'Voluptate qui minima culpa eius aut minus nemo nihil ipsam aliquid quo nihil fugit vitae ut excepturi asperiores quis quia quidem recusandae odit impedit doloribus.', 79.42, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (16, 'Maxie Buckridge', 'Provident maxime explicabo deleniti deleniti velit omnis et consequatur nisi qui illum praesentium rerum quae molestiae incidunt autem quo dolores velit sunt.', 50.08, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (17, 'Dr. Melvina Wintheiser', 'Ipsum corporis quia nesciunt sint quaerat corporis et laudantium dolorem saepe et blanditiis placeat a sunt.', 96.70, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (18, 'Jarred Balistreri III', 'Voluptate aperiam qui ea enim corrupti autem eum sit voluptas sunt repellendus qui asperiores sit sed distinctio excepturi aut nostrum id voluptatem inventore harum provident cupiditate neque.', 67.06, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (19, 'Brant Legros', 'Odit vel deleniti quo eum cupiditate enim labore molestiae eos error consectetur iste blanditiis inventore cupiditate ad velit pariatur consectetur et quia qui amet ad aut laboriosam.', 68.00, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (20, 'Naomie Shields', 'Aut laborum consequatur magni earum voluptatibus mollitia deleniti ipsa consequuntur quos exercitationem explicabo non laudantium praesentium et fuga id consequatur iusto sint id incidunt nobis et.', 21.06, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (21, 'Alejandrin Sporer IV', 'Tempora rerum unde facilis at qui et quia a et et cumque consectetur animi possimus.', 18.15, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (22, 'Yesenia Jacobi', 'Optio accusantium blanditiis ipsam aliquam inventore eum aut dolorum adipisci fugiat voluptatum mollitia qui doloribus autem voluptas unde impedit distinctio illum sit quae et aut quibusdam corrupti quibusdam.', 90.12, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (23, 'Seamus Kiehn', 'Corporis officiis suscipit minima nihil voluptatem ut et deserunt at asperiores voluptas labore possimus consequuntur maiores adipisci excepturi voluptas ipsam et eius reiciendis odio voluptatem sunt quis est.', 42.44, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (24, 'Maritza Friesen', 'Quis aut dolore aut rem in consequuntur explicabo minima culpa dolores assumenda similique quis dolorem.', 92.17, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (25, 'Mr. Holden Zboncak II', 'Velit doloribus sit omnis placeat beatae occaecati ut optio qui perspiciatis qui minima delectus nam.', 92.55, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (26, 'Zena Schimmel', 'Voluptas ullam quia rerum ducimus vel id consequatur esse porro quam fugit rerum molestiae sapiente mollitia rerum sapiente aut enim repudiandae nisi dignissimos autem reprehenderit tempore.', 67.17, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (27, 'Breanne Okuneva', 'Magni tempore sequi in quia magni aut corporis sapiente eos culpa magni nesciunt vitae assumenda repudiandae facere ipsa iure quo.', 76.16, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (28, 'Britney Schuster Sr.', 'Perferendis consequatur occaecati dolore aspernatur maxime impedit blanditiis nisi beatae adipisci rerum ipsam.', 47.40, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (29, 'Bette Jones', 'Animi id omnis veniam commodi quo minima et et vero neque laudantium voluptatem.', 69.40, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (30, 'Lysanne Trantow', 'Alias possimus nam maiores nobis ab vitae omnis distinctio dicta a eos sunt ut pariatur optio.', 85.63, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (31, 'Maci Parker Jr.', 'Qui soluta hic iusto in ab corrupti similique occaecati quia ut enim distinctio inventore eveniet iure qui dolorum est culpa maxime tempora eaque consequuntur voluptatem ut.', 87.23, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (32, 'Jillian Jacobs', 'Tempora qui ex expedita voluptate voluptatem libero voluptatem quia enim autem consequatur totam quasi temporibus maxime rerum officiis sunt dicta dolor nobis consequuntur vel eos a assumenda molestiae.', 10.71, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (33, 'Miss Marjolaine Conroy IV', 'Vel et soluta provident repellendus quibusdam quasi aut ducimus debitis quibusdam quam similique eum et asperiores facere quisquam et dicta alias consequuntur nihil aut odio.', 75.00, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (34, 'Nickolas Hartmann DDS', 'Aut nesciunt vitae nobis repellendus nobis est et laudantium suscipit aut quia voluptate quas doloribus.', 61.00, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (35, 'Prof. Adele Satterfield', 'Sed labore quo et labore autem ut eos magni consequatur mollitia rem id odit error voluptas delectus laboriosam et quia totam maiores.', 43.55, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (36, 'Fae Metz DVM', 'Repudiandae laboriosam ratione modi quidem voluptatem nisi unde odio odio sequi qui facilis porro pariatur ea ea omnis aut totam voluptatum quam cum omnis.', 14.38, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (37, 'Harmon Kris', 'Occaecati minus a rerum molestiae sequi necessitatibus iusto reprehenderit sed officiis officia aliquid quod est fugiat dolorem illo officiis ex accusamus ad aspernatur et rerum qui necessitatibus.', 39.40, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (38, 'Noe Champlin', 'Soluta facilis quis id harum mollitia quo quidem voluptatem eum qui illo enim et ab id accusantium quo in sed cupiditate.', 82.49, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (39, 'Mr. Lennie Reichert', 'Excepturi omnis aliquid doloribus consequatur veritatis numquam rerum praesentium blanditiis quo eius ipsa sapiente a repellendus ea nihil iusto ipsa inventore nulla dolores nihil mollitia adipisci.', 65.40, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (40, 'Tess Hills', 'Velit et nulla nulla est aut mollitia hic minima quia ea sed ut cum blanditiis eaque numquam libero sed et sunt consequuntur iste optio quia harum reprehenderit quo.', 27.87, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (41, 'Vernie Senger', 'Dolor ut numquam molestias ratione quis mollitia voluptatem omnis odio itaque assumenda ipsa quia exercitationem harum et molestiae et ipsam veniam nihil ut facilis harum.', 37.00, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (42, 'Shawna Jacobson V', 'Qui unde ipsam aperiam dolor qui ratione natus perspiciatis doloremque non at autem laboriosam amet illum ipsa sapiente consequuntur eius sit.', 65.67, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (43, 'Vernon Carroll MD', 'Consequatur a et consequatur nihil velit aliquam quia necessitatibus sint accusamus ut laboriosam suscipit vel velit et maxime qui beatae laboriosam hic.', 13.11, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (44, 'Prof. Gregg Botsford DVM', 'Officiis cum accusantium ullam ratione quo eum inventore enim eos atque quia aut ipsa aspernatur sint aliquam.', 6.00, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (45, 'Zora Runte', 'Voluptatem officiis nulla sit qui omnis quos neque commodi corporis ipsum tenetur repudiandae illum ut.', 44.03, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (46, 'Betsy Yost', 'Qui deserunt vel adipisci magnam nemo quia dignissimos quis distinctio omnis minus necessitatibus placeat optio repellendus maxime.', 52.40, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (47, 'Kariane Spinka', 'Quia omnis facilis quis qui nihil repudiandae non reprehenderit consequatur neque architecto eos optio fugit quia officia consectetur aut qui fuga corrupti sunt porro amet dolorum quam eaque.', 48.20, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (48, 'Prof. Richie Ortiz DDS', 'Dolores nulla ut expedita quas et eaque aspernatur earum neque officiis non et et exercitationem facilis nihil ullam autem repudiandae sed vel rem eius incidunt architecto qui provident et.', 25.00, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (49, 'Prof. Phyllis Toy MD', 'Nisi molestias distinctio laborum labore quidem minus neque autem et quidem ut est consequuntur recusandae consequuntur optio ut earum iusto sunt neque quaerat molestiae dolores aut et.', 77.15, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (50, 'Yasmine Hudson', 'Ad provident amet sit quisquam nam impedit non ab cupiditate voluptatem aut molestias.', 3.88, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (51, 'Deborah Stoltenberg', 'Tempora quasi veniam qui aliquid eos dolore rerum ducimus et quia et eum voluptatem ab placeat qui ratione dolores corporis incidunt exercitationem.', 11.92, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (52, 'Dr. Nikko Dickinson Jr.', 'Aut asperiores molestiae quod explicabo corrupti voluptatem doloribus autem consequatur consequuntur id mollitia veritatis laborum vero.', 9.97, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (53, 'Lew Bartell', 'Aut doloribus quis reprehenderit ab ab nobis ratione quia autem sit ut expedita harum quia tenetur distinctio sit et.', 22.41, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (54, 'Conor Ledner', 'Qui in labore molestiae autem fugit deserunt voluptas ut tempora reiciendis eum quidem vel aut.', 12.22, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (55, 'Cassie Powlowski', 'Dolores magnam optio ab saepe explicabo dicta vero et cum consequatur ducimus sed occaecati fuga.', 53.80, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (56, 'Claudia Tromp', 'Eos totam nostrum suscipit impedit debitis animi rem vel quo modi nobis quaerat exercitationem.', 20.00, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (57, 'Maximo Wintheiser I', 'Quos et ea sint quisquam autem qui nemo sit error provident aut sit quis necessitatibus iste labore quia dolores blanditiis ut.', 60.23, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (58, 'Emanuel Borer', 'Est ipsum exercitationem ab ut sequi occaecati officiis est pariatur facilis quia saepe dicta a eum perspiciatis similique expedita repellendus deleniti sapiente iusto.', 40.78, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (59, 'Prof. Estella Leffler I', 'Nesciunt omnis enim sapiente deleniti aut qui aut incidunt eaque nulla aperiam sapiente labore enim sit magnam sed officia.', 82.30, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (60, 'Amelia Bednar', 'Sequi qui maiores dolores qui quidem animi ipsam cumque commodi non ad asperiores quia perspiciatis vero temporibus qui.', 48.19, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (61, 'Prof. Eric Kling', 'Voluptatem a illo qui quibusdam rerum corrupti sed nisi harum et recusandae non cum porro porro id deleniti cum ducimus.', 63.18, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (62, 'Friedrich Donnelly', 'Dolores harum non qui vel molestiae ducimus esse beatae et quod suscipit dolorem veniam velit numquam enim.', 61.44, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (63, 'Jonas Lemke', 'Dolor ut modi tempore atque dolore eaque aliquid voluptas earum temporibus ea consectetur.', 52.57, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (64, 'Prof. Destiny Nitzsche DVM', 'Ullam similique cum quia esse delectus consequatur autem qui in eos ad labore ex dignissimos autem.', 1.88, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (65, 'Alvis Aufderhar', 'Accusamus tempora et nulla quisquam quod consequatur harum nihil sequi ullam voluptatem doloribus expedita soluta vero omnis non voluptatibus quisquam.', 44.22, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (66, 'Laura Witting PhD', 'Blanditiis ratione aspernatur qui dolorem autem et porro aut nulla sit qui inventore veniam fugiat necessitatibus molestias aliquam et sed aut.', 35.68, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (67, 'Ardith VonRueden', 'Quasi et vitae quibusdam ut fugit praesentium non et rerum asperiores nihil ipsam nobis eligendi et dignissimos beatae unde id dolorem hic laboriosam dolorem sed iusto placeat cum.', 98.90, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (68, 'Briana Auer', 'A est adipisci culpa in odio quisquam et aspernatur cupiditate inventore nesciunt tenetur ipsa officia illum.', 91.64, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (69, 'Hadley Legros IV', 'Quia quis animi nemo quia sed ratione aut quia amet vel nisi ad incidunt.', 40.49, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (70, 'Cornell Nienow DDS', 'Qui amet illum dicta error eligendi qui incidunt saepe sit eius blanditiis harum quia ut vitae natus.', 74.56, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (71, 'Jakob Feeney', 'Voluptas et eum omnis omnis voluptatem corrupti et ullam error et omnis aperiam voluptas cupiditate qui est inventore itaque odio dolor et.', 74.17, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (72, 'Ibrahim Kessler', 'Quo consequatur voluptas nostrum suscipit voluptas architecto ut perferendis officia vel fuga amet.', 70.05, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (73, 'Cordelia Haley Sr.', 'Temporibus soluta possimus qui pariatur mollitia id doloribus aut omnis magnam alias voluptas tempora nisi dolorem eius non perferendis praesentium ut commodi excepturi aut aut.', 52.41, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (74, 'Dr. Tyson Cronin', 'Ut commodi in quod corporis modi voluptatibus eos quisquam est dignissimos voluptatem qui excepturi.', 40.05, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (75, 'Earnestine Ratke II', 'Similique est natus quia velit placeat asperiores placeat perspiciatis occaecati aspernatur quisquam eum ad explicabo nihil ad inventore quis commodi.', 6.09, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (76, 'Savannah Bailey', 'Quia quis repellendus qui reprehenderit accusamus fugit qui et quidem rerum culpa non tempore velit delectus sunt magni tempora sed accusantium.', 33.36, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (77, 'Brain Bernhard', 'Rem ex quod voluptates et cupiditate dolores quae ea non est perferendis reiciendis molestiae dolor sunt fuga voluptatem aspernatur perferendis sed.', 81.51, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (78, 'Rhett Lang', 'Quidem nihil enim sed et assumenda odit earum ex sint placeat aspernatur similique corporis cumque ipsum velit dolor necessitatibus totam ea corporis.', 93.65, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (79, 'Judy Friesen II', 'Doloremque hic delectus illo illum voluptatum laudantium maxime quos qui ea voluptatem eaque qui praesentium et molestias eligendi voluptatem.', 4.90, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (80, 'Mr. Ezequiel Beatty', 'Rerum qui totam voluptate quia ex illo voluptatibus rerum et rem rerum neque debitis deleniti reiciendis error quaerat qui doloremque in sed cumque rem perspiciatis est qui.', 44.40, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (81, 'Dina Bernier', 'Quaerat commodi est non vel hic aliquid nesciunt et voluptatem temporibus ad perferendis ipsa consequatur earum dolorum minus.', 70.12, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (82, 'Dr. Camilla Kemmer', 'Quo repellat reiciendis dolores sed sint nulla sunt porro itaque repudiandae excepturi ad et quo quaerat iste omnis suscipit maxime ut.', 42.44, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (83, 'Prof. Xavier Koch', 'Sit adipisci quod ratione recusandae et labore qui temporibus facere optio ullam quia adipisci voluptatibus eligendi aut voluptatem magnam iusto commodi ea commodi.', 65.45, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (84, 'Mr. Blake Berge V', 'Alias et aperiam aut animi omnis voluptate accusamus tempore est id nulla maxime eum at.', 82.58, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (85, 'Carolyn Conn', 'Facilis dolorem sit sint voluptatem est et facilis commodi dicta molestiae minus inventore qui harum voluptas officiis deleniti magnam quis quo.', 44.48, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (86, 'Prof. Carolyn Rohan III', 'Unde fugiat iste sed rerum vitae ea qui amet necessitatibus autem non et dolores dolores quisquam sunt eius excepturi harum debitis corrupti provident deserunt aliquid non et quisquam.', 70.09, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (87, 'Marley Kerluke', 'Aliquid perferendis reiciendis minima qui voluptatum laboriosam ullam consequatur eveniet sed eligendi a beatae atque et omnis ipsam perferendis aut voluptas quod asperiores voluptate maiores voluptatibus dolor.', 44.67, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (88, 'Syble Fay II', 'Quo ea odio rerum laborum quas laboriosam harum deleniti nobis atque aspernatur eum eum praesentium at in et nihil eius aut harum quam unde blanditiis.', 60.52, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (89, 'Rosalyn Fritsch', 'Qui in pariatur autem iste quas facilis est aut voluptate dolore sunt ad recusandae fugiat quia nam provident ea corporis laboriosam placeat culpa esse similique cum placeat.', 69.94, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (90, 'Ms. Lura Hickle', 'Debitis ad cum delectus suscipit animi hic rerum hic iste repudiandae commodi porro voluptatem quia minima assumenda non eum et quia molestiae eum molestias mollitia nostrum eius eveniet.', 61.74, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (91, 'Edyth Hessel', 'Quis voluptatem vel a amet et perferendis aliquam ut et harum esse minus animi ut est ipsa vero non atque.', 72.40, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (92, 'Kelton Streich', 'Laborum libero delectus quas provident unde laborum quasi excepturi voluptas vero ipsum quisquam quia ipsa ullam magnam.', 38.24, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (93, 'Retha Lebsack', 'Suscipit fuga eaque voluptatem sed soluta molestiae earum nemo et est quia et et non tenetur molestiae laborum aliquam omnis enim quidem et odit.', 34.48, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (94, 'Elisa Weissnat', 'Odio quidem voluptatum omnis a voluptatibus a sit eos id mollitia facilis quisquam vel id.', 45.00, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (95, 'Efren Rowe', 'Excepturi labore beatae nihil veritatis consequuntur et aut et possimus qui ut laboriosam nisi asperiores voluptatibus enim.', 16.19, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (96, 'Louisa Leffler', 'Quae aut suscipit assumenda laboriosam dolorem voluptatibus labore dolor ex libero quas qui soluta nostrum placeat in iure odio quia eum ea quibusdam non dolores iste ducimus.', 34.84, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (97, 'Adella Hackett III', 'Voluptate vero tempore voluptatem rerum et est dolorem ut quaerat rerum odit natus aliquam sequi voluptas explicabo totam maiores ut soluta error ipsum minus officia exercitationem consequatur ea.', 5.02, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (98, 'Bertrand Toy', 'Dolores quod praesentium dolore eius est voluptate aperiam facilis cum est rerum qui.', 52.03, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (99, 'Nicholas Treutel', 'Illum temporibus voluptate modi molestias dicta eos eum adipisci laborum perspiciatis vel et repellendus aut eum consectetur corrupti dignissimos nam tempora aut commodi dolor similique libero.', 44.26, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (100, 'Dr. Turner Price', 'Dolore et et consectetur ut in dignissimos eligendi deleniti voluptatibus molestiae soluta vel sunt libero corrupti assumenda ipsum quisquam animi et vel.', 77.49, '2023-02-26 18:24:09', '2023-02-26 18:24:09');
INSERT INTO `products` VALUES (101, 'Adan Hahn', 'Totam ducimus omnis beatae libero ullam rerum at blanditiis eos sint eos quas tempora nam ut aliquid non tempora.', 27.23, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (102, 'Quinn Johns', 'Fuga ut neque est nobis est ipsam voluptatem sunt sed necessitatibus repellendus rem ut recusandae quia deleniti labore sit quo aut dolorum vitae harum.', 59.00, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (103, 'Cindy Runte DDS', 'Tempora optio dignissimos commodi ut eaque unde accusantium officiis quam ipsum dolores dolorem optio enim nihil velit nostrum quam veritatis deserunt numquam quasi.', 92.90, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (104, 'Flavie Hartmann', 'Pariatur nulla ea non ut dolores esse consectetur nisi illum harum inventore inventore possimus et dolores eius.', 50.08, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (105, 'Bartholome Fisher', 'Id et doloribus ratione accusantium unde perspiciatis sequi distinctio ab ea rerum vel est itaque fuga nihil id sint sint nobis deleniti voluptas.', 31.16, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (106, 'Marianna Nicolas', 'Voluptas voluptatem in eum sequi et placeat dolore voluptas odit tempore excepturi incidunt aperiam aut nostrum laboriosam dignissimos quia voluptas consequuntur eum quam dolores beatae qui aliquam aperiam.', 26.17, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (107, 'Eudora Lindgren', 'Accusantium veniam quasi ex quasi sit in autem qui doloribus blanditiis in ea quia eveniet velit debitis enim quo dolores totam officia corporis suscipit excepturi veniam tenetur.', 15.31, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (108, 'Felix Howe', 'Debitis deserunt sed minima esse sit porro sequi ducimus eos et saepe ea veritatis officiis illum odit doloribus.', 22.89, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (109, 'Kari Bartell', 'Ut ut delectus ut tempore asperiores dolorem ipsum atque inventore incidunt autem modi non.', 53.24, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (110, 'Jamison Willms', 'Iure dolorem aut qui vitae veritatis autem ducimus dolores sit quisquam sequi facilis quo.', 68.03, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (111, 'Ms. Elenor O\'Hara', 'Quia at et et deleniti minus occaecati pariatur quos nisi omnis iste ut suscipit.', 66.41, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (112, 'Dominic Klocko', 'Ipsum illum suscipit delectus qui doloremque ratione et ab numquam inventore molestiae omnis omnis explicabo magnam porro eligendi non debitis vel aut tenetur ut.', 82.18, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (113, 'Dr. Katlyn Ondricka', 'Dolores deserunt ratione assumenda ut minima quo fugit pariatur repellendus quibusdam quis eaque quibusdam veritatis quo.', 55.14, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (114, 'Dr. Gertrude Ruecker', 'Et magni reiciendis veniam itaque adipisci sit ut et et illum quisquam accusantium.', 49.78, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (115, 'Olin Kemmer', 'Necessitatibus et omnis consequatur et amet quidem unde atque dolorem accusantium doloremque non qui fugit est dignissimos eaque ut et explicabo at incidunt laudantium ut accusantium.', 40.96, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (116, 'Jamarcus Lubowitz', 'Sed sunt alias error corrupti aperiam ut cupiditate saepe autem ut sed officiis ad ex.', 74.06, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (117, 'Mateo Bosco', 'Temporibus ut beatae impedit iusto inventore et nobis quia architecto ex beatae culpa quod iusto quia incidunt voluptas cum.', 85.38, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (118, 'Dovie Lesch', 'Aut quis omnis ipsa voluptatum esse qui error et pariatur saepe est saepe cum mollitia voluptas praesentium.', 86.60, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (119, 'Dr. Gregg Hane III', 'Modi eligendi sit tenetur voluptatem quo impedit eveniet unde id neque veniam aperiam necessitatibus nesciunt quia consequuntur omnis ea repellendus nihil et sit et neque rerum id.', 49.78, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (120, 'Maggie Schneider', 'Excepturi quisquam reiciendis error fugiat eum praesentium repellendus ullam iste et non quis sit voluptatem et et nostrum distinctio voluptatem unde eius.', 92.78, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (121, 'Hailey Schmitt DDS', 'At modi est quis voluptas cupiditate nisi magnam officia rerum fugiat explicabo dolorem est fuga.', 32.15, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (122, 'Mr. Roger Bernier', 'Recusandae molestiae aut perspiciatis illo accusamus et voluptatum pariatur eum et sunt veritatis suscipit quis consequuntur dolor ducimus ad doloremque deleniti.', 62.05, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (123, 'Sally Gerhold II', 'Similique minus blanditiis quisquam nemo labore et quos et nemo rem laborum sint odio at enim mollitia unde nihil sit distinctio vitae.', 96.02, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (124, 'Ms. Vena Gusikowski DDS', 'Ut reiciendis molestiae in dolor sit totam ex et sit minima eos vitae cumque aut praesentium amet expedita voluptatem atque quia minima et officia non architecto culpa aut.', 7.59, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (125, 'Ethyl Lang Jr.', 'Vero cumque optio quia molestiae eos qui expedita quia dicta qui praesentium qui eaque nostrum iste necessitatibus saepe maiores maiores debitis deleniti nobis.', 18.20, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (126, 'Kieran Windler', 'Veritatis omnis asperiores totam minus dolorem et perspiciatis aut fugiat nesciunt optio corporis expedita nemo sed adipisci vel voluptate molestias qui dolor temporibus qui officia perferendis sunt voluptatem.', 22.99, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (127, 'Darrion Ullrich', 'Quia quaerat vel consequatur impedit asperiores perferendis unde in libero porro vel voluptatem officiis id atque aut sit molestiae et.', 72.35, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (128, 'Pauline Rippin', 'Fuga quia tempore veritatis ea neque et magni nemo ducimus fugiat eum consequuntur architecto animi deleniti et vel.', 79.59, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (129, 'Freeman Welch', 'Laboriosam sed sunt et at consequuntur quaerat consequatur qui mollitia cum quia libero ut et.', 49.20, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (130, 'August Barton', 'In qui laudantium ducimus non rerum doloribus velit velit rerum quos cumque est est excepturi fugiat consequatur voluptas nam quis veritatis non ducimus dolorum id quo dolore dolorum et.', 56.09, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (131, 'Mr. Tyrel Kuvalis III', 'Explicabo quia et dolor perferendis iure voluptatem neque soluta quia et fugiat porro culpa nulla voluptatibus aperiam eum quibusdam quis.', 60.22, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (132, 'Maryjane Oberbrunner V', 'Ex occaecati optio qui adipisci aspernatur non placeat ut quas voluptatem facere rerum rem impedit ipsa consequatur sit.', 57.10, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (133, 'Ed Walker', 'Et totam magnam ex qui id quibusdam rerum saepe similique earum nemo itaque modi commodi nam delectus quia nisi nemo optio doloremque.', 62.80, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (134, 'Maxie Windler Jr.', 'Numquam quae beatae amet sit qui et aperiam dicta omnis quis ut consequatur repellat ducimus maxime.', 74.17, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (135, 'Prof. Claude Treutel II', 'Harum aut voluptatibus est necessitatibus placeat voluptates impedit autem rerum enim eos pariatur perspiciatis expedita ut sapiente esse est sequi voluptas possimus corrupti.', 89.05, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (136, 'Prof. General Gusikowski IV', 'Dolorem vel natus ea voluptas nobis vel corrupti velit aliquid odio animi necessitatibus ipsum aut sunt qui ut qui ipsa dolores rerum ipsum sint sint.', 47.70, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (137, 'Madalyn Roob', 'Quia beatae omnis aliquam fugiat accusamus culpa voluptatem a maiores voluptatem assumenda alias doloribus sit est illo nihil eum doloremque.', 12.30, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (138, 'Erica Beatty', 'Recusandae illum non provident ut repudiandae optio veniam hic ipsum iste consequatur temporibus omnis ab.', 45.11, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (139, 'Estel Swift', 'Voluptatem eos delectus exercitationem itaque atque ut id magni qui natus reiciendis id maxime reiciendis.', 58.21, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (140, 'Prof. Cristina Wehner MD', 'Voluptas nihil fugit labore soluta omnis aut quia vitae harum temporibus dolorem quod sunt id velit aspernatur ut suscipit eos cumque aspernatur.', 15.02, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (141, 'Darren Pouros', 'Cupiditate laborum doloremque voluptatem voluptatem sint soluta quia sint est quisquam aut deleniti voluptas saepe placeat voluptatem.', 8.69, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (142, 'Tessie Kilback', 'Quis sed aut et quia deserunt quidem quasi consequuntur ut sequi tempore sequi blanditiis alias.', 53.30, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (143, 'Benny Hagenes', 'Et aut sed et tempora veniam eaque et in impedit consequatur quaerat quo dignissimos sunt aut ipsum et occaecati qui.', 34.20, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (144, 'Ursula Wiegand', 'Iste nesciunt quidem corporis magni commodi esse consequatur repellat adipisci fugit hic aspernatur.', 20.05, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (145, 'Jocelyn Stark', 'Officia et possimus perferendis id nam sed unde et voluptatem vero dolorum esse sapiente cumque qui.', 42.39, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (146, 'Javonte Kunde III', 'Impedit nesciunt autem culpa et voluptas quos deserunt est nemo explicabo debitis quo.', 8.32, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (147, 'Mariah Collier', 'Sint enim quis non consequatur molestias dolore rem quos quo sunt a in rerum aspernatur dignissimos quae ab porro suscipit illum esse suscipit aut voluptatibus nulla.', 88.20, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (148, 'Dr. Jevon Gutmann IV', 'Enim deserunt corrupti quia perspiciatis voluptatem molestiae quae sequi debitis provident fugiat quisquam aspernatur nam aliquid quam cum quia eveniet ut sed nisi quia consequuntur velit dolore.', 78.54, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (149, 'Prof. Camryn Hammes', 'Omnis porro dolor inventore animi nam ut earum est eos sunt sed vitae enim.', 93.23, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (150, 'Sabryna Halvorson', 'Harum voluptatibus sapiente assumenda consequuntur voluptas est tenetur minus et suscipit ut est repudiandae.', 83.83, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (151, 'Alexa Toy', 'Porro deserunt id temporibus sapiente placeat accusamus sit beatae enim est dolores ab quas inventore quia velit quis natus perspiciatis quo quod officiis.', 12.18, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (152, 'Miss Jessica Rau', 'Praesentium quia minima veniam dolore quia fugit hic voluptas qui architecto dignissimos quis consectetur rerum quaerat distinctio.', 17.46, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (153, 'Ms. Winnifred Bergnaum', 'Laborum aut praesentium voluptatem quidem qui quis tempora et est aut in inventore veritatis.', 67.28, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (154, 'Alessandra Rau', 'Facilis quia commodi ipsam repellat enim corrupti accusantium sapiente reiciendis vitae sit cumque dignissimos molestias.', 83.49, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (155, 'Dr. Porter VonRueden Sr.', 'Quasi quia natus repudiandae esse quam blanditiis omnis qui doloribus dolorum eos totam.', 56.90, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (156, 'Dr. Rosalyn Okuneva V', 'Laboriosam eligendi voluptatibus qui quis qui ducimus maxime error neque modi cupiditate sequi in nisi.', 35.91, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (157, 'Derek Feil', 'Sequi sint culpa autem et nam doloribus dolorum commodi cum similique delectus rem atque voluptatem fugit voluptatibus beatae quia ab enim.', 56.64, '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `products` VALUES (158, 'Dr. Duncan Shanahan DDS', 'Aliquam suscipit officia deserunt quae sint eaque omnis ipsam est mollitia quia voluptatibus aut culpa consequatur commodi.', 67.00, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (159, 'Verla Cummings', 'Repudiandae ullam accusamus eaque exercitationem qui delectus amet est inventore aut consequuntur consequatur repellendus sit iure.', 16.33, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (160, 'Mrs. Caroline Nienow II', 'Occaecati et accusantium consequuntur quis dolore minima fugit veniam qui et assumenda quis sunt accusamus voluptate voluptatem nemo facere in nostrum dolorem magni recusandae placeat.', 89.02, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (161, 'Margarete Flatley DDS', 'Autem assumenda nostrum in ut eos et occaecati eaque a reprehenderit dolore facilis.', 11.88, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (162, 'Emmy Reilly', 'Maiores voluptates repellat pariatur et itaque optio aut facere aliquam aut doloribus iure quod ab cum vel cum asperiores.', 4.40, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (163, 'Maximilian Kovacek', 'Velit sunt qui quia architecto ipsum quo minima modi enim quod et soluta id quia et id et ut repellat quia sunt iste praesentium sequi ut aut.', 15.52, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (164, 'Ciara Beahan', 'Sit voluptatibus officia veniam sit assumenda placeat velit veniam officia maiores omnis molestiae voluptate et aut id cum sit nihil.', 40.37, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (165, 'Dr. Sandrine Bins', 'Nihil natus reiciendis ipsam atque est cumque vero a harum sit tenetur sit dignissimos.', 15.11, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (166, 'Audreanne Kertzmann', 'Et quia ut ipsa iusto sunt voluptatum omnis totam in porro a ut.', 87.58, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (167, 'Audrey Osinski', 'Saepe fugit quae consequatur saepe eos illum et excepturi quia tempore in minus nulla debitis ab in.', 13.90, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (168, 'Mrs. Bryana Torp III', 'Consequatur voluptas et id illo eum cum quaerat exercitationem quam sint odit repellat amet necessitatibus itaque dolores rerum architecto est autem at fugiat ipsum reprehenderit vel omnis.', 63.10, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (169, 'Mr. Trever Graham', 'Numquam atque dolores velit sed rerum et a ut quae itaque ut optio quam aut culpa suscipit et corporis et modi sunt nostrum et reprehenderit aut est.', 15.57, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (170, 'Kirsten Hauck', 'Quas qui placeat tempora quibusdam qui atque suscipit quam ad eveniet facilis voluptatem error corporis ut deleniti similique quidem in mollitia porro cupiditate iure vitae sed.', 41.95, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (171, 'Alisa Skiles', 'Doloribus quasi et vel quo vel delectus aperiam quibusdam sed vel ab commodi porro facere fugiat voluptatum fugit sit consequatur amet excepturi voluptates.', 75.67, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (172, 'Dexter Ferry', 'Quae quo quia corporis eveniet repudiandae quis dolore nihil non assumenda aut explicabo possimus nemo consectetur natus aut fugiat rerum non sed.', 32.99, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (173, 'Vincenza Waelchi', 'Et est dignissimos recusandae sed itaque voluptas nam cupiditate dolores voluptas sunt aut et voluptates autem asperiores quae libero culpa sed ea labore qui et ab voluptates.', 23.00, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (174, 'Prof. Napoleon Feest', 'Blanditiis dolor in voluptate quidem est et esse quo et iusto earum magni iste consequatur fuga.', 92.23, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (175, 'Prof. Eugenia Abshire II', 'Vitae eveniet voluptates ipsam officia ea officia libero qui quia quidem nisi magnam voluptatum esse qui in similique rerum maiores.', 49.11, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (176, 'Dr. Titus Schuppe III', 'Nihil nam dolorem modi eaque eaque et minima aliquam ipsa aperiam earum in architecto repudiandae ducimus voluptatum laboriosam eum quibusdam fugit facere iure quam qui quia.', 8.71, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (177, 'Amparo Osinski', 'Blanditiis repudiandae beatae qui est quo suscipit ex quo modi et labore aut dicta saepe.', 70.76, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (178, 'Otho Leannon', 'Sit dolores earum quis architecto autem sed et cumque aut dolorem doloribus fugiat illum accusamus quaerat molestiae.', 70.61, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (179, 'Stephany Mayer V', 'Suscipit facere soluta labore corporis expedita et dolorem nulla eos ratione veniam dolor harum veniam sit asperiores in voluptatem facilis iusto vel voluptatum aut optio sunt.', 67.95, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (180, 'Olga Schmeler', 'Autem qui temporibus tenetur dolores nobis autem modi accusantium voluptas ut reiciendis veritatis quibusdam aut sunt quibusdam reiciendis voluptas sed aperiam quo vel.', 97.90, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (181, 'Dr. Tobin Reilly III', 'Eligendi sequi molestias repellat rerum vel dolore facilis id illo qui error explicabo molestias distinctio minus ut perferendis quisquam eum qui voluptas sed eligendi repellendus rerum.', 21.51, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (182, 'Myrtle Little', 'Consequatur in quam rerum enim molestias minus ea enim eius sed est odit nihil error est distinctio aut est.', 3.21, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (183, 'Mr. Adriel Turcotte II', 'Voluptatem porro impedit beatae rerum molestiae in dolores officia amet id hic enim maxime ut placeat magni eaque quos sequi eaque ut vel.', 51.67, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (184, 'Arianna Legros IV', 'Consequatur aut consequatur recusandae quis repellat qui ullam omnis consequatur est aut in rerum.', 96.03, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (185, 'Ms. Lou Hansen', 'Suscipit qui qui incidunt minus voluptatum asperiores molestiae quos necessitatibus voluptatibus et natus.', 50.28, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (186, 'Liza Wehner', 'Rerum nam illum eveniet libero molestias nulla et dolorem ex animi cupiditate aut delectus aut aut aut cumque explicabo sit et nulla quae.', 69.68, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (187, 'Beulah Runolfsdottir', 'Sequi quos et facere et suscipit est necessitatibus ut qui commodi amet rerum in.', 67.70, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (188, 'Ruth Rath', 'Quia aut sint sint distinctio dignissimos magni quaerat optio aliquid aspernatur vel nemo dolore explicabo eaque porro quod facere soluta optio quo.', 56.00, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (189, 'Javon Hartmann Sr.', 'Autem a voluptatem temporibus tempora quis mollitia ipsam dolorem et nulla quos repudiandae.', 55.94, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (190, 'Domenick Oberbrunner', 'Perferendis temporibus esse omnis hic assumenda alias eligendi et a quo iste laboriosam commodi labore quidem aliquid molestiae.', 64.64, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (191, 'Raphael Bernhard', 'Tempora explicabo perspiciatis assumenda itaque ab error provident ad neque ea suscipit fugiat facere quasi dolorem consequatur eum et dolor illum iure voluptas.', 78.72, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (192, 'Robyn Klein', 'Expedita saepe qui in voluptatum neque voluptas consequatur rerum nobis perspiciatis doloribus minus eos qui eaque deserunt quos pariatur aliquam dolores ratione dolorum.', 99.28, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (193, 'Jeffrey Ortiz', 'Commodi quas et ut ipsa cumque nihil dicta ea sint ad nesciunt enim amet hic.', 51.91, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (194, 'Ms. Yoshiko Padberg Jr.', 'Fugiat eos repudiandae quis nisi quisquam nisi necessitatibus sunt quia qui non quod consectetur.', 11.83, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (195, 'Elise Stehr', 'Sit qui ducimus inventore impedit voluptas in voluptates aut incidunt illum veritatis doloremque nobis reiciendis totam quia.', 4.03, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (196, 'Emmy Rosenbaum', 'Pariatur optio rerum inventore autem unde ea sit ullam sunt odit ipsa dolor vel omnis aut omnis id reiciendis sit ut dolore saepe repudiandae velit.', 16.30, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (197, 'Adeline Yundt', 'Incidunt sit autem illo ut illo assumenda consequatur iusto minima nisi placeat ea tenetur ut assumenda.', 58.27, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (198, 'Lucy Kessler', 'Blanditiis asperiores sit molestiae id minus vitae rerum dolor repudiandae velit repellendus aut neque eveniet et quia autem debitis voluptatibus.', 94.97, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (199, 'Mr. Rupert McClure', 'Amet quo quibusdam sed velit aut illo quos quod quae in in sit odit.', 55.36, '2023-02-26 18:28:27', '2023-02-26 18:28:27');
INSERT INTO `products` VALUES (200, 'Prof. Jaquan Mueller I', 'Dolores natus explicabo aperiam est illum repellat illo quidem nisi quia sed velit deleniti sint nemo inventore voluptatem adipisci tenetur at error consequatur cupiditate.', 81.20, '2023-02-26 18:28:27', '2023-02-26 18:28:27');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Celestine Daugherty', 'flavio.wehner@example.com', '2023-02-26 18:28:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pWnjfgpS54', '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `users` VALUES (2, 'Sarai Torp', 'sadams@example.com', '2023-02-26 18:28:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UgPMIsFfwm', '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `users` VALUES (3, 'Ruthe Smitham', 'emma.monahan@example.org', '2023-02-26 18:28:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fwa0AmIkRL', '2023-02-26 18:28:26', '2023-02-26 18:28:26');
INSERT INTO `users` VALUES (4, 'Stephen Pouros', 'hbruen@example.net', '2023-02-26 18:28:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GZzQcUJGRl', '2023-02-26 18:28:26', '2023-02-26 18:28:26');

SET FOREIGN_KEY_CHECKS = 1;
