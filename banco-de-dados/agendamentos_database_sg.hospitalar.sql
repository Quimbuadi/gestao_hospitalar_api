CREATE TABLE `agendamentos` (
  `agendamento_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint unsigned NOT NULL,
  `medico_id` bigint unsigned NOT NULL,
  `tipo_agendamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_agendamento` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`agendamento_id`),
  KEY `agendamentos_paciente_id_foreign` (`paciente_id`),
  KEY `agendamentos_medico_id_foreign` (`medico_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;