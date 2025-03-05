CREATE TABLE `leitos` (
  `leito_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `numero_leito` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_leito_id` bigint unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`leito_id`),
  KEY `leitos_categoria_leito_id_foreign` (`categoria_leito_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;