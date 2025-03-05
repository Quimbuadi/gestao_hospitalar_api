CREATE TABLE `especialidades` (
  `especialidade_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`especialidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `especialidades` (`ativo`, `created_at`, `descricao`, `especialidade_id`, `nome`, `updated_at`) values (1, '2025-02-22 16:24:16', 'Cuida do sistema cardiovascular.', '1', 'Cardiologia', '2025-02-22 16:24:16');
insert into `especialidades` (`ativo`, `created_at`, `descricao`, `especialidade_id`, `nome`, `updated_at`) values (1, '2025-02-22 16:25:09', 'Tratamento de doenças da pele.', '2', 'Dermatologia', '2025-02-23 20:02:55');
insert into `especialidades` (`ativo`, `created_at`, `descricao`, `especialidade_id`, `nome`, `updated_at`) values (1, '2025-02-23 13:25:57', 'O pai grande das pussy', '3', 'Genicologista', '2025-02-23 13:25:57');
