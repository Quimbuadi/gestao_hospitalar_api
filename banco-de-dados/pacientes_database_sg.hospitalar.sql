CREATE TABLE `pacientes` (
  `paciente_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `sexo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `grupo_sanguineo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `pacientes` (`created_at`, `data_nascimento`, `email`, `endereco`, `grupo_sanguineo`, `nome`, `paciente_id`, `sexo`, `telefone`, `updated_at`) values ('2025-02-15 02:15:16', '2000-02-11', 'laurindo@gmail.com', 'Luanda, Malueca', 'A+', 'Laurindo Gomes', '1', 'M', '941608052', '2025-02-24 19:20:39');
insert into `pacientes` (`created_at`, `data_nascimento`, `email`, `endereco`, `grupo_sanguineo`, `nome`, `paciente_id`, `sexo`, `telefone`, `updated_at`) values ('2025-02-15 02:16:11', '2002-05-12', 'isabel@gmail.com', 'Luanda, Kilamba', NULL, 'Isabel Manuel', '2', 'F', '954328765', '2025-02-15 02:16:11');
insert into `pacientes` (`created_at`, `data_nascimento`, `email`, `endereco`, `grupo_sanguineo`, `nome`, `paciente_id`, `sexo`, `telefone`, `updated_at`) values ('2025-03-03 21:39:07', '1999-06-21', 'orlando@gmail.com', 'Talatona, Belas', 'AB+', 'Orlando Miguel', '3', 'M', '923675422', '2025-03-03 21:39:07');
