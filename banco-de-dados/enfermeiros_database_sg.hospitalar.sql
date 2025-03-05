CREATE TABLE `enfermeiros` (
  `enfermeiro_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bi` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` enum('estagiario','efetivo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'efetivo',
  `registro_corens` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`enfermeiro_id`),
  UNIQUE KEY `enfermeiros_bi_unique` (`bi`),
  UNIQUE KEY `enfermeiros_registro_corens_unique` (`registro_corens`),
  KEY `enfermeiros_usuario_id_foreign` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;