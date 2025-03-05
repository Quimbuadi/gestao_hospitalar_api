CREATE TABLE `salas` (
  `sala_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sala_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `salas` (`created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('2025-02-20 16:36:58', 'Sala de cirurgia', '0', '1', '2025-02-24 14:47:58');
insert into `salas` (`created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('2025-02-20 16:37:03', 'Sala 02', '0', '2', '2025-02-20 16:37:03');
insert into `salas` (`created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('2025-02-20 16:37:09', 'Sala 03', '0', '3', '2025-02-20 16:37:09');
insert into `salas` (`created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('2025-02-20 16:37:15', 'Sala 04', '0', '4', '2025-02-20 16:37:15');
insert into `salas` (`created_at`, `descricao`, `estado`, `sala_id`, `updated_at`) values ('2025-02-20 17:07:18', 'Sala de parto', '0', '6', '2025-02-20 17:07:42');
