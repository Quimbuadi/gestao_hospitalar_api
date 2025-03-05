CREATE TABLE `tipo_consultas` (
  `tipo_consulta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `duracao` int DEFAULT NULL,
  `especialidade_id` bigint unsigned NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tipo_consulta_id`),
  KEY `tipo_consultas_especialidade_id_foreign` (`especialidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `tipo_consultas` (`ativo`, `created_at`, `descricao`, `duracao`, `especialidade_id`, `nome`, `tipo_consulta_id`, `updated_at`) values (1, '2025-02-22 16:45:18', 'Avaliação médica periódica.', 30, '1', 'Consulta de Rotina', '1', '2025-02-22 16:45:18');
insert into `tipo_consultas` (`ativo`, `created_at`, `descricao`, `duracao`, `especialidade_id`, `nome`, `tipo_consulta_id`, `updated_at`) values (1, '2025-02-22 16:46:04', 'Consulta com especialista.', 45, '2', 'Consulta Especializada', '2', '2025-02-22 23:22:01');
insert into `tipo_consultas` (`ativo`, `created_at`, `descricao`, `duracao`, `especialidade_id`, `nome`, `tipo_consulta_id`, `updated_at`) values (1, '2025-02-22 23:10:50', 'Consulta de cardio normal', 33, '1', 'Consulta Normal', '3', '2025-02-22 23:10:50');
