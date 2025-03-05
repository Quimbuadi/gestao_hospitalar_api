CREATE TABLE `estoque_medicamentos` (
  `movimentacao_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `medicamento_id` bigint unsigned NOT NULL,
  `tipo_movimentacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade` int NOT NULL,
  `data_movimentacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`movimentacao_id`),
  KEY `estoque_medicamentos_medicamento_id_foreign` (`medicamento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;