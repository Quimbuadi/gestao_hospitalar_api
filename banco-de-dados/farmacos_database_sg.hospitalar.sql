CREATE TABLE `farmacos` (
  `farmaco_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosagem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forma_farmaceutica` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `estoque` int NOT NULL DEFAULT '0',
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`farmaco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `farmacos` (`created_at`, `descricao`, `dosagem`, `estoque`, `farmaco_id`, `forma_farmaceutica`, `nome`, `updated_at`, `validade`) values ('2025-02-22 16:19:54', 'Analgésico e antitérmico.', '500mg', 100, '1', 'Comprimido', 'Paracetamol', '2025-02-22 16:19:54', '2025-12-31');
insert into `farmacos` (`created_at`, `descricao`, `dosagem`, `estoque`, `farmaco_id`, `forma_farmaceutica`, `nome`, `updated_at`, `validade`) values ('2025-02-22 16:20:03', 'Anti-inflamatório não esteroide.', '200mg', 50, '2', 'Cápsula', 'Ibuprofeno2', '2025-02-22 16:23:16', '2026-05-20');
insert into `farmacos` (`created_at`, `descricao`, `dosagem`, `estoque`, `farmaco_id`, `forma_farmaceutica`, `nome`, `updated_at`, `validade`) values ('2025-02-22 21:34:43', 'hndfnfngv', '300ml', 45, '3', 'Comprimido', 'Dolaren', '2025-02-22 21:41:19', '2026-12-11');
