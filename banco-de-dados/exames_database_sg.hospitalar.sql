CREATE TABLE `exames` (
  `exame_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint unsigned NOT NULL,
  `medico_responsavel` bigint unsigned NOT NULL,
  `tipo_exame` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_exame` datetime NOT NULL,
  `resultado` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`exame_id`),
  KEY `exames_paciente_id_foreign` (`paciente_id`),
  KEY `exames_medico_responsavel_foreign` (`medico_responsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;