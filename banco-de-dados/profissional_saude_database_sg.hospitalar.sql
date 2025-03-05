CREATE TABLE `profissional_saude` (
  `profissional_saude_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_profissional` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_nascimento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`profissional_saude_id`),
  UNIQUE KEY `profissional_saude_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `profissional_saude` (`created_at`, `data_nascimento`, `email`, `endereco`, `nome`, `profissional_saude_id`, `sexo`, `telefone`, `tipo_profissional`, `updated_at`) values ('2025-02-27 19:51:21', '1988-11-09', 'carlos.silva@hospital.com', 'Rua das Palmeiras, 123, Luanda', 'Dr. Carlos Silva', '1', 'M', '923456789', 'Médico', '2025-02-28 11:05:13');
insert into `profissional_saude` (`created_at`, `data_nascimento`, `email`, `endereco`, `nome`, `profissional_saude_id`, `sexo`, `telefone`, `tipo_profissional`, `updated_at`) values ('2025-02-27 19:52:35', '1999-08-12', 'maria.oliveira@hospital.com', 'Av. Central, 45, Benguela', 'Enf. Maria Oliveira', '2', 'F', '924567890', 'Enfermeiro', '2025-02-28 11:04:48');
insert into `profissional_saude` (`created_at`, `data_nascimento`, `email`, `endereco`, `nome`, `profissional_saude_id`, `sexo`, `telefone`, `tipo_profissional`, `updated_at`) values ('2025-02-27 19:53:20', '1979-11-10', 'joao.pedro@clinica.com', 'Travessa do Sol, 78, Huambo', 'Dr. João Pedro', '3', 'M', '922678901', 'Fisioterapeuta', '2025-02-28 11:05:49');
insert into `profissional_saude` (`created_at`, `data_nascimento`, `email`, `endereco`, `nome`, `profissional_saude_id`, `sexo`, `telefone`, `tipo_profissional`, `updated_at`) values ('2025-02-28 11:09:38', '2000-02-01', 'laurindo@gmail.com', 'Viana, Luanda-sul', 'Laurindo Bernardo', '4', 'M', '956321145', 'Genicologista', '2025-02-28 11:09:38');
insert into `profissional_saude` (`created_at`, `data_nascimento`, `email`, `endereco`, `nome`, `profissional_saude_id`, `sexo`, `telefone`, `tipo_profissional`, `updated_at`) values ('2025-03-04 17:36:51', '2000-01-12', 'antonioquimbuadi@gmail.com', 'Cazenga/Malueka', 'António Quimbuadi Gonçalves', '5', 'M', '937579318', 'Genicologista', '2025-03-04 17:36:51');
