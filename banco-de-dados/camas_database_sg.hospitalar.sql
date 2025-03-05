CREATE TABLE `camas` (
  `cama_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sala_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`cama_id`),
  KEY `camas_sala_id_foreign` (`sala_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('1', '2025-02-18 07:53:53', 'Cama 01', '0', '1', '2025-02-18 07:53:53');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('2', '2025-02-18 07:54:04', 'Cama 02', '0', '1', '2025-02-18 07:54:04');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('3', '2025-02-18 07:54:09', 'Cama 03', '0', '3', '2025-02-18 07:54:09');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('4', '2025-02-18 07:54:15', 'Cama 04', '0', '6', '2025-02-18 07:54:15');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('5', '2025-02-18 07:54:21', 'Cama 05', '0', '4', '2025-03-04 13:40:46');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('6', '2025-02-18 14:43:46', 'Cama 06', '0', NULL, '2025-02-18 21:01:04');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('7', '2025-02-18 15:02:16', 'cama 70', '0', NULL, '2025-02-18 17:18:16');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('8', '2025-02-18 15:26:07', 'Cama 08', '0', NULL, '2025-02-18 15:26:07');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('9', '2025-02-18 15:54:40', 'cama 90', '0', NULL, '2025-02-18 19:24:42');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('11', '2025-02-18 17:22:07', 'Cama 10', '0', NULL, '2025-02-18 17:22:07');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('12', '2025-02-18 18:56:21', 'Cama 11', '0', NULL, '2025-02-18 18:56:21');
insert into `camas` (`cama_id`, `created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('14', '2025-02-18 19:08:04', 'cama 12', '0', NULL, '2025-02-18 19:08:04');
