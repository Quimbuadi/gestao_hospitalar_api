CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;insert into `migrations` (`batch`, `id`, `migration`) values (1, 1, '2014_10_12_000000_create_usuarios_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 2, '2019_12_14_000001_create_personal_access_tokens_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 3, '2025_02_14_143223_create_pacientes_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 4, '2025_02_14_143240_create_medicos_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 5, '2025_02_14_143249_create_consultas_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 6, '2025_02_14_143259_create_exames_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 7, '2025_02_14_143313_create_internacoes_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 8, '2025_02_14_143324_create_prescricoes_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 9, '2025_02_14_143436_create_funcionarios_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 10, '2025_02_14_143455_create_faturas_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 11, '2025_02_14_143505_create_agendamentos_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 12, '2025_02_14_143513_create_categorias_leitos_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 13, '2025_02_14_143521_create_leitos_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 14, '2025_02_14_143539_create_medicamentos_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 15, '2025_02_14_143554_create_estoque_medicamentos_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 16, '2025_02_14_143608_create_especialidades_table');
insert into `migrations` (`batch`, `id`, `migration`) values (1, 17, '2025_02_14_151346_create_enfermeiros_table');
insert into `migrations` (`batch`, `id`, `migration`) values (2, 18, '2025_02_18_072638_create_camas_table');
insert into `migrations` (`batch`, `id`, `migration`) values (3, 19, '2025_02_20_162717_create_salas_table');
insert into `migrations` (`batch`, `id`, `migration`) values (4, 20, '2025_02_20_171104_create_areas_hospital_table');
insert into `migrations` (`batch`, `id`, `migration`) values (5, 21, '2025_02_22_152448_create_farmacos_table');
insert into `migrations` (`batch`, `id`, `migration`) values (6, 22, '2025_02_22_152506_create_especialidades_table');
insert into `migrations` (`batch`, `id`, `migration`) values (7, 23, '2025_02_22_152841_create_tipo_consultas_table');
insert into `migrations` (`batch`, `id`, `migration`) values (8, 24, '2025_02_22_152850_create_tipo_servicos_table');
insert into `migrations` (`batch`, `id`, `migration`) values (9, 25, '2025_02_24_142357_add_sala_id_to_camas_table');
insert into `migrations` (`batch`, `id`, `migration`) values (10, 26, '2025_02_24_163557_add_grupo_sanguineo_to_pacientes_table');
insert into `migrations` (`batch`, `id`, `migration`) values (11, 27, '2025_02_27_192302_create_profissional_saude_table');
insert into `migrations` (`batch`, `id`, `migration`) values (12, 28, '2025_03_04_150426_create_triagens_table');
