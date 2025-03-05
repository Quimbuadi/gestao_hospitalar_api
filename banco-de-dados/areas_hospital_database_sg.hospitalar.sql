CREATE TABLE `areas_hospital` (
  `area_hospital_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`area_hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `areas_hospital` (`area_hospital_id`, `created_at`, `descricao`, `estado`, `updated_at`) values ('1', '2025-02-20 17:20:57', 'Pediatria', '0', '2025-02-21 22:07:39');
insert into `areas_hospital` (`area_hospital_id`, `created_at`, `descricao`, `estado`, `updated_at`) values ('2', '2025-02-20 17:21:08', 'Maternidade', '0', '2025-02-21 22:07:21');
insert into `areas_hospital` (`area_hospital_id`, `created_at`, `descricao`, `estado`, `updated_at`) values ('3', '2025-02-20 17:39:13', 'Pátio 1', '0', '2025-02-20 17:39:29');
