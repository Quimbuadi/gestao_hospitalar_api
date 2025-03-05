CREATE TABLE `faturas` (
  `fatura_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint unsigned NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data_emissao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_pagamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`fatura_id`),
  KEY `faturas_paciente_id_foreign` (`paciente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;