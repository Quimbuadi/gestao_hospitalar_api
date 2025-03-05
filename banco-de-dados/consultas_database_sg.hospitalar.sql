CREATE TABLE `consultas` (
  `consulta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint unsigned NOT NULL,
  `profissional_saude_id` bigint unsigned NOT NULL,
  `data_consulta` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipo_servico_id` bigint unsigned NOT NULL,
  `tipo_consulta_id` bigint unsigned NOT NULL,
  `prioridade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`consulta_id`),
  KEY `consultas_paciente_id_foreign` (`paciente_id`),
  KEY `consultas_medico_id_foreign` (`profissional_saude_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `consultas` (`consulta_id`, `created_at`, `data_consulta`, `observacoes`, `paciente_id`, `prioridade`, `profissional_saude_id`, `status`, `tipo_consulta_id`, `tipo_servico_id`, `updated_at`) values ('2', '2025-02-15 02:20:15', '2025-03-10 00:00:00', 'Consulta pela primeira vez', '1', '', '3', 'Aberta', '2', '1', '2025-02-15 02:20:15');
insert into `consultas` (`consulta_id`, `created_at`, `data_consulta`, `observacoes`, `paciente_id`, `prioridade`, `profissional_saude_id`, `status`, `tipo_consulta_id`, `tipo_servico_id`, `updated_at`) values ('3', '2025-02-15 02:21:08', '2025-02-15 10:00:00', 'Consulta pela primeira vez', '2', '', '1', 'Aberta', '1', '2', '2025-02-15 02:21:08');
insert into `consultas` (`consulta_id`, `created_at`, `data_consulta`, `observacoes`, `paciente_id`, `prioridade`, `profissional_saude_id`, `status`, `tipo_consulta_id`, `tipo_servico_id`, `updated_at`) values ('7', '2025-03-01 13:35:06', '2025-03-11 16:18:00', 'sdhbfzhfjg', '2', 'URGENTE', '2', NULL, '2', '2', '2025-03-01 13:35:06');
