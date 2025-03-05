CREATE TABLE `tipo_servicos` (
  `tipo_servico_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `duracao` int DEFAULT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tipo_servico_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `tipo_servicos` (`ativo`, `created_at`, `descricao`, `duracao`, `nome`, `tipo_servico_id`, `updated_at`) values (1, '2025-02-22 16:49:43', 'Hemograma completo.', 15, 'Exame de Sangue', '1', '2025-02-23 21:05:03');
insert into `tipo_servicos` (`ativo`, `created_at`, `descricao`, `duracao`, `nome`, `tipo_servico_id`, `updated_at`) values (1, '2025-02-22 16:50:12', 'Exame de imagem por ultrassom.', 30, 'Ultrassonografia', '2', '2025-02-22 16:50:12');
