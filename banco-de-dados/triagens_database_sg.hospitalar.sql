CREATE TABLE `triagens` (
  `triagem_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint unsigned NOT NULL,
  `temperatura` int DEFAULT NULL,
  `tensao_arterial` int DEFAULT NULL,
  `peso` double(8,2) DEFAULT NULL,
  `frequencia_respiratoria` int DEFAULT NULL,
  `frequencia_cardiaca` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`triagem_id`),
  KEY `triagens_paciente_id_foreign` (`paciente_id`),
  CONSTRAINT `triagens_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `triagens` (`created_at`, `frequencia_cardiaca`, `frequencia_respiratoria`, `paciente_id`, `peso`, `temperatura`, `tensao_arterial`, `triagem_id`, `updated_at`) values ('2025-03-04 15:50:34', 55, 34, '2', 23.3, 26, 12, '1', '2025-03-04 15:50:34');
