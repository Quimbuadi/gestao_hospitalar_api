-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2025 at 06:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_hospitalar`
--
CREATE DATABASE IF NOT EXISTS `sistema_hospitalar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistema_hospitalar`;

-- --------------------------------------------------------

--
-- Table structure for table `agendamentos`
--

CREATE TABLE `agendamentos` (
  `agendamento_id` bigint(20) UNSIGNED NOT NULL,
  `paciente_id` bigint(20) UNSIGNED NOT NULL,
  `medico_id` bigint(20) UNSIGNED NOT NULL,
  `tipo_agendamento` varchar(255) NOT NULL,
  `data_agendamento` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorias_leitos`
--

CREATE TABLE `categorias_leitos` (
  `categoria_leito_id` bigint(20) UNSIGNED NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultas`
--

CREATE TABLE `consultas` (
  `consulta_id` bigint(20) UNSIGNED NOT NULL,
  `paciente_id` bigint(20) UNSIGNED NOT NULL,
  `medico_id` bigint(20) UNSIGNED NOT NULL,
  `data_consulta` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultas`
--

INSERT INTO `consultas` (`consulta_id`, `paciente_id`, `medico_id`, `data_consulta`, `status`, `observacoes`, `created_at`, `updated_at`) VALUES
(2, 1, 3, '2025-03-10 00:00:00', 'Aberta', 'Consulta pela primeira vez', '2025-02-15 01:20:15', '2025-02-15 01:20:15'),
(3, 2, 1, '2025-02-15 10:00:00', 'Aberta', 'Consulta pela primeira vez', '2025-02-15 01:21:08', '2025-02-15 01:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `enfermeiros`
--

CREATE TABLE `enfermeiros` (
  `enfermeiro_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `bi` varchar(14) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tipo` enum('estagiario','efetivo') NOT NULL DEFAULT 'efetivo',
  `registro_corens` varchar(255) DEFAULT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `especialidades`
--

CREATE TABLE `especialidades` (
  `especialidade_id` bigint(20) UNSIGNED NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estoque_medicamentos`
--

CREATE TABLE `estoque_medicamentos` (
  `movimentacao_id` bigint(20) UNSIGNED NOT NULL,
  `medicamento_id` bigint(20) UNSIGNED NOT NULL,
  `tipo_movimentacao` varchar(255) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `data_movimentacao` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exames`
--

CREATE TABLE `exames` (
  `exame_id` bigint(20) UNSIGNED NOT NULL,
  `paciente_id` bigint(20) UNSIGNED NOT NULL,
  `medico_responsavel` bigint(20) UNSIGNED NOT NULL,
  `tipo_exame` varchar(255) NOT NULL,
  `data_exame` datetime NOT NULL,
  `resultado` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faturas`
--

CREATE TABLE `faturas` (
  `fatura_id` bigint(20) UNSIGNED NOT NULL,
  `paciente_id` bigint(20) UNSIGNED NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data_emissao` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_pagamento` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `funcionarios`
--

CREATE TABLE `funcionarios` (
  `funcionario_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `data_admissao` date NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `salario` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `internacoes`
--

CREATE TABLE `internacoes` (
  `internacao_id` bigint(20) UNSIGNED NOT NULL,
  `paciente_id` bigint(20) UNSIGNED NOT NULL,
  `medico_responsavel` bigint(20) UNSIGNED NOT NULL,
  `data_entrada` datetime NOT NULL,
  `data_saida` datetime DEFAULT NULL,
  `leito` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leitos`
--

CREATE TABLE `leitos` (
  `leito_id` bigint(20) UNSIGNED NOT NULL,
  `numero_leito` varchar(255) NOT NULL,
  `categoria_leito_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicamentos`
--

CREATE TABLE `medicamentos` (
  `medicamento_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `quantidade_em_estoque` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicos`
--

CREATE TABLE `medicos` (
  `medico_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `especialidade` varchar(255) DEFAULT NULL,
  `crm` varchar(255) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicos`
--

INSERT INTO `medicos` (`medico_id`, `nome`, `especialidade`, `crm`, `telefone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Quimbuadi', 'Genicologista', '01', '937579318', 'antonioquimbuadi@gmail.com', '2025-02-15 01:02:57', '2025-02-15 01:02:57'),
(3, 'Dr. Milagres Junior', 'Cirurgiao Plastico', '02', '941608052', 'milagresjr@gmail.com', '2025-02-15 01:04:41', '2025-02-15 01:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_usuarios_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2025_02_14_143223_create_pacientes_table', 1),
(4, '2025_02_14_143240_create_medicos_table', 1),
(5, '2025_02_14_143249_create_consultas_table', 1),
(6, '2025_02_14_143259_create_exames_table', 1),
(7, '2025_02_14_143313_create_internacoes_table', 1),
(8, '2025_02_14_143324_create_prescricoes_table', 1),
(9, '2025_02_14_143436_create_funcionarios_table', 1),
(10, '2025_02_14_143455_create_faturas_table', 1),
(11, '2025_02_14_143505_create_agendamentos_table', 1),
(12, '2025_02_14_143513_create_categorias_leitos_table', 1),
(13, '2025_02_14_143521_create_leitos_table', 1),
(14, '2025_02_14_143539_create_medicamentos_table', 1),
(15, '2025_02_14_143554_create_estoque_medicamentos_table', 1),
(16, '2025_02_14_143608_create_especialidades_table', 1),
(17, '2025_02_14_151346_create_enfermeiros_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `paciente_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nascimento` date NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`paciente_id`, `nome`, `data_nascimento`, `sexo`, `endereco`, `telefone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Laurindo Gomes', '2000-02-11', 'M', 'Luanda, Malueca', '941608052', 'laurindo@gmail.com', '2025-02-15 01:15:16', '2025-02-15 01:15:16'),
(2, 'Isabel Manuel', '2002-05-12', 'F', 'Luanda, Kilamba', '954328765', 'isabel@gmail.com', '2025-02-15 01:16:11', '2025-02-15 01:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescricoes`
--

CREATE TABLE `prescricoes` (
  `prescricao_id` bigint(20) UNSIGNED NOT NULL,
  `paciente_id` bigint(20) UNSIGNED NOT NULL,
  `medicamento` varchar(255) NOT NULL,
  `dosagem` varchar(255) NOT NULL,
  `posologia` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` enum('admin','medico','enfermeiro','recepcionista') NOT NULL DEFAULT 'recepcionista',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`agendamento_id`),
  ADD KEY `agendamentos_paciente_id_foreign` (`paciente_id`),
  ADD KEY `agendamentos_medico_id_foreign` (`medico_id`);

--
-- Indexes for table `categorias_leitos`
--
ALTER TABLE `categorias_leitos`
  ADD PRIMARY KEY (`categoria_leito_id`);

--
-- Indexes for table `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`consulta_id`),
  ADD KEY `consultas_paciente_id_foreign` (`paciente_id`),
  ADD KEY `consultas_medico_id_foreign` (`medico_id`);

--
-- Indexes for table `enfermeiros`
--
ALTER TABLE `enfermeiros`
  ADD PRIMARY KEY (`enfermeiro_id`),
  ADD UNIQUE KEY `enfermeiros_bi_unique` (`bi`),
  ADD UNIQUE KEY `enfermeiros_registro_corens_unique` (`registro_corens`),
  ADD KEY `enfermeiros_usuario_id_foreign` (`usuario_id`);

--
-- Indexes for table `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`especialidade_id`);

--
-- Indexes for table `estoque_medicamentos`
--
ALTER TABLE `estoque_medicamentos`
  ADD PRIMARY KEY (`movimentacao_id`),
  ADD KEY `estoque_medicamentos_medicamento_id_foreign` (`medicamento_id`);

--
-- Indexes for table `exames`
--
ALTER TABLE `exames`
  ADD PRIMARY KEY (`exame_id`),
  ADD KEY `exames_paciente_id_foreign` (`paciente_id`),
  ADD KEY `exames_medico_responsavel_foreign` (`medico_responsavel`);

--
-- Indexes for table `faturas`
--
ALTER TABLE `faturas`
  ADD PRIMARY KEY (`fatura_id`),
  ADD KEY `faturas_paciente_id_foreign` (`paciente_id`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`funcionario_id`);

--
-- Indexes for table `internacoes`
--
ALTER TABLE `internacoes`
  ADD PRIMARY KEY (`internacao_id`),
  ADD KEY `internacoes_paciente_id_foreign` (`paciente_id`),
  ADD KEY `internacoes_medico_responsavel_foreign` (`medico_responsavel`);

--
-- Indexes for table `leitos`
--
ALTER TABLE `leitos`
  ADD PRIMARY KEY (`leito_id`),
  ADD KEY `leitos_categoria_leito_id_foreign` (`categoria_leito_id`);

--
-- Indexes for table `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`medicamento_id`);

--
-- Indexes for table `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`medico_id`),
  ADD UNIQUE KEY `medicos_crm_unique` (`crm`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`paciente_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prescricoes`
--
ALTER TABLE `prescricoes`
  ADD PRIMARY KEY (`prescricao_id`),
  ADD KEY `prescricoes_paciente_id_foreign` (`paciente_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `usuarios_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `agendamento_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorias_leitos`
--
ALTER TABLE `categorias_leitos`
  MODIFY `categoria_leito_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultas`
--
ALTER TABLE `consultas`
  MODIFY `consulta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enfermeiros`
--
ALTER TABLE `enfermeiros`
  MODIFY `enfermeiro_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `especialidade_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estoque_medicamentos`
--
ALTER TABLE `estoque_medicamentos`
  MODIFY `movimentacao_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exames`
--
ALTER TABLE `exames`
  MODIFY `exame_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faturas`
--
ALTER TABLE `faturas`
  MODIFY `fatura_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `funcionario_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `internacoes`
--
ALTER TABLE `internacoes`
  MODIFY `internacao_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leitos`
--
ALTER TABLE `leitos`
  MODIFY `leito_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `medicamento_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicos`
--
ALTER TABLE `medicos`
  MODIFY `medico_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `paciente_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescricoes`
--
ALTER TABLE `prescricoes`
  MODIFY `prescricao_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD CONSTRAINT `agendamentos_medico_id_foreign` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`medico_id`),
  ADD CONSTRAINT `agendamentos_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`);

--
-- Constraints for table `consultas`
--
ALTER TABLE `consultas`
  ADD CONSTRAINT `consultas_medico_id_foreign` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`medico_id`),
  ADD CONSTRAINT `consultas_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`);

--
-- Constraints for table `enfermeiros`
--
ALTER TABLE `enfermeiros`
  ADD CONSTRAINT `enfermeiros_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Constraints for table `estoque_medicamentos`
--
ALTER TABLE `estoque_medicamentos`
  ADD CONSTRAINT `estoque_medicamentos_medicamento_id_foreign` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamentos` (`medicamento_id`);

--
-- Constraints for table `exames`
--
ALTER TABLE `exames`
  ADD CONSTRAINT `exames_medico_responsavel_foreign` FOREIGN KEY (`medico_responsavel`) REFERENCES `medicos` (`medico_id`),
  ADD CONSTRAINT `exames_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`);

--
-- Constraints for table `faturas`
--
ALTER TABLE `faturas`
  ADD CONSTRAINT `faturas_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`);

--
-- Constraints for table `internacoes`
--
ALTER TABLE `internacoes`
  ADD CONSTRAINT `internacoes_medico_responsavel_foreign` FOREIGN KEY (`medico_responsavel`) REFERENCES `medicos` (`medico_id`),
  ADD CONSTRAINT `internacoes_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`);

--
-- Constraints for table `leitos`
--
ALTER TABLE `leitos`
  ADD CONSTRAINT `leitos_categoria_leito_id_foreign` FOREIGN KEY (`categoria_leito_id`) REFERENCES `categorias_leitos` (`categoria_leito_id`);

--
-- Constraints for table `prescricoes`
--
ALTER TABLE `prescricoes`
  ADD CONSTRAINT `prescricoes_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
