#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '7', '9', 'Eum autem molestias eum. Dignissimos voluptatem vitae quidem et qui dicta. Est labore repellendus sit iusto neque repudiandae quam assumenda. A temporibus mollitia magni tempore deserunt ipsam libero.', 'quasi', 0, NULL, '1977-05-11 16:34:59', '1978-12-28 03:53:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '9', '24', 'Et quasi molestiae quia rerum assumenda ex voluptatibus ab. Dignissimos repudiandae eos doloremque qui ad. Nisi sint qui adipisci aut qui repellendus. Voluptatem perferendis quod sed nobis aliquam. Tempora nihil rerum qui voluptas.', 'eos', 60207127, NULL, '1976-02-27 13:56:02', '2022-06-01 10:12:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '9', '47', 'Dolores omnis unde animi ipsa accusantium. Explicabo eum ducimus ea similique. Expedita dolor et soluta eos dolorem.', 'cumque', 0, NULL, '1995-09-06 23:04:42', '2004-06-26 23:25:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '5', '7', 'Consectetur non pariatur sed suscipit quia velit autem. Quas labore pariatur quisquam dolore. Unde animi adipisci aut ut qui.', 'maxime', 40, NULL, '1998-04-08 16:21:01', '1998-09-21 14:41:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '10', '24', 'Odit occaecati quasi nostrum modi quis quaerat fuga consequatur. Velit autem voluptatem sit delectus voluptatum consequatur aut.', 'commodi', 6728, NULL, '1970-12-27 15:45:52', '1995-07-11 09:30:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '2', '51', 'Recusandae nobis laboriosam quos. Vel et quidem omnis laudantium eum. Saepe fugit ex nisi eos.', 'ut', 472693, NULL, '2010-07-16 23:50:25', '1988-07-11 06:25:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '8', '19', 'Accusamus molestiae placeat rerum recusandae et. Suscipit atque voluptas perspiciatis in. Ab non iste sunt facilis alias quia optio.', 'vel', 2681706, NULL, '1978-05-04 15:23:16', '1972-03-05 12:45:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '97', 'Omnis eveniet necessitatibus ut inventore. Vel facilis et optio. Error consequatur perspiciatis labore laudantium deserunt magnam a in. Quam ullam error voluptatem occaecati.', 'aliquid', 198, NULL, '1990-03-06 05:49:15', '1984-12-31 17:22:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '8', '16', 'Ipsum repudiandae quos debitis quaerat saepe accusamus. Quae autem quo et. Beatae magnam molestias quos cum. Earum nemo et dicta cum laudantium excepturi. Et soluta ipsum laborum ut.', 'tempore', 24845, NULL, '2001-12-15 20:34:43', '2012-04-30 11:33:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '63', 'Enim aut placeat omnis dolores numquam et. Facere consequatur quidem odit nostrum. Quia doloribus voluptatem qui qui voluptatem vel ut nihil. Dicta exercitationem est sapiente quaerat ea consequatur.', 'nisi', 0, NULL, '1994-04-09 04:15:45', '2005-01-12 18:45:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '3', '53', 'Ea sint expedita tempore vel. Dolorum sint quo iusto at. Architecto et sint ab voluptatem.', 'blanditiis', 1498, NULL, '1987-01-05 19:17:06', '2008-11-11 16:00:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '6', '80', 'Occaecati aut mollitia ipsa ab optio. Voluptatem voluptatem dignissimos quis aut in beatae. Maiores ut ea ratione est dolor ad deserunt. Excepturi nobis odit quo qui unde repellendus ut vitae. Quidem architecto labore consequuntur nobis quia.', 'dolor', 812123, NULL, '2004-12-08 06:30:50', '1980-03-26 19:32:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '5', '48', 'Ut magnam nulla soluta excepturi voluptatem et iste voluptatum. Alias veritatis qui maiores nam. Et labore consectetur dolore non. In ut quis corrupti mollitia non adipisci.', 'sed', 553644, NULL, '1998-09-07 03:42:30', '1973-11-29 14:57:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '3', '4', 'Aut est ut velit cum a. Ad odio non eum.', 'delectus', 2, NULL, '1982-11-30 11:00:18', '2015-06-03 00:59:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '8', '71', 'Sit ut facere eaque et voluptatibus. Eum iste eius ea non ratione velit quasi. Harum aut non qui.', 'quidem', 4401421, NULL, '1987-07-02 04:13:46', '1974-12-29 11:21:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '8', '83', 'In eum odit perferendis harum facere dignissimos qui vel. Eos modi alias non optio occaecati occaecati.', 'inventore', 2131676, NULL, '1989-12-13 05:56:50', '1985-01-23 13:26:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '5', '79', 'Voluptatibus nemo fugiat iusto doloribus molestiae. Hic voluptatum officia eveniet facere esse dolores est. Atque possimus dolor id repellat ratione eaque rerum. Non est quia rerum facilis dolor.', 'cum', 0, NULL, '1998-11-05 17:38:10', '1997-03-24 17:23:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '10', '27', 'Et rem placeat sint totam non quia. Ea rerum unde quo. Velit corrupti tempore incidunt omnis velit expedita aut.', 'facere', 70524606, NULL, '1973-07-23 03:12:20', '2016-03-25 13:09:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '9', '95', 'Sit veniam sit sed. Laudantium libero et labore quasi. Tenetur qui facilis fugiat est voluptatibus. Ad neque aliquam saepe tempore quaerat et facilis nostrum.', 'nemo', 49493, NULL, '2015-04-15 00:41:07', '2021-01-15 04:40:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '5', '49', 'Repellat consequatur et quaerat atque accusantium quia ut. Delectus laboriosam id dolore. Sapiente quo in minus aperiam consequatur aut sed repudiandae. Autem ut dolores corporis molestias sit.', 'libero', 6619770, NULL, '2001-03-28 13:42:10', '1980-02-26 00:44:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '8', '46', 'Asperiores aut ducimus iste omnis. Dolores aut nesciunt quidem vel. Corporis dolorem porro fugit dolore. Qui ut aut maxime dolore.', 'eum', 374847, NULL, '2007-12-29 08:27:41', '1997-09-10 00:01:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '6', '75', 'Modi distinctio quam reiciendis explicabo quae aspernatur optio. Ut quam et quam.', 'aperiam', 851886152, NULL, '1982-11-13 18:40:31', '2003-07-25 05:33:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '6', '2', 'Mollitia ad reprehenderit dolore assumenda placeat quod et. Nobis fugit praesentium aliquam. Saepe suscipit quam consequatur culpa ad rerum. Rerum qui necessitatibus numquam et vel sint. Quod aut sit et maxime fuga.', 'pariatur', 388827427, NULL, '1997-05-14 18:17:19', '2010-05-08 21:36:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '1', '31', 'Ipsum nulla consequatur quod at consequatur iusto laboriosam. Labore animi natus dolore similique laudantium libero consectetur. Eos iure id odio ut. Id culpa commodi aliquam ipsam ea. Cum sequi sapiente ad dolor eveniet libero.', 'alias', 3805191, NULL, '1973-07-20 08:11:30', '1970-12-23 07:38:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '3', '48', 'Facere est nesciunt voluptatibus soluta est qui dignissimos. Eum sed rerum vitae iste quisquam necessitatibus. Sint repellendus ratione omnis officiis laborum deserunt.', 'et', 15183920, NULL, '2009-01-27 18:43:15', '2000-10-15 23:28:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '1', '68', 'Aut soluta enim esse dolor vero deserunt. Et recusandae iure temporibus architecto. Atque et sint natus repudiandae neque quia laudantium.', 'amet', 12438653, NULL, '2014-02-28 13:11:59', '1970-03-22 18:03:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '8', '44', 'Et culpa ut eum omnis veritatis qui repellat aut. Perspiciatis neque aliquam hic impedit rerum adipisci. Esse blanditiis temporibus omnis ut enim. Dolorem fuga dolore quisquam necessitatibus eligendi.', 'quis', 0, NULL, '2001-01-24 01:34:00', '1996-11-23 03:45:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '10', '76', 'Eveniet atque iste ut dolorem omnis iure. Placeat eaque autem magnam laudantium perferendis et. Reiciendis qui magni temporibus.', 'id', 551, NULL, '1977-02-28 12:13:05', '1973-02-10 14:30:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '10', '63', 'Dolores similique incidunt modi et eum iste rem iure. Blanditiis aliquam perferendis est et molestias. Quis blanditiis voluptas ullam quod et architecto animi. Alias qui eum officiis veniam ut voluptatum asperiores.', 'sit', 13, NULL, '1988-09-10 20:11:17', '1985-05-06 13:19:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '8', '78', 'Voluptatem in repellat fugiat sapiente adipisci veniam distinctio pariatur. Aut nesciunt beatae iusto perferendis error.', 'sit', 247712, NULL, '2021-12-16 17:54:49', '1980-04-07 01:05:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '2', '73', 'Sapiente sed autem delectus sit. Eaque laudantium eveniet architecto est nihil beatae amet. Corporis ut qui et sint ipsam. Voluptatem ipsam architecto nihil qui est doloremque ab optio.', 'deleniti', 0, NULL, '1980-05-01 22:59:47', '2005-07-01 07:56:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '1', '89', 'Culpa sint ut aliquid labore. Minus quis reiciendis blanditiis quis laborum. Ex quia voluptas quidem voluptas.', 'commodi', 17, NULL, '2011-07-19 01:57:14', '2009-07-13 00:03:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '3', '46', 'Cumque non aspernatur aut provident tempore at asperiores. Facere minima voluptatem quasi doloremque quo nemo. Rerum dolores accusantium dolorem aut qui quibusdam expedita. Optio laborum et rem consequatur fugiat.', 'est', 6, NULL, '2017-07-28 14:34:08', '2019-01-19 23:35:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '1', '92', 'Nulla at nobis tenetur totam itaque minus ut. Nam provident dicta nostrum non dolorem. Voluptas voluptas iste optio sint quia magnam. Doloremque est et vel tenetur debitis magni optio.', 'consequatur', 39013, NULL, '1989-11-17 16:32:02', '2010-12-23 13:41:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '3', '91', 'Recusandae cupiditate ea quisquam est sunt. Voluptatibus commodi consequatur iste animi repudiandae. Aut in et autem voluptas consequatur ipsam et. Inventore maiores est nemo consequatur.', 'et', 73015, NULL, '1982-11-08 12:03:02', '1996-08-19 11:46:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '5', '81', 'Reprehenderit id distinctio et repellendus. Quasi sunt placeat id ea magnam aut natus quidem. Nihil voluptas blanditiis ipsam quibusdam.', 'quibusdam', 6, NULL, '2016-08-22 16:38:26', '2008-02-09 00:01:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '2', '80', 'Qui sit molestias et est cumque ipsam. Necessitatibus non voluptas vitae placeat non aut optio. Consectetur accusantium quia architecto ut est. Quis aliquid aliquam eum quis debitis sed cupiditate.', 'neque', 778189, NULL, '1971-05-21 07:50:16', '1998-05-24 11:50:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '1', '46', 'Modi beatae distinctio sed neque amet consequatur error. Corrupti non distinctio necessitatibus unde molestiae. Amet qui dolor sed impedit qui enim nihil. Eum illo illo vel doloremque repudiandae vel.', 'magnam', 96710, NULL, '2007-08-12 23:17:13', '2017-07-28 10:26:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '3', '77', 'Inventore magni placeat officia ratione suscipit molestiae sit accusantium. Suscipit non amet iste maxime. Sit nobis fuga veritatis est id earum.', 'omnis', 1911, NULL, '1984-03-09 12:27:25', '2020-08-26 14:25:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '5', '27', 'Suscipit voluptatum et nam quia tempore nisi. Explicabo eos reiciendis doloribus sit. Laboriosam consequuntur tempore placeat.', 'placeat', 259729692, NULL, '2010-09-04 00:19:56', '2005-03-02 05:20:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '3', '30', 'Nulla ipsum corporis placeat iusto rem quasi cum ea. Voluptas rem omnis dolorem corporis qui. Nihil enim vel quia ipsa alias excepturi inventore.', 'a', 677142, NULL, '2019-11-12 08:51:52', '1985-05-10 15:51:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '10', '50', 'Et pariatur sed officiis nostrum eveniet hic. Illo mollitia reiciendis quaerat eum et aut quis. Voluptates labore aut dolorem consequuntur ut voluptas magni. Voluptates hic aut reiciendis nemo odit possimus.', 'ut', 0, NULL, '1994-09-15 22:46:01', '2019-01-28 09:53:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '1', '13', 'Omnis est quidem odio veniam eligendi. Rerum minima beatae iste et numquam rerum. Quibusdam ea esse perspiciatis inventore quis pariatur non veritatis.', 'numquam', 575353, NULL, '1984-12-05 15:44:42', '2001-07-21 02:20:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '1', '91', 'Vel ad tempore ex maiores. Dolor ducimus laudantium sed. Eius optio exercitationem iusto autem velit qui velit. Magni harum cumque laboriosam quidem magni omnis ut. Est ab et architecto non doloribus illum.', 'dolores', 563017019, NULL, '2008-06-22 00:57:53', '2004-12-23 13:36:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '3', '24', 'Sed libero aliquam ad sunt ut vel totam. Eligendi qui reprehenderit repudiandae aut. Atque sunt error consequatur sed. Qui nam qui qui sunt.', 'assumenda', 1286974, NULL, '2022-01-15 04:43:20', '2007-11-29 01:45:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '8', '62', 'Animi praesentium sunt nulla autem. Suscipit enim in quidem rerum minus. Officia neque enim ut perspiciatis voluptas et amet laboriosam. Reprehenderit officia excepturi voluptatem atque voluptate quasi voluptatem. Veritatis quis aperiam omnis sit dolore laboriosam aspernatur nisi.', 'reprehenderit', 0, NULL, '2014-06-30 00:33:14', '1990-11-08 19:34:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '2', '57', 'Modi omnis laboriosam nulla quisquam perferendis. Sunt ut sint non voluptas architecto vel. Quo ipsam deleniti inventore libero earum voluptates voluptatibus.', 'deleniti', 0, NULL, '1987-01-10 18:36:51', '1997-12-29 07:52:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '5', '98', 'Optio non in dolore aut ipsam nam labore quaerat. Tempore nisi sit nobis perferendis labore beatae perspiciatis iste. Quae culpa et debitis eius quibusdam voluptatibus aspernatur temporibus. Illum exercitationem quae nemo possimus aut id assumenda.', 'et', 49598874, NULL, '1983-10-10 19:31:07', '1978-07-27 16:24:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '8', '82', 'Qui omnis ipsam quo consequatur nemo nihil nobis. Cum nesciunt ab rerum tenetur perferendis quasi omnis hic. Praesentium fugiat est et vel consequatur quo. Qui dignissimos sapiente aut omnis at.', 'excepturi', 0, NULL, '1981-11-18 17:00:13', '1990-02-22 09:21:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '6', '53', 'Voluptatibus quaerat quis quos est suscipit quia. Accusantium voluptatem dignissimos eum voluptas distinctio et. Exercitationem illo ducimus velit architecto nam veritatis.', 'rerum', 98, NULL, '1988-01-08 02:21:51', '1988-11-27 17:14:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '8', '19', 'Sit non praesentium sunt debitis. Quia illo deleniti occaecati distinctio amet veritatis. Sunt consectetur dignissimos autem tenetur impedit. Aut accusantium non et quia minus.', 'dolores', 424, NULL, '1986-06-14 08:48:02', '1972-06-27 18:30:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '6', '86', 'Explicabo enim consequatur maxime doloribus neque impedit. In quo sapiente ut voluptatem voluptas et. Distinctio velit enim nemo omnis sint. Veniam velit ratione consectetur voluptatem.', 'et', 92837876, NULL, '1978-12-11 13:04:15', '2017-06-12 00:06:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '8', '55', 'Sit vel illum tempore molestiae repellendus. Eos sed aut saepe. Rerum distinctio voluptatem quia dolor.', 'et', 139375, NULL, '2017-01-28 22:16:36', '1972-06-16 22:52:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '4', '33', 'Cum est recusandae excepturi aut veniam ut dicta. Veniam occaecati non consequatur rem et aperiam voluptatum dolores. Quod cum unde officia possimus doloribus libero. In quod accusantium et rem animi rerum.', 'distinctio', 84593, NULL, '1981-03-19 09:00:54', '1978-05-02 23:33:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '6', '36', 'Itaque sapiente doloribus numquam voluptates aut veritatis. Quidem adipisci laboriosam repellendus sunt maiores. Ipsa ullam culpa voluptatem est quidem et quia. Praesentium ex maiores a ducimus molestiae fugit sapiente.', 'ut', 690026759, NULL, '2014-10-05 00:25:00', '1971-07-14 12:16:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '10', '84', 'Velit repellendus sapiente doloremque odio natus molestiae veritatis dolorem. Esse aut beatae rem. Ipsum repudiandae id ea. Consectetur quia minus incidunt et. Harum facere et et quidem et eos.', 'nisi', 2045, NULL, '2020-05-31 11:36:39', '2011-02-03 17:13:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '2', '88', 'Voluptas assumenda et ipsam dolorem ipsum est. Quae sit nam aut quis quis eius tempora. Quod doloribus qui dignissimos est ratione voluptatem.', 'modi', 7, NULL, '2014-09-24 03:22:55', '2008-04-03 12:37:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '1', '26', 'Eum et voluptatem consequuntur repellat. Aut quia veniam doloribus molestiae porro omnis. Ratione rem ipsa voluptatum possimus beatae perspiciatis quis. Possimus doloremque quia atque nesciunt libero officiis libero.', 'sapiente', 166862, NULL, '2006-06-05 10:04:14', '1979-12-06 08:08:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '10', '81', 'Sapiente vel ut quaerat ut cumque architecto voluptatem. Et ratione porro aliquam. Labore et omnis sint est.', 'eum', 46300023, NULL, '1979-02-21 07:55:15', '1993-02-20 11:35:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '8', '84', 'Ut rerum est debitis vero. Et tenetur voluptatem delectus eius. Ex minus ea ullam ipsam. Excepturi rerum ut ad ratione quasi numquam rerum.', 'tenetur', 0, NULL, '1997-07-05 16:07:22', '1993-04-13 01:50:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '8', '95', 'Deserunt quo laudantium quo et dolorem. Eum itaque ut sed est eius autem. Rerum et esse temporibus molestias placeat aspernatur ex. In maiores ut quod vel aliquid ex.', 'deleniti', 1352, NULL, '1994-05-23 11:52:11', '1994-03-29 19:55:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '10', '59', 'Quo deserunt dolores eos ad. Soluta exercitationem sapiente optio ut. Omnis qui ea inventore non numquam.', 'dolores', 63675508, NULL, '1991-04-15 22:32:42', '1970-04-14 16:56:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '5', '74', 'Molestiae dolores quos veniam vitae. Quidem ipsam fugit et ducimus. Ut quia harum possimus illo laboriosam inventore voluptatem deleniti.', 'a', 35, NULL, '1982-10-28 19:10:14', '1977-01-19 17:45:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '7', '77', 'Porro natus dolorum excepturi perspiciatis. Aut fugit maxime molestiae quidem hic et. Et vel quae ut rerum rerum pariatur.', 'est', 8, NULL, '2017-04-19 05:13:02', '2022-05-07 00:52:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '10', '57', 'Quae enim molestias rerum totam odit dicta mollitia. Voluptatibus provident reprehenderit molestias et. Perferendis quae non maiores est deleniti temporibus inventore. Assumenda officia laboriosam facilis repellendus dolor.', 'provident', 15390491, NULL, '1994-04-24 12:42:07', '1988-04-09 16:04:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '4', '48', 'Iusto eos pariatur numquam voluptas ipsum voluptatibus. Possimus consequatur sit voluptatum consequatur corrupti aut. Nihil repellat sint unde eos amet reiciendis ea. Vero et ea quia.', 'officiis', 19094, NULL, '2006-08-27 04:01:00', '1994-12-23 05:20:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '5', '88', 'Corporis tempora placeat non quis suscipit tempore nostrum. Optio commodi laudantium impedit porro quisquam. Fugit aut doloremque quibusdam. Voluptatem in est rerum debitis sunt veniam. Recusandae voluptatum qui illo enim.', 'quaerat', 0, NULL, '1997-08-10 08:06:50', '1973-06-30 15:26:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '7', '97', 'Doloremque similique maiores vitae vero. Suscipit impedit et aut quam qui quia non exercitationem. Doloremque est dolor totam quia.', 'officiis', 5, NULL, '1996-09-15 19:54:24', '1984-01-27 11:15:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '5', '12', 'Et magnam qui vel et aliquid libero. Ut est quam asperiores minus unde porro.', 'esse', 0, NULL, '1986-09-03 00:23:05', '1995-12-13 20:07:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '6', '68', 'Assumenda assumenda occaecati ipsum aliquid aspernatur. Sit voluptatem odio enim possimus sed suscipit perferendis. Ab molestiae cumque et commodi dolorem.', 'consequuntur', 390, NULL, '1991-07-13 14:59:08', '1981-08-08 01:04:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '8', '66', 'Est quis quod natus placeat dolores sunt nam. Neque harum et dicta nihil sint ut odio.', 'dignissimos', 0, NULL, '2010-04-14 19:51:12', '1972-01-12 19:14:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '2', '85', 'Ullam incidunt est molestias nemo. Quasi et aliquid architecto laborum reiciendis error. Minus sunt quia exercitationem perferendis.', 'velit', 91728908, NULL, '2014-06-26 03:51:52', '1982-04-05 03:09:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '8', '31', 'Non quasi aut incidunt. Nihil error aspernatur suscipit quis ea et. Illo mollitia est odit perspiciatis est illo. Voluptas eveniet eos in.', 'est', 0, NULL, '2000-01-20 23:32:11', '2004-06-27 16:26:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '1', '65', 'Voluptatem doloremque praesentium earum quia id. Dicta aut aliquid quo temporibus tenetur ipsum. Voluptas quam sint cupiditate laudantium.', 'aperiam', 9167562, NULL, '1989-05-04 19:34:20', '1974-09-01 15:02:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '6', '3', 'Rerum aspernatur harum sint et fugiat sint occaecati. Eos quidem ratione asperiores quo. Omnis sed reiciendis voluptatibus aut. Quia error est id magnam ut.', 'temporibus', 0, NULL, '1977-10-24 15:40:53', '2016-11-01 02:50:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '10', '94', 'Enim sed nesciunt culpa impedit dicta ipsam voluptatem earum. Doloribus et nobis alias veritatis quia mollitia vel. Nisi adipisci commodi explicabo commodi enim voluptatem aut voluptate.', 'dolor', 7704, NULL, '2014-08-16 01:52:26', '1977-01-30 10:15:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '1', '35', 'Qui expedita delectus voluptatum similique tempore recusandae. Sed voluptatem ab sit consectetur. Molestiae enim natus unde adipisci perspiciatis qui. Cumque ipsam culpa temporibus voluptas occaecati voluptates atque. Perspiciatis nostrum provident placeat nemo ab ut vel.', 'atque', 51795775, NULL, '2012-04-09 15:32:25', '1979-07-13 08:10:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '2', '70', 'Quos inventore quo aut est. Totam asperiores possimus architecto odio quisquam autem in. Quia nesciunt non et ullam. Molestiae ut harum quasi est facere qui.', 'similique', 575, NULL, '1991-05-01 02:23:08', '1980-12-22 15:07:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '1', '53', 'Illo et adipisci aut non et in inventore. Occaecati nulla natus velit sunt. Doloribus ut unde numquam enim nihil eum.', 'occaecati', 900398, NULL, '2014-09-02 14:04:41', '1999-05-10 19:52:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '3', '20', 'Quia sunt distinctio provident placeat similique quasi. Recusandae sint pariatur beatae illo ipsum.', 'aut', 183042903, NULL, '1970-04-05 21:57:37', '1971-06-12 04:03:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '5', '39', 'Et suscipit tenetur repudiandae nihil non quos maxime. Perferendis est quidem ipsam in. Fuga fugit nihil optio doloribus ipsum assumenda expedita. Repudiandae consequatur eum rem consequuntur fuga est est.', 'ipsa', 8412, NULL, '2008-07-23 02:33:47', '2005-04-12 23:56:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '4', '95', 'Voluptatem quidem maxime laborum ipsum. Rem provident cum corrupti vero. Soluta exercitationem corrupti iusto qui fuga aut molestiae.', 'in', 798, NULL, '1996-10-18 17:12:02', '1971-12-16 01:32:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '8', '57', 'Aut architecto provident iure unde asperiores nam. Excepturi molestias magni asperiores ut est porro. Aperiam minima quia dicta.', 'suscipit', 135, NULL, '1997-01-15 13:58:28', '2009-03-08 14:53:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '8', '99', 'Neque quia facilis ea voluptas eum eius. Unde similique omnis voluptas qui. Molestiae voluptatibus officiis distinctio enim totam qui.', 'itaque', 0, NULL, '1978-02-20 11:43:55', '2006-06-18 13:29:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '4', '42', 'Tempora voluptatem incidunt aliquid nobis incidunt sit ut. Neque iste accusamus qui rerum. Amet qui maiores odit fugiat exercitationem aliquid illum.', 'eaque', 8542, NULL, '2009-04-14 08:30:46', '2019-09-15 11:32:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '1', '36', 'Ut sit aut impedit saepe minus dolor autem. Eveniet adipisci optio explicabo non debitis praesentium. Porro veritatis nemo odio. Nihil dolore itaque et dolore eum perferendis reiciendis.', 'dolorem', 0, NULL, '2003-02-24 14:06:34', '2004-01-07 12:58:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '8', '49', 'Et soluta itaque repellendus veniam voluptas eius. Autem voluptatum magni doloremque voluptatem. Asperiores hic asperiores sed atque consequatur. Molestiae earum enim excepturi ut est.', 'ab', 0, NULL, '2020-10-06 00:47:37', '2012-08-01 20:57:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '3', '49', 'Et nobis cupiditate incidunt voluptate. Sapiente et consectetur officia laboriosam molestiae rerum. Ut voluptatum voluptatem ut. Amet ipsam sunt qui officia occaecati.', 'deleniti', 0, NULL, '1995-11-02 17:54:50', '2000-03-22 20:41:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '2', '5', 'Non in laboriosam harum dolores aut labore. Et neque ut sunt nihil nam. Earum ipsa rerum eos.', 'maxime', 906, NULL, '2004-07-08 06:15:59', '1985-10-08 19:58:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '6', '11', 'Exercitationem non eos fugiat veniam et consequatur id. Et vero reiciendis qui repudiandae est et laborum. Optio perspiciatis placeat magni laborum quia provident amet. Ea sapiente rerum sint id.', 'ex', 41333057, NULL, '1981-01-14 08:45:32', '2009-06-13 08:17:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '2', '96', 'Ex vitae fugit et et. Eaque dolore corrupti amet et. Est inventore omnis eaque voluptatum quos quo. Temporibus et at doloremque.', 'ea', 28883, NULL, '2006-01-20 18:23:26', '1978-04-21 12:51:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '9', '4', 'Sed architecto id perferendis non. Repellat laboriosam et porro nihil illo ducimus consectetur. Officia ea atque magni unde. Sed autem sapiente tempora voluptates.', 'hic', 999333023, NULL, '2011-05-13 23:20:00', '1977-03-31 11:09:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '7', '72', 'Dolorem qui non aut. Facilis aspernatur ea quam voluptatibus. Asperiores praesentium quod saepe aut consectetur qui qui. Qui id aliquid nam.', 'qui', 7161730, NULL, '1979-11-01 21:01:27', '1974-06-23 20:34:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '4', '18', 'Cumque id nihil dolorem nemo. Expedita rerum quia aut. Quis iusto voluptatum est pariatur corporis et. Fuga id perspiciatis accusantium dolorum ullam aliquam.', 'inventore', 8123, NULL, '2015-04-23 04:58:08', '2004-07-14 16:08:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '9', '92', 'Eos consequatur rerum provident quae id nisi tempore. Facilis iste qui libero nam possimus nulla eum. Facilis aut eveniet in veritatis assumenda rerum nam dolore. Pariatur iure explicabo sunt aperiam.', 'tenetur', 9299481, NULL, '1976-08-01 12:32:36', '2011-07-31 15:50:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '6', '13', 'Et nobis voluptate alias beatae dolores. Suscipit quia laudantium consequatur fuga deleniti velit. Iste velit soluta quia accusamus ut voluptatem. Et consectetur voluptatem illum aut.', 'est', 6, NULL, '1973-11-10 19:56:54', '1981-08-30 21:47:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '5', '36', 'Nemo velit consequatur ipsam ipsa. Sit sit molestiae pariatur et. Nisi tempora dolores rerum quis.', 'quos', 59920359, NULL, '1979-04-09 05:10:33', '2018-08-25 17:21:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '7', '41', 'Voluptas blanditiis illo sit nobis voluptas optio. Omnis commodi aut vero optio et eum.', 'assumenda', 1815, NULL, '2012-03-08 10:22:19', '2012-01-23 00:03:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '10', '64', 'Numquam beatae quam aspernatur. Dignissimos eos deleniti harum necessitatibus reiciendis odit.', 'maiores', 25, NULL, '1972-02-08 09:45:25', '2012-01-05 12:18:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '5', '53', 'Sapiente et ad accusantium dolor molestias harum recusandae. Et asperiores minima dicta non totam dolorem ut. Perferendis commodi consequuntur sit voluptas minima beatae. Dolorum nesciunt laudantium rem distinctio optio id amet.', 'molestiae', 10, NULL, '1984-12-12 04:27:14', '1972-09-06 19:44:37');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'in', '1988-01-21 09:30:07', '2003-12-02 14:14:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'expedita', '2001-04-27 10:11:52', '2011-01-27 05:07:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'accusantium', '2019-06-12 08:47:11', '2008-09-28 23:42:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'aliquam', '1971-07-16 05:22:04', '2011-02-15 17:31:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'quia', '1973-01-30 20:09:28', '2021-10-30 07:12:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'voluptas', '2021-09-14 23:19:38', '1991-01-02 05:50:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'optio', '1989-06-26 03:30:01', '2005-07-11 04:14:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'est', '2002-01-30 15:19:14', '2011-10-28 05:03:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'et', '2002-05-06 02:24:11', '1992-12-08 04:58:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'qui', '2012-08-16 06:40:42', '2003-04-13 08:38:39');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '79', '63', 'Laborum aut tempore veniam at. Nostrum dolore aut non a fugiat nam. Cupiditate quo suscipit quis animi dolorum quis modi.', '2003-02-06 12:43:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '54', '67', 'Nihil ut quisquam ut sint ipsum magni sed. At cupiditate est et velit harum veritatis eos. Omnis exercitationem laborum maiores voluptate.', '1973-04-21 09:19:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '54', '48', 'Aut aperiam temporibus ea nemo sapiente molestiae enim. Autem id eos perferendis enim. Possimus earum sunt ea consequatur corrupti accusantium.', '1989-08-17 22:37:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '42', '92', 'Soluta dolore et accusantium sit unde est. Nam ex sint est quia.', '1981-03-27 22:36:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '88', '18', 'Ut consequatur eaque doloribus dolore. Reprehenderit distinctio officia eum aut reprehenderit nihil minima consequatur. Magnam amet impedit est. Ducimus odit veniam incidunt sed at id.', '1994-03-08 18:44:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '79', '41', 'Vitae temporibus reprehenderit nesciunt labore iure voluptate porro. Et blanditiis blanditiis tempore et repellendus doloribus iste.', '2002-04-26 09:56:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '78', '12', 'Maxime repudiandae eum est dolorem. Sunt cumque vitae quod perferendis dolorem. Reiciendis harum non praesentium. Quos numquam nulla vel voluptates voluptates nulla.', '1971-07-04 15:42:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '85', '14', 'Ipsum qui aut dolorem optio soluta asperiores. Consequatur dolores molestiae perspiciatis quibusdam aut.', '1985-11-14 20:10:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '26', '7', 'Eos ut sunt optio nam dolor repudiandae. Quibusdam consequatur autem molestias rerum aut. Facere iste vel dignissimos voluptatibus eum omnis. Architecto repudiandae nostrum laborum dolorem eos numquam. Eos maiores consequatur non dolores consectetur quidem.', '1980-04-23 11:25:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '94', '53', 'Culpa quasi sed aliquam doloribus. Maxime repellendus mollitia aspernatur sint labore nisi. Rerum quia voluptatum quos. Magni ab quos dolorem eos amet id voluptas.', '1995-07-24 18:22:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '58', '14', 'Qui ut velit omnis dolore et. Quo non sunt debitis ea. Voluptas corrupti quia voluptas quidem. Nesciunt et quod eos et accusantium.', '1982-06-02 16:08:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '50', '65', 'Autem aut possimus facere sit sint saepe voluptate. Quod et temporibus architecto. Sed magni cupiditate asperiores corporis. Ex atque placeat nisi qui veritatis. Corporis harum in expedita enim ut est ab repellat.', '1998-03-31 10:33:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '46', '67', 'Qui est repellendus optio harum iure. Voluptatem unde dolorem omnis omnis voluptas molestiae eum. Ut est est adipisci soluta quaerat. Veritatis rerum autem odio at.', '2003-11-26 09:16:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '27', '33', 'Eveniet sequi voluptas magni aut. Tempore aut molestiae voluptatum tempora. Officiis sapiente consequuntur error.', '2021-03-31 11:56:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '56', '100', 'Nam quas placeat corporis fugiat ut et nesciunt. Distinctio optio ut expedita tempore quasi. Ullam voluptatum sequi voluptatem aliquam nihil voluptas. Occaecati et animi voluptatum et ex voluptatum ratione. Iure neque quibusdam corrupti repellat aut atque pariatur.', '1994-11-20 07:57:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '42', '20', 'Et repellat quia nihil et et et sit. Dignissimos illum minima porro dolore blanditiis voluptas quis. Excepturi cupiditate sed illum porro fugiat earum perspiciatis.', '1988-07-03 16:31:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '43', '28', 'Ab qui quo cum dicta voluptatem quia quia. Non quidem qui quae vel est voluptas reiciendis. Quia incidunt tempora magni non et. Qui quo sit non accusamus et laboriosam.', '2023-02-15 01:59:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '4', '96', 'Corrupti corrupti voluptatem ratione ipsum expedita. Perspiciatis mollitia corrupti vel quia nemo. Quo non aut at. Nemo autem qui et qui aliquam.', '2009-05-24 18:27:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '54', '55', 'Minus voluptatem itaque ducimus commodi fugiat architecto. Voluptatem quia officiis inventore et quo minima voluptatem aliquid. Corporis nisi totam voluptatibus est in ut. Aut et assumenda et voluptatem est neque et voluptatem.', '1987-08-10 20:39:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '90', '22', 'Voluptate ratione cum sit quis blanditiis voluptatum amet. Aut eaque ipsam molestiae ipsa molestias minus.', '2005-11-15 19:54:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '34', '80', 'Omnis minima itaque quos omnis consequatur in. Illum est dolor nihil quaerat non. Magnam est necessitatibus ullam tempora.', '1975-04-25 17:10:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '12', '11', 'Labore omnis molestias aliquam omnis soluta. Nostrum enim ut sint corporis dolore totam quae quidem. Quibusdam suscipit aut praesentium delectus sed sed illo.', '1985-10-15 09:49:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '38', '43', 'Ullam modi dolores labore qui harum. Perferendis aut modi autem. Cum praesentium veniam inventore tempora omnis id sit.', '2012-09-23 14:14:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '47', '4', 'Iste ut non maxime sed sint. Eos aperiam ea maiores fugiat. Eveniet eos provident laborum. Debitis sed quos consequatur. Vitae eaque natus in aut impedit praesentium.', '1987-07-08 16:54:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '55', '10', 'Nemo facilis totam et aut consectetur. Sit omnis corrupti eaque repellendus rerum nam. Maiores odit impedit maxime inventore qui. Maiores aperiam voluptatem natus quia voluptas.', '2001-08-13 20:22:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '56', '45', 'Est quia asperiores qui quia sit. In suscipit aperiam modi commodi iusto vitae totam ex. Deserunt nostrum mollitia voluptatem. Qui quod qui dolorem amet nobis deleniti.', '1981-04-20 01:59:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '4', '49', 'Sunt nobis aliquid consectetur sint. Repellat quo et officia et perspiciatis qui laudantium aut. Non porro qui voluptatem sunt ut omnis.', '2010-11-16 22:27:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '76', '3', 'Explicabo et voluptas sapiente. Perferendis quod et corporis officia aspernatur adipisci maxime aut. Voluptas alias perspiciatis soluta distinctio quas. Repudiandae laborum est ducimus.', '2003-05-10 01:12:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '58', '43', 'Quia et rerum totam quis non quam. Ab impedit facere velit iste non quo temporibus. Labore reprehenderit dolores a. Provident officiis laboriosam debitis sit labore accusamus.', '2005-04-16 18:36:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '54', '20', 'Itaque laboriosam laboriosam neque voluptatem. Illo ullam est officiis sed. Blanditiis nemo rerum dolorum corporis nulla et.', '2006-07-02 21:35:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '93', '39', 'Asperiores quidem quos sint et voluptatem repellendus. Eligendi blanditiis dolorum consequuntur sed animi.', '2002-04-29 09:56:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '89', '6', 'Impedit magnam neque iste excepturi minima. Ea rerum et mollitia cum. Recusandae sapiente sapiente libero vel consectetur est. Enim eos commodi dolorem tempore aut eos aperiam. Sint dolor voluptatem mollitia ullam explicabo.', '1984-08-31 08:04:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '29', '7', 'Recusandae aliquam omnis aut et commodi voluptatem accusantium quas. Atque consequatur earum pariatur est rem commodi officiis. Debitis laudantium totam numquam est. Expedita assumenda numquam alias vel ipsum natus.', '2000-07-02 07:59:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '31', '82', 'Quidem et et necessitatibus non. Nulla rerum similique itaque quod. Ea aut facere magnam beatae quidem et consequatur. Nobis ut architecto neque molestiae aut ex quis.', '2006-12-28 18:39:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '5', '96', 'Occaecati quas necessitatibus quisquam. Ex est sapiente eos. Praesentium eveniet corrupti unde velit perferendis.', '2017-10-21 06:11:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '65', '55', 'Et quaerat blanditiis sapiente. Ut neque ipsam nulla iure quae aut et.', '2000-08-06 18:14:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '91', '1', 'Nostrum et repellendus modi a et at. Quasi repellendus explicabo velit non totam.', '2015-06-30 21:29:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '43', '28', 'Soluta consequatur earum velit ut voluptatem. Quis vero pariatur placeat aut est. Iste architecto sapiente sit et.', '1986-09-06 07:00:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '79', '38', 'Minima qui libero a officia praesentium et enim. Occaecati ut omnis dicta non autem quos voluptas. Consectetur autem doloribus vitae iusto qui accusantium corrupti. Rerum ullam illo eveniet commodi perferendis quam doloremque.', '1983-02-06 12:19:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '74', '34', 'Fuga deserunt quisquam tenetur. Mollitia occaecati ex molestias. Aperiam enim soluta necessitatibus.', '1989-08-04 11:10:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '58', '11', 'Voluptatem optio optio et modi. Qui nihil qui doloremque sequi.', '1981-04-29 13:46:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '28', '62', 'Ullam omnis quia laborum quidem vel. Aliquam quis dolores dolor nobis sunt qui facere quidem. Ducimus voluptatem est vel. Neque fuga nihil aliquam hic.', '1972-01-05 03:58:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '93', '85', 'Quasi cum qui iure minus officia ad dicta. Sed totam unde voluptates perferendis nostrum aut perspiciatis. Sit numquam consectetur ducimus autem ea. Architecto magnam dolore nulla vel.', '1981-03-27 01:50:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '32', '21', 'Magni enim est vitae omnis. Aut quidem sit non nihil asperiores explicabo qui dolor. Modi et vel vitae fuga modi aperiam natus pariatur. Vel voluptatibus tempora iusto voluptatem est consequuntur qui commodi.', '2018-04-22 21:41:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '6', '47', 'Nemo vitae velit ea officia veritatis magnam nostrum. Ad odit et suscipit consectetur. Pariatur dolores eveniet dicta nemo voluptas.', '1981-03-07 20:24:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '18', '44', 'Nesciunt sit aut ipsam architecto est. Et libero sed et maxime ex voluptas hic. Odit est dolore optio nesciunt ullam et.', '1976-10-06 13:06:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '11', '39', 'Sunt sunt quibusdam quia iusto nemo. Sed molestiae natus id sint voluptas.', '1976-01-20 17:42:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '58', '35', 'Accusantium aut est eum. Perferendis rem expedita occaecati assumenda ratione. Id corrupti qui ipsa accusamus dolores ullam pariatur. Sed soluta vel repellendus nemo quod.', '2019-05-21 09:03:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '7', '27', 'Provident eligendi eligendi repellendus et rerum. Nobis et atque laborum qui quam cumque beatae. Explicabo vitae aut fuga aut dolor est.', '2010-09-05 02:54:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '5', '15', 'Praesentium sit sit sunt consequatur voluptas est. Molestias minus quasi sed unde quos. Sunt veniam odit non fugiat.', '1985-06-09 03:49:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '59', '64', 'Libero asperiores officia natus explicabo deserunt est. Quisquam hic laboriosam laboriosam hic pariatur qui nemo. Optio nobis in commodi nemo recusandae tenetur dicta. Omnis et dolorem fuga molestias.', '1982-08-08 22:59:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '45', '53', 'Voluptatem enim vel sapiente id et ipsam consequatur. Optio aspernatur et optio voluptas distinctio est dolor non. Dicta beatae ipsa illo perspiciatis dolore doloribus sint.', '1993-08-31 21:53:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '64', '93', 'Excepturi est aliquid incidunt aut. Ut nulla libero laudantium ut fugiat at ut. Voluptates eos saepe quo libero cupiditate eius alias. Incidunt facilis vel cumque eum inventore dicta ea.', '2010-01-18 03:08:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '34', '17', 'Molestiae molestias unde earum ex itaque voluptatem earum. Eligendi dolor sequi dolor saepe repellendus. Perferendis quia accusantium nihil. Voluptate rem neque ea minus explicabo.', '1970-09-02 22:35:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '68', '83', 'Eos voluptas rerum dolores dolorem. Aliquam non rem alias assumenda. Eum voluptates sunt natus et. Nemo quia aut ipsam voluptatibus delectus. Enim inventore reiciendis nobis.', '2019-06-29 01:57:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '85', '80', 'Qui rerum odio vitae adipisci vel porro. Debitis corporis quae quod. Quibusdam quo fugit nihil voluptatem ut.', '2020-09-05 22:57:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '6', '9', 'Asperiores ea delectus ea molestiae voluptatem et. Magnam voluptates et possimus iste dolorem doloremque. Aut repudiandae tempore enim nesciunt. Laudantium odio quia ipsam amet nostrum quaerat qui deserunt.', '1971-01-23 22:18:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '96', '75', 'Pariatur molestiae et cum at qui. Quo quo ut nisi dolor cumque quidem rerum. Aliquid facilis libero labore explicabo quo. Id culpa velit animi.', '2007-03-05 10:38:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '86', '57', 'Ut incidunt est rerum error eos aspernatur debitis. Mollitia odit sed sit. Eos id nemo reprehenderit esse consectetur aperiam.', '2012-09-26 20:00:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '16', '72', 'Mollitia ab id dolores nemo consequatur earum. Corrupti temporibus consequatur temporibus commodi molestiae quis. Et ut consectetur non et.', '2009-05-07 20:39:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '11', '25', 'Explicabo molestiae maiores expedita a omnis. Non minima dolorem dolorum et. Occaecati commodi soluta voluptatem dolor dolor vel.', '1996-08-25 22:43:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '16', '79', 'Quia nobis non repellat enim. Autem saepe nobis facere debitis.', '1988-03-23 08:52:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '94', '4', 'Est corrupti voluptatem asperiores quam. Asperiores animi ut delectus est id excepturi labore. Magnam eveniet magnam aut magnam sapiente. Inventore molestias temporibus id voluptatem aut quo velit consequatur.', '1995-12-03 21:51:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '90', '19', 'Voluptas ut quis iusto quae dicta temporibus consequatur. Deleniti optio ea aut alias corrupti facere sint. Numquam dicta illo molestias esse est in beatae voluptates. Ullam mollitia odit quisquam dolorem qui dolore.', '1992-03-28 06:52:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '49', '73', 'Aperiam minus repellendus cum possimus quis voluptates velit fugiat. Vel dolorem est impedit quod. Voluptatibus qui ut sunt ullam aut. Id velit fugiat vitae autem adipisci nihil inventore.', '1980-03-05 16:58:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '49', '96', 'Et dicta corporis eaque nam a consequuntur voluptatibus non. Dolorem tempora fugit non nihil natus omnis iure. Magni porro praesentium voluptatem ipsum ullam repudiandae animi. Eum sit maiores velit id ducimus ducimus ipsam.', '1975-08-21 04:53:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '16', '18', 'Nulla possimus quos aut. Rem modi fugiat et molestiae temporibus ducimus. Et atque unde animi totam vel. Magnam pariatur incidunt placeat.', '1995-08-14 11:12:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '99', '39', 'Totam qui omnis consequatur neque reiciendis. Ipsam consectetur natus voluptatem sint et dolorem ea. Aspernatur numquam qui hic veritatis autem ipsum voluptates.', '2000-04-22 08:56:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '35', '67', 'Eum doloremque vero est quo officiis. Aliquid et quod molestias harum repellat. Nihil possimus at voluptatem voluptates distinctio recusandae quibusdam.', '2013-07-31 04:28:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '99', '72', 'Voluptate excepturi quas eaque. Praesentium et vitae placeat reprehenderit architecto consequatur sunt. Explicabo ea fugiat eos voluptas repudiandae aut blanditiis.', '1994-04-27 04:40:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '77', '45', 'Aspernatur cum ab dicta labore voluptas. Modi vel officia ducimus et. Quisquam ut sed quam atque quia. Et ratione laborum occaecati praesentium voluptates voluptatum temporibus.', '2005-03-18 12:24:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '16', '41', 'Omnis ut sint et corrupti velit quam officia sunt. Qui veritatis placeat ducimus ea totam. Nihil corporis placeat sed. Voluptatem commodi in doloribus sunt.', '2013-10-31 10:18:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '63', '89', 'Aut unde ex quaerat tenetur. Vitae qui pariatur sint at officia et.', '2005-09-24 07:23:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '93', '70', 'In voluptatem minus sit reiciendis delectus quia. Exercitationem temporibus itaque repellendus ut iusto quo eos. Illo et non facilis quibusdam sed ipsa soluta.', '1999-12-20 01:00:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '30', '53', 'Harum doloremque est quo veniam. Officia accusantium nesciunt ab expedita cumque. Debitis incidunt odit culpa ab accusamus quae facere.', '1990-03-18 05:52:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '47', '84', 'Neque ducimus quo possimus molestias eligendi assumenda. Sunt omnis eum quasi nemo vel aliquam. Adipisci doloribus non ex rerum esse. Est debitis voluptas repudiandae dolore optio est.', '2009-03-19 12:30:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '46', '15', 'Consequatur voluptatem et aperiam neque unde. Non doloremque in et aut sint aliquam. Adipisci temporibus temporibus sed at rerum repellendus.', '2015-12-15 19:44:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '39', '29', 'Quia distinctio sed id quam vero qui. Non consequatur quia et. Eius laudantium numquam architecto ea et atque.', '1976-03-28 23:39:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '48', '59', 'Vel vel qui recusandae. Tempore suscipit voluptates autem eos. Modi eligendi vel quo. Quas natus tenetur aliquam similique ut atque.', '1981-05-14 03:52:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '82', '59', 'Omnis tempora maxime magnam alias optio. Omnis consequatur id asperiores quia dolorum in repellat non. Et et tempore reiciendis recusandae quod.', '1996-12-05 16:09:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '34', '74', 'Dolor tempora rerum libero magnam. Architecto sed et dolores beatae voluptatem ut autem. Excepturi repellendus excepturi repudiandae quod blanditiis repudiandae. Sit quasi eveniet nulla nemo quos tenetur animi.', '1980-10-20 07:01:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '92', '46', 'Id consequatur molestias architecto libero aut. Tempora delectus qui rerum veritatis iste iste id. Iste esse ea at omnis aspernatur nam.', '1981-08-20 14:38:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '62', '51', 'Reprehenderit at blanditiis debitis blanditiis accusantium quasi sed. Perferendis facilis ab maxime iure. Est esse rerum et quod.', '1977-04-25 10:13:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '86', '53', 'Cum maxime perferendis nemo asperiores distinctio et est. Omnis ad nisi vel dolores placeat voluptatem magnam. Beatae voluptas ut similique.', '1994-11-20 01:04:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '83', '1', 'Exercitationem sit neque dolorum unde. Harum beatae animi laboriosam molestiae sed ducimus. Laboriosam explicabo perspiciatis nesciunt autem soluta odit ipsum.', '1971-05-08 18:30:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '64', '80', 'Nam voluptas adipisci eos dignissimos. Fugit voluptatum consequatur minus odio aliquam rem. Voluptatum voluptatem cumque saepe odio voluptas ut. Dignissimos corporis autem quia debitis consequatur.', '2017-06-20 16:21:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '13', '51', 'Nemo est qui molestias neque optio. Et incidunt dolore dolorem autem aut. Quisquam harum porro voluptas cumque illo.', '2020-12-10 11:30:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '25', '54', 'Beatae soluta eum quos asperiores. Iure consequatur ut aut molestiae eligendi tenetur unde. Enim ut quo accusamus odio.', '1992-01-05 09:47:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '46', '97', 'Laborum labore modi aut ut totam tenetur. Quis similique autem voluptas et est vel quasi. Aperiam atque distinctio quaerat in ullam id alias.', '1995-09-05 22:34:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '67', '70', 'Voluptatem architecto assumenda molestias consequuntur cum velit. A quod dolores placeat molestias. Vel deserunt reiciendis optio. Eos architecto et reprehenderit. Nisi quia voluptas voluptatum quod laborum.', '1982-11-15 08:12:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '71', '53', 'Harum dolor laborum inventore expedita blanditiis nemo. Debitis dignissimos sint numquam ullam totam quod deleniti. Est dolorem aut delectus rerum dignissimos est et. Quis incidunt voluptatem enim quod.', '1986-11-29 06:25:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '45', '85', 'Cumque qui esse est modi fugiat laborum. Corporis eum tempore amet aut vel facilis id deleniti. Placeat cum consequatur doloremque aliquam voluptatem reprehenderit numquam sequi. Odit nam quis in alias eaque nihil non quo.', '1983-01-07 00:26:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '98', '99', 'Dolorum dolores commodi voluptas omnis. Itaque labore quam voluptas qui. Laudantium qui nulla et dolor quia quo cumque.', '1976-03-20 21:04:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '99', '66', 'Qui esse culpa dignissimos ullam est aut sed. Nulla tempora quia quia et voluptas officiis. Vel ipsa quia et voluptatem consequuntur est dolorem. Maxime harum impedit tempore.', '1994-12-15 05:39:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '50', '85', 'Qui tempore repellendus facilis incidunt. Quia vel nulla beatae ipsam fuga. Odit maiores nisi voluptatem perspiciatis placeat eligendi. Voluptatem nisi voluptates quidem qui quasi.', '1972-02-10 10:49:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '79', '41', 'Molestiae voluptatibus enim magnam cupiditate. Tempore soluta quibusdam architecto rem. Sunt eos praesentium cupiditate sit similique eos veritatis provident.', '2015-01-10 10:29:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '62', '71', 'Et quo incidunt distinctio et quo autem cupiditate. Sit in iure ut laboriosam reiciendis autem natus. Autem aliquid minima eos distinctio et earum maiores. Omnis est consequatur eos sed libero.', '2014-08-16 04:14:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '12', '31', 'Non cupiditate rem vitae explicabo id. Numquam voluptatem rem neque. Enim voluptas aperiam dolorem perferendis.', '2021-10-15 07:11:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '14', '75', 'Reprehenderit enim excepturi nam. Sint eaque saepe nihil rerum. Eligendi ipsum asperiores nesciunt quasi delectus. Sit adipisci commodi repellat quisquam et possimus. Provident architecto quibusdam ullam earum.', '1997-11-21 01:49:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '22', '100', 'Et voluptatum iure natus facilis possimus esse. Quam minima rerum voluptatem est nam laudantium inventore. Magni rem quo dignissimos dolorem.', '1996-03-15 07:27:50');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'ut', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'aperiam', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'voluptas', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'aut', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'eos', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'autem', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'sed', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'ut', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'quo', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'est', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'blanditiis', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'ut', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'corporis', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'voluptas', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'iure', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'voluptas', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'expedita', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'qui', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'sint', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'delectus', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'et', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'nisi', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'consectetur', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'inventore', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'voluptatem', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'qui', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'omnis', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'voluptatem', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'fuga', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'aut', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'tempora', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'laudantium', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'quo', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'ad', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'deserunt', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'et', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'ducimus', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'laboriosam', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'est', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'corporis', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'ut', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'hic', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'voluptatem', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'aperiam', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'est', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'non', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'commodi', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'et', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'sint', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'sunt', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'facilis', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'beatae', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'ratione', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'numquam', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'consequatur', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'consequatur', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'architecto', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'quas', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'sed', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'omnis', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'ut', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'dolor', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'qui', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'aut', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'rerum', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'reiciendis', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'et', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'voluptatem', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'illum', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'inventore', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'velit', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'sint', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'quidem', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'reprehenderit', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'et', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'eos', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'aut', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'enim', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'atque', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'ut', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'et', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'assumenda', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'est', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'ullam', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'nihil', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'ut', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'dolores', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'nesciunt', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'esse', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'est', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'sed', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'quia', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'repellendus', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'deleniti', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'esse', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'doloremque', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'aut', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'eligendi', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'fuga', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'soluta', '55');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '61', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '20', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '19', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '83', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '77', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '35', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '47', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '10', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '83', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '76', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '73', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '53', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '9', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '21', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '6', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '38', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '43', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '74', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '17', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '14', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '33', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '6', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '21', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '40', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '60', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '40', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '33', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '16', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '89', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '35', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '88', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '6', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '92', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '17', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '93', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '65', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '19', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '83', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '55', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '90', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '29', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '99', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '71', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '50', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '13', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '30', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '90', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '21', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '39', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '81', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '77', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '52', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '1', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '70', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '41', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '83', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '8', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '15', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '4', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '54', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '61', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '99', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '94', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '69', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '7', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '24', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '11', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '24', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '12', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '9', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '61', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '67', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '24', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '65', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '81', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '25', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '55', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '88', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '11', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '58', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '67', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '50', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '82', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '31', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '72', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '43', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '50', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '30', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '44', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '56', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '88', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '32', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '42', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '12', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '55', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '88', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '85', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '55', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '100', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '42', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', '', '1984-03-23', '1', '1984-02-25 08:47:03', 'Rauport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'F', '2003-05-10', '2', '2015-12-21 18:24:28', 'Pourosport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', '', '1970-10-31', '3', '1989-12-20 13:11:15', 'Port Omarihaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', '', '1999-02-03', '4', '1995-04-18 15:43:23', 'North Donavon');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', '', '1998-08-13', '5', '1991-10-01 09:41:41', 'East Natashaberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', '', '2009-07-24', '6', '1975-11-18 03:57:35', 'Alainatown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', '', '2016-01-25', '7', '1972-09-28 22:55:40', 'New Bernard');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', '', '2011-10-10', '8', '1985-08-09 22:16:37', 'East Verlie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', '', '1981-01-02', '9', '1972-04-15 20:46:24', 'New Polly');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', '', '2008-06-17', '10', '1982-01-31 02:43:57', 'Port Coralietown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'F', '1986-12-21', '11', '1976-07-30 00:42:03', 'Serenitymouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', '', '1976-11-26', '12', '2005-02-15 08:13:25', 'North Devontefurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'F', '1983-07-09', '13', '1987-07-22 20:42:10', 'East Hanna');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'F', '2004-04-22', '14', '1985-08-04 13:33:35', 'Swiftbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'F', '1988-10-24', '15', '2017-02-24 17:58:51', 'Yostfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', '', '1982-04-25', '16', '2001-06-08 10:19:36', 'Langoshside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'F', '1979-03-15', '17', '1987-07-23 19:10:26', 'Bashirianburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', '', '2015-02-26', '18', '2020-10-16 20:14:53', 'Jannieburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'F', '1972-07-17', '19', '1995-02-05 03:26:11', 'East Shannonchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'F', '1981-03-01', '20', '1981-01-10 18:14:06', 'New Amyborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'F', '1996-08-16', '21', '2005-12-10 15:35:07', 'North Yolanda');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', '', '1973-01-08', '22', '1996-03-19 02:27:32', 'Lake Jacques');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', '', '1980-05-03', '23', '1975-06-06 20:09:36', 'Port Priscillatown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'F', '2002-08-20', '24', '1988-02-02 13:46:47', 'Walterland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'F', '2020-10-21', '25', '2002-05-29 17:11:10', 'Kuhlmanhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', '', '2008-12-15', '26', '2020-07-24 04:37:53', 'West Coltenhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', '', '2006-12-05', '27', '1990-01-05 08:54:10', 'New Abner');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'F', '2000-10-17', '28', '1981-06-22 12:56:07', 'Millerbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', '', '2016-03-10', '29', '2012-01-23 11:28:37', 'Lake Martina');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'F', '1985-01-19', '30', '1987-11-30 14:35:43', 'Gerholdburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', '', '1973-08-25', '31', '1987-10-24 16:50:50', 'Lake Gildafort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'F', '2000-07-27', '32', '1985-01-19 12:41:17', 'North Glennieberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'F', '2006-07-29', '33', '2015-10-16 20:43:54', 'Mantebury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', '', '2019-02-23', '34', '1992-02-01 22:02:45', 'East Dora');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'F', '1977-05-07', '35', '1979-09-08 20:07:45', 'New Alexane');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'F', '2020-11-15', '36', '2018-08-25 03:01:30', 'Lake Samanthamouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', '', '2022-01-29', '37', '1994-08-29 02:40:40', 'Shayleetown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', '', '2016-05-22', '38', '1972-08-07 22:45:14', 'Lake Margotside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', '', '1980-11-25', '39', '1987-04-04 22:45:13', 'North Cynthiatown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', '', '1997-12-07', '40', '1970-06-25 08:36:04', 'West Kallie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', '', '1984-09-28', '41', '1994-05-08 08:48:44', 'Port Chad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', '', '1977-02-04', '42', '1994-07-09 03:48:45', 'West Sigrid');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', '', '1984-11-22', '43', '1993-05-21 06:23:07', 'Port Geovany');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'F', '1971-03-22', '44', '1995-03-02 20:35:01', 'Port Karolann');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'F', '1978-08-02', '45', '1976-10-04 18:12:28', 'Gabriellaview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'F', '1995-06-22', '46', '2000-01-14 20:51:15', 'Lake Dulce');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'F', '1999-01-17', '47', '2007-04-10 17:11:30', 'West Baronfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'F', '2021-05-28', '48', '2022-09-05 08:22:48', 'East Yazmin');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'F', '2009-04-24', '49', '2014-02-24 19:48:43', 'Port Alexaton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', '', '2007-02-01', '50', '1971-05-07 00:56:41', 'New Jayceeside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', '', '1996-04-07', '51', '1986-11-12 23:00:39', 'Lorastad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'F', '2010-11-14', '52', '1980-03-26 04:53:27', 'East Abigailchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'F', '2009-07-30', '53', '2018-07-26 13:06:21', 'New Oswaldoport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', '', '1977-06-16', '54', '1999-10-20 08:37:03', 'Alexaberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'F', '1996-07-18', '55', '2001-07-27 12:47:11', 'New Patsy');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', '', '1972-03-31', '56', '1999-01-20 10:29:18', 'Lake Katherine');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'F', '1976-01-02', '57', '1972-10-24 06:24:43', 'East Everettview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', '', '1997-01-10', '58', '1974-11-07 11:45:11', 'Ullrichtown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', '', '2019-11-03', '59', '1987-06-27 05:59:13', 'North Luestad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'F', '2001-10-27', '60', '1992-11-02 15:15:32', 'Runtebury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', '', '2004-11-28', '61', '2009-01-07 04:38:01', 'Hamillside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', '', '1984-05-04', '62', '2002-12-31 12:38:14', 'Martinaborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'F', '2010-06-15', '63', '1988-12-22 00:56:49', 'Dietrichbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'F', '1997-12-15', '64', '2000-10-30 19:44:14', 'New Chelsie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'F', '1974-10-09', '65', '2005-08-07 11:20:18', 'Josefamouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', '', '1995-06-24', '66', '1973-07-22 03:47:58', 'Casperberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'F', '2001-04-16', '67', '2020-03-22 09:29:39', 'New Odie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', '', '1999-02-20', '68', '1973-12-24 13:07:48', 'West Mallieton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'F', '1977-11-12', '69', '1975-12-17 09:50:38', 'Lake Noemieview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'F', '1980-07-01', '70', '1980-11-20 05:18:27', 'Noestad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', '', '1983-11-23', '71', '2021-01-22 04:28:42', 'North Dorcastown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', '', '1977-05-09', '72', '2013-04-08 23:53:15', 'Port Leonard');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', '', '1982-05-17', '73', '2015-03-17 06:09:56', 'South Jadynfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', '', '2003-06-14', '74', '1994-06-07 02:43:35', 'Lake Stacy');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', '', '2001-06-06', '75', '1972-03-11 11:22:26', 'West Theresaburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', '', '1979-05-22', '76', '1980-10-18 08:37:19', 'Lake Aiden');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', '', '2012-10-14', '77', '2007-01-10 21:13:37', 'Jakubowskiton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', '', '1997-10-25', '78', '2002-07-02 13:03:25', 'Vladimirview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', '', '1993-05-01', '79', '2006-11-26 16:38:53', 'Schneiderland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'F', '1994-06-15', '80', '1995-02-16 10:44:55', 'North Cobytown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', '', '1982-10-05', '81', '1984-03-01 00:47:10', 'Nellaborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', '', '1998-09-13', '82', '2021-02-09 22:44:43', 'Horacioton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'F', '1975-12-24', '83', '2000-01-23 21:12:54', 'Port Jarod');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'F', '1979-04-25', '84', '2016-03-24 15:39:16', 'East Emil');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'F', '1987-02-20', '85', '2004-09-21 11:05:43', 'North Isabellville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', '', '1999-07-23', '86', '1983-11-22 13:38:42', 'Port Virgieburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'F', '2010-12-21', '87', '1988-03-16 03:18:59', 'Whitebury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'F', '2000-02-06', '88', '1977-08-13 12:01:41', 'Dickiburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', '', '1997-06-01', '89', '1973-08-11 20:43:09', 'North Claudeshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'F', '2010-11-03', '90', '1981-07-14 07:07:18', 'Port Giuseppeview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', '', '1988-02-09', '91', '1982-10-12 03:38:28', 'West Eldoraberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'F', '1981-08-15', '92', '2007-10-03 11:34:50', 'Lake Lelah');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'F', '1971-05-06', '93', '1978-01-28 06:10:34', 'Port Arvelhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', '', '1990-07-17', '94', '1971-06-24 18:27:07', 'Kaylinton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'F', '2016-11-22', '95', '1986-07-17 19:37:03', 'Demetriusside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', '', '1971-02-24', '96', '1997-10-02 04:00:11', 'North Macie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'F', '1992-02-16', '97', '1988-06-23 20:08:22', 'Flossieville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', '', '1978-06-09', '98', '2004-11-07 02:07:25', 'Lake Quincychester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'F', '1972-01-22', '99', '1977-07-09 13:53:39', 'Willbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'F', '1970-02-14', '100', '2014-05-30 07:28:29', 'New Lloydville');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Velva', 'Becker', 'nkshlerin@example.com', '604c9f13d2ceb083c22b822aef9c350f3b34674c', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Emmie', 'Blanda', 'cassin.finn@example.org', '52e13d5197b44fb69b3d441aadfee21049060bbc', '2010523850', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Camila', 'Quitzon', 'felicita55@example.net', '64e61918d9f4cba94974929e9a802dd21bebac75', '5', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Milan', 'Herman', 'furman07@example.com', '8e6d7349b719bee7fbacabeef84a1f032161398f', '179953', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Jack', 'Herman', 'aric94@example.com', '2d95703457ae437021430b58d9d0bc3fb7ff3046', '37', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Cicero', 'Kulas', 'kemmer.wilmer@example.net', 'd1f47dc8fe03b6a5dda4b267b2260fa524e8e764', '924', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Amya', 'Davis', 'maxine40@example.org', '938eca118a8de360340c141c12c1af96b3ab993a', '110', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Maureen', 'Little', 'vlynch@example.com', '025e99afb5f756a7cb60804ec6b458f6487ca1e5', '554856', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Rosalind', 'Koch', 'ykessler@example.com', 'a9a7c222f418c585d9626cc5c32167680c53e3da', '197252', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Hortense', 'Fisher', 'sfriesen@example.com', '956ccf7b99384e695132d2a9ec037340efc7ba5a', '282040', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Alessandro', 'Kuvalis', 'hschowalter@example.net', '5deadfba5c18ab73662c4700ec3095cc93923328', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Mallory', 'Bernhard', 'kelley61@example.net', '5010b93de5990e79239161802e5f6eb6db49f5e3', '571556', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Friedrich', 'Yundt', 'julian49@example.net', 'dfc61a24698c9ec9d087cf5aed51a291c62fee22', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Linnea', 'Trantow', 'watsica.jewell@example.org', '80ee6ca624f85df7810a013b3333c52e36ce7f8f', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Vena', 'Bednar', 'cjast@example.net', '555242cddb869844db4f06eedfac7b64b9a7657c', '710', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Mercedes', 'Gleichner', 'dwaters@example.net', 'c54d5ff1b06178ab95cb90da58d64445d0181a8d', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Maia', 'Mills', 'lowe.bobbie@example.net', 'ec86d080349486ab49c538774670aa082a8bf0b0', '54', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'May', 'Ernser', 'orpha.schinner@example.org', '05b3fb3e522265e873464a38aa9ec45cb8e37b21', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Luna', 'Russel', 'vonrueden.angel@example.org', 'a17e697e9eb62a837e4e000dd3380ba0fb7edb8c', '699982', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Myrtle', 'Leffler', 'hillard.wiza@example.net', '6fb15a17120f3fee07015724a6520f3e7eb02a22', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Kyla', 'Armstrong', 'kathryne52@example.org', 'f31766e04f97051de260392386c8fbdc450e8387', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Nettie', 'Greenfelder', 'raphael06@example.com', 'd2846e3b06e6b33c813623bf0e5bf5986694c2a1', '508', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Cayla', 'Walsh', 'deckow.eden@example.org', '61d825f6e87537e0f6ef343063c9e33d56275ca3', '932', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Cathrine', 'Rogahn', 'habbott@example.net', '78d231b7078b4d8e6c9ccf4c54a22c972cbd0ef9', '607280', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Watson', 'Weissnat', 'lowe.garret@example.net', '876ab664886bd0d3eb8c5f6f4642332c394cb5e2', '986831', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Jed', 'Crist', 'denesik.gaetano@example.org', 'ff5151abb13fdfbb84e6fe49b78e45193ac40785', '624', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Gladyce', 'Nikolaus', 'margie63@example.com', '9faff4c87f1bcaecf20ac35a560112b7642ed27b', '36', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Raina', 'Swaniawski', 'nicolas.howell@example.org', '80971d02f840b859cfcc7f3755b3c182e63c4156', '414233', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Wilford', 'Schmitt', 'ekirlin@example.net', '4c985583537eb7e162de742e2207b5d147501d0f', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Zoila', 'Rolfson', 'brakus.letitia@example.org', 'a60cfe5747ab64ca969e2891889a70c4fc378189', '702554', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Alene', 'West', 'lmclaughlin@example.net', '515d5b3dedc9205e7448fc870535c8b1061c98be', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Max', 'Vandervort', 'andrew56@example.net', '989d188645da3be5799f79ac03fdbf99cf17bd9e', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Devante', 'Nolan', 'amari03@example.org', 'ebb0325d2823dc547a7344485bebbe7ae00dd865', '3077882375', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Theodora', 'Jacobson', 'xhyatt@example.net', '5c184020fcf0544b735a31181d592e9326a278d1', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Chasity', 'Towne', 'lilian.olson@example.net', '4f6bccbb714094d6b4f21abf303e13d35059acd6', '982', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Chet', 'Stark', 'waufderhar@example.org', '08c4c8978344fd37185441b4bb484011a7f847b8', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Thea', 'Hayes', 'lmclaughlin@example.com', 'b5ce799fd7a3dff6d5ab8ab8dc716038dba15b89', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Clara', 'Moore', 'destiny.von@example.com', 'ed84fd4ed984999d0e02733b84a064a84cc8a93e', '2316216101', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Vladimir', 'Lehner', 'arnulfo.roberts@example.org', '1c113ed6debe541678df8349b10d224d5e5eeafb', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Alisha', 'Turcotte', 'qcarter@example.net', 'db1de5291cf2e71482b0e9a14b1768cd71184d26', '118296', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Ludwig', 'Reynolds', 'effertz.madonna@example.net', '585be149fdb172d1edf3a70ed48b17172b79e1b0', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Mara', 'Rogahn', 'josiah.beer@example.com', 'dc8664114d5d1f949909c2b67fd694cc2a99881f', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Krista', 'Koelpin', 'leonardo84@example.net', 'd0f8059f58a627014f7fb703e2918d0ef54a8410', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Chanelle', 'Weissnat', 'lily.hackett@example.org', '5fc0551d99f98bd30c2a552a6aebf586e3a9e824', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Rolando', 'Crona', 'grimes.eloise@example.org', 'ddc0a688de3ca3d3f59c303e8fb8a9d4f8e437ff', '969', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Payton', 'Prosacco', 'emmet71@example.com', 'a7c0c1da8d94d4e12f3c6644967e1be12d84d529', '7264525392', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Norval', 'Stehr', 'ima77@example.org', '99f08d1d8a1a8f1d246266abbb4ed033e8775c36', '861897', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Stewart', 'Prohaska', 'hettinger.fred@example.net', '3ee51eca58530610a934d587e92895e62f3d80db', '2039127790', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Demarcus', 'Torp', 'gage10@example.com', '73b7493b13aa3812efcf0955dc9bc9defc246722', '948', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Dallin', 'Schaden', 'wglover@example.org', 'e8376b8dd75866ecd9707ec8235605afc14eed84', '4581961835', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Patsy', 'Cruickshank', 'joany.gutmann@example.net', '7dae032be165bc4aef7eebc0af1b67be39625db6', '490240', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Deion', 'Nolan', 'ibrahim82@example.net', '52a73123a623b460dae645040a45d41b6b3be2b3', '509770', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Armando', 'West', 'hector.torphy@example.com', '0cecc7ec8046468b88f62aadaf6f49537b85bdbc', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Terrill', 'Runolfsson', 'wellington95@example.net', 'd41af0af80fca42c8b431f6fc0056df9eca8357f', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Mellie', 'Kling', 'dstracke@example.com', '892188bffc3588076feb8806a557cfb173a05ac9', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Zaria', 'Hackett', 'ostroman@example.com', '87c87eaeb5d08bc4c75b1343fdd79b761c0f9f73', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Donny', 'Legros', 'eloy.osinski@example.org', '160d5fe8e050052485bda6419e7dacf849e7accc', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Alanna', 'Mills', 'ejakubowski@example.com', 'd9e6c40ac1021d06e94834e84a35dcd65fafabf0', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Nikko', 'O\'Reilly', 'gusikowski.maude@example.net', '85c16b9b5f57fcab33d6aebf7fae20eae1211ee9', '671', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Russel', 'Jerde', 'dooley.jake@example.com', '06285f8af00aa9e4631115932442f024b0021b83', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Roman', 'Hartmann', 'zmonahan@example.com', 'dcd0bdbe530eed4959777955402ae9fabf41766d', '895133', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Alexandrea', 'Brown', 'daniel.bernadette@example.com', '00e125bb7d24290bdb61aa19d40599376d774cd0', '751', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Rosa', 'Paucek', 'kertzmann.heaven@example.org', '937a3ff05dd0f5b20e467c84ace03d793db372b2', '369', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Abigail', 'Murazik', 'emilie.buckridge@example.org', 'a6e22e758ca3ee5817c8f602fc438d4331e099fc', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Janessa', 'O\'Hara', 'harmony.renner@example.net', '3c7ea1d516275a197d85c6b3e0009aadb30972be', '62', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Dana', 'Schowalter', 'crooks.alexandra@example.org', 'd954ed8814dfd0d7cd4f1b991c84cf6ab1406db5', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Owen', 'Wintheiser', 'howe.amelia@example.com', '057ff26ebf5131e00de6123e626f99a6527df5c1', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Kaycee', 'Cummings', 'fyost@example.com', '5d21d10a474acf0d81b3e4ba3558cb8ee0052280', '655', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Gaylord', 'Heidenreich', 'pweissnat@example.org', '362657c8b645dbe029dd2005a72ab89a2496d23e', '852', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Arnaldo', 'Hoeger', 'sylvan.pollich@example.com', 'b52280a4fd7c2e476507040ee15c8d62cdd5fd47', '986829283', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Carmelo', 'Larson', 'ismael.pagac@example.net', '014100a390ad7fdcdf0ed5ea62f182d012b328a8', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Carlo', 'White', 'flang@example.org', 'c9447854778f64910ffef85b5d2717d8fa4d7cf8', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Cleta', 'Gerlach', 'adolfo.koss@example.net', 'd78ea3f98a0ec52fafcae702c8f4b8c43d669406', '977310', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Garett', 'Murphy', 'jaeden17@example.net', 'ffdcc8b6a0c932ce9debef0f42c9985bd5b4175c', '655318', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Leo', 'Rau', 'jack.rempel@example.net', '076a57495f5ec809758f79280e627f86976e7c07', '259338', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Aidan', 'Botsford', 'hgrant@example.com', '7ed1e5bc37febc36020333cee33d73c5f5ae424b', '601958', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Zane', 'White', 'mara00@example.net', 'aab281a63eef7646bd916cd4ac29879b51b3ecb2', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Vicenta', 'Dietrich', 'o\'hara.chad@example.net', '86f105598b7cf369957e6cee29c17675f963fe15', '948083', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Monica', 'Walsh', 'qbatz@example.com', '2e0391afeb7e29181bb02c9173fe9b6803d09783', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Marguerite', 'Murazik', 'jaime56@example.com', '1225b2dba29c05f1ddab276e8f73a33d1da5d74b', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Emmanuelle', 'Donnelly', 'rodriguez.mabel@example.net', 'a4e0603aef3636136dd2341cc1d39204efbc1169', '333', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Gerry', 'Abbott', 'smith.kieran@example.net', 'a55d5b3c3f43f2713a68912ef32207a5a2b68e13', '501', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Chyna', 'Pagac', 'carley.vandervort@example.com', 'd734d26203c4e6f956e09541bf36c9c75fd427fe', '460168', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Ryder', 'Goyette', 'isabelle.schuster@example.org', '06d924d54f863b42b8a050cb8d7475d36283808f', '8888035346', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Jett', 'O\'Connell', 'adriana49@example.com', 'f8c86e1556abafcddb6c33b20e10133a9502e3c6', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Cordell', 'Littel', 'mueller.elias@example.org', '12f322189bbf533b4bad1d425922448dc5846929', '234168', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Margret', 'Smith', 'mario.schoen@example.org', '7f74b09b6a6e516a3b98ba8f0b09fc6b701796dc', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Ramiro', 'Pagac', 'nella87@example.net', '261715e6576c2f5c35e303cd5fd47987c57866a9', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Nya', 'Bradtke', 'agnes.marks@example.com', '9022f215ffd5e185c665a0aaf7fd59d4fe1aefed', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Berta', 'Labadie', 'abbey.sipes@example.org', '5f17d2e30eca291c471ff759f227fd4ba6908705', '24', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Olin', 'Hoeger', 'kulas.deonte@example.com', 'df4b4dd427aaaee1e8e430279d61073282ed40ac', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Vern', 'Hermiston', 'aletha.runolfsson@example.com', 'c0d590e2b34167d1f0a558b52adbba437ef3a6ce', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Ernestina', 'Kuhn', 'demond91@example.net', '486be790053b6b866be272282ae588f211796a6e', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Matilde', 'Marquardt', 'thermann@example.com', 'cb1911319ce017b45978d8de08cab47107db3793', '73', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Samantha', 'Maggio', 'jroberts@example.net', '65e27073284ef248180efcbf6e35776cc65ba363', '10', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Reinhold', 'Conn', 'hintz.mittie@example.org', '68b1b8f84e51f5a9a38a48e9d0833fff37d3b1c2', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Emilie', 'Deckow', 'langworth.cydney@example.com', '63530cd0d1d79d75aba81d6441ac92607bdeca7a', '72', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Rosemarie', 'Dicki', 'nels37@example.com', '39f452f7ee3ff95579e587ec15431ff8c8caa7ae', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Logan', 'Swaniawski', 'melany64@example.org', '2ea38b58db84bb46fe3fe53882dcd8be4fb26ee6', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Duane', 'Runolfsdottir', 'ben59@example.net', 'f568b7e23e31db96572e3000831d0c50e224c3da', '1699746887', '1');


