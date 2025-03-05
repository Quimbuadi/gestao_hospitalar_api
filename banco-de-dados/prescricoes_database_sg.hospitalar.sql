CREATE TABLE `prescricoes` (
  `prescricao_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint unsigned NOT NULL,
  `medicamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosagem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posologia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`prescricao_id`),
  KEY `prescricoes_paciente_id_foreign` (`paciente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;