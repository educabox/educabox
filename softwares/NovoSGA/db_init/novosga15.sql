-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Sep 30, 2024 at 04:43 PM
-- Server version: 11.5.2-MariaDB-ubu2404
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novosga15`
--

-- --------------------------------------------------------

--
-- Table structure for table `atendimentos`
--

CREATE TABLE `atendimentos` (
  `id` bigint(20) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `usuario_tri_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `prioridade_id` int(11) NOT NULL,
  `atendimento_id` bigint(20) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `sigla_senha` varchar(1) NOT NULL,
  `num_senha` int(11) NOT NULL,
  `num_senha_serv` int(11) NOT NULL,
  `nm_cli` varchar(100) DEFAULT NULL,
  `num_local` smallint(6) NOT NULL,
  `dt_cheg` datetime NOT NULL,
  `dt_cha` datetime DEFAULT NULL,
  `dt_ini` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `ident_cli` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atend_codif`
--

CREATE TABLE `atend_codif` (
  `atendimento_id` bigint(20) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `valor_peso` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atend_meta`
--

CREATE TABLE `atend_meta` (
  `atendimento_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `esquerda` int(11) NOT NULL,
  `direita` int(11) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cargos`
--

INSERT INTO `cargos` (`id`, `nome`, `descricao`, `esquerda`, `direita`, `nivel`) VALUES
(1, 'Administrador', 'Administrador geral do sistema', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cargos_mod_perm`
--

CREATE TABLE `cargos_mod_perm` (
  `cargo_id` int(11) NOT NULL,
  `modulo_id` int(11) NOT NULL,
  `permissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cargos_mod_perm`
--

INSERT INTO `cargos_mod_perm` (`cargo_id`, `modulo_id`, `permissao`) VALUES
(1, 1, 3),
(1, 2, 3),
(1, 3, 3),
(1, 4, 3),
(1, 5, 3),
(1, 6, 3),
(1, 7, 3),
(1, 8, 3),
(1, 9, 3),
(1, 10, 3),
(1, 11, 3),
(1, 12, 3),
(1, 13, 3),
(1, 14, 3);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `chave` varchar(150) NOT NULL,
  `valor` text NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`chave`, `valor`, `tipo`) VALUES
('version', '1.5.2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contador`
--

CREATE TABLE `contador` (
  `unidade_id` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `esquerda` int(11) NOT NULL,
  `direita` int(11) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `grupos`
--

INSERT INTO `grupos` (`id`, `nome`, `descricao`, `esquerda`, `direita`, `nivel`) VALUES
(1, 'Raíz', 'Grupo Raíz', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `historico_atendimentos`
--

CREATE TABLE `historico_atendimentos` (
  `id` bigint(20) NOT NULL,
  `unidade_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `usuario_tri_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `prioridade_id` int(11) NOT NULL,
  `atendimento_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `sigla_senha` varchar(1) NOT NULL,
  `num_senha` int(11) NOT NULL,
  `num_senha_serv` int(11) NOT NULL,
  `nm_cli` varchar(100) DEFAULT NULL,
  `num_local` smallint(6) NOT NULL,
  `dt_cheg` datetime NOT NULL,
  `dt_cha` datetime DEFAULT NULL,
  `dt_ini` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `ident_cli` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historico_atend_codif`
--

CREATE TABLE `historico_atend_codif` (
  `atendimento_id` bigint(20) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `valor_peso` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historico_atend_meta`
--

CREATE TABLE `historico_atend_meta` (
  `atendimento_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locais`
--

CREATE TABLE `locais` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `locais`
--

INSERT INTO `locais` (`id`, `nome`) VALUES
(1, 'Guichê'),
(3, 'Mesa'),
(2, 'Sala');

-- --------------------------------------------------------

--
-- Table structure for table `modulos`
--

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL,
  `chave` varchar(50) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `tipo` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `modulos`
--

INSERT INTO `modulos` (`id`, `chave`, `nome`, `descricao`, `tipo`, `status`) VALUES
(1, 'sga.admin', 'Administração', 'Configurações gerais do sistema', 1, 1),
(2, 'sga.atendimento', 'Atendimento', 'Efetue o atendimento às senhas distribuídas dos serviços que você atende', 0, 1),
(3, 'sga.cargos', 'Cargos', 'Gerencie os cargos do sistema', 1, 1),
(4, 'sga.estatisticas', 'Estatísticas', 'Visualize e exporte estastísticas e relatórios sobre o sistema', 1, 1),
(5, 'sga.grupos', 'Grupos', 'Gerencie os grupos do sistema', 1, 1),
(6, 'sga.locais', 'Locais', 'Gerencie os locais de atendimento', 1, 1),
(7, 'sga.modulos', 'Módulos', 'Gerencie os módulos instalados', 1, 1),
(8, 'sga.monitor', 'Monitor', 'Gerencie as senhas aguardando atendimento', 0, 1),
(9, 'sga.prioridades', 'Prioridades', 'Gerencie os prioridades do sistema', 1, 1),
(10, 'sga.servicos', 'Serviços', 'Gerencie os serviços do sistema', 1, 1),
(11, 'sga.triagem', 'Triagem', 'Gerencie a distribuíção das senhas da unidade atual', 0, 1),
(12, 'sga.unidade', 'Configuração', 'Módulo para gerenciamento da unidade atual', 0, 1),
(13, 'sga.unidades', 'Unidades', 'Gerencie as unidades do sistema', 1, 1),
(14, 'sga.usuarios', 'Usuários', 'Gerencie os usuários do sistema', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` text DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paineis`
--

CREATE TABLE `paineis` (
  `unidade_id` int(11) NOT NULL,
  `host` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paineis_servicos`
--

CREATE TABLE `paineis_servicos` (
  `host` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `painel_senha`
--

CREATE TABLE `painel_senha` (
  `id` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `num_senha` int(11) NOT NULL,
  `sig_senha` varchar(1) NOT NULL,
  `msg_senha` varchar(20) NOT NULL,
  `local` varchar(15) NOT NULL,
  `num_local` smallint(6) NOT NULL,
  `peso` smallint(6) NOT NULL,
  `prioridade` varchar(100) DEFAULT NULL,
  `nome_cliente` varchar(100) DEFAULT NULL,
  `documento_cliente` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prioridades`
--

CREATE TABLE `prioridades` (
  `id` int(11) NOT NULL,
  `nome` varchar(64) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `peso` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `prioridades`
--

INSERT INTO `prioridades` (`id`, `nome`, `descricao`, `peso`, `status`) VALUES
(1, 'Sem prioridade', 'Atendimento normal', 0, 1),
(2, 'Portador de Deficiência', 'Atendimento prioritáro para portadores de deficiência', 1, 1),
(3, 'Gestante', 'Atendimento prioritáro para gestantes', 1, 1),
(4, 'Idoso', 'Atendimento prioritáro para idosos', 1, 1),
(5, 'Outros', 'Qualquer outra prioridade', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `macro_id` int(11) DEFAULT NULL,
  `descricao` varchar(100) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL,
  `peso` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serv_meta`
--

CREATE TABLE `serv_meta` (
  `servico_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unidades`
--

CREATE TABLE `unidades` (
  `id` int(11) NOT NULL,
  `grupo_id` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL,
  `stat_imp` smallint(6) NOT NULL,
  `msg_imp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `unidades`
--

INSERT INTO `unidades` (`id`, `grupo_id`, `codigo`, `nome`, `status`, `stat_imp`, `msg_imp`) VALUES
(1, 1, '1', 'Unidade Padrão', 1, 1, 'Novo SGA');

-- --------------------------------------------------------

--
-- Table structure for table `uni_meta`
--

CREATE TABLE `uni_meta` (
  `unidade_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uni_serv`
--

CREATE TABLE `uni_serv` (
  `unidade_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `local_id` int(11) NOT NULL,
  `sigla` varchar(1) NOT NULL,
  `status` smallint(6) NOT NULL,
  `peso` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `ult_acesso` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `session_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `nome`, `sobrenome`, `senha`, `ult_acesso`, `status`, `session_id`) VALUES
(1, 'admin', 'Administrador', 'Admin', '0192023a7bbd73250516f069df18b500', '2024-09-30 12:42:54', 1, 'a63863f98f62c806fb40d3ef8b20334e'); -- Senha: admin123

-- --------------------------------------------------------

--
-- Table structure for table `usu_grup_cargo`
--

CREATE TABLE `usu_grup_cargo` (
  `usuario_id` int(11) NOT NULL,
  `grupo_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `usu_grup_cargo`
--

INSERT INTO `usu_grup_cargo` (`usuario_id`, `grupo_id`, `cargo_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usu_meta`
--

CREATE TABLE `usu_meta` (
  `usuario_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `usu_meta`
--

INSERT INTO `usu_meta` (`usuario_id`, `name`, `value`) VALUES
(1, 'unidade', '1');

-- --------------------------------------------------------

--
-- Table structure for table `usu_serv`
--

CREATE TABLE `usu_serv` (
  `unidade_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_historico_atendimentos`
-- (See below for the actual view)
--
CREATE TABLE `view_historico_atendimentos` (
`id` bigint(20)
,`unidade_id` int(11)
,`usuario_id` int(11)
,`usuario_tri_id` int(11)
,`servico_id` int(11)
,`prioridade_id` int(11)
,`atendimento_id` bigint(20)
,`status` int(11)
,`sigla_senha` varchar(1)
,`num_senha` int(11)
,`num_senha_serv` int(11)
,`nm_cli` varchar(100)
,`num_local` smallint(6)
,`dt_cheg` datetime /* mariadb-5.3 */
,`dt_cha` datetime /* mariadb-5.3 */
,`dt_ini` datetime /* mariadb-5.3 */
,`dt_fim` datetime /* mariadb-5.3 */
,`ident_cli` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_historico_atend_codif`
-- (See below for the actual view)
--
CREATE TABLE `view_historico_atend_codif` (
`atendimento_id` bigint(20)
,`servico_id` int(11)
,`valor_peso` smallint(6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_historico_atend_meta`
-- (See below for the actual view)
--
CREATE TABLE `view_historico_atend_meta` (
`atendimento_id` bigint(20)
,`name` varchar(50)
,`value` mediumtext
);

-- --------------------------------------------------------

--
-- Structure for view `view_historico_atendimentos`
--
DROP TABLE IF EXISTS `view_historico_atendimentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`novosga15`@`%` SQL SECURITY DEFINER VIEW `view_historico_atendimentos`  AS SELECT `atendimentos`.`id` AS `id`, `atendimentos`.`unidade_id` AS `unidade_id`, `atendimentos`.`usuario_id` AS `usuario_id`, `atendimentos`.`usuario_tri_id` AS `usuario_tri_id`, `atendimentos`.`servico_id` AS `servico_id`, `atendimentos`.`prioridade_id` AS `prioridade_id`, `atendimentos`.`atendimento_id` AS `atendimento_id`, `atendimentos`.`status` AS `status`, `atendimentos`.`sigla_senha` AS `sigla_senha`, `atendimentos`.`num_senha` AS `num_senha`, `atendimentos`.`num_senha_serv` AS `num_senha_serv`, `atendimentos`.`nm_cli` AS `nm_cli`, `atendimentos`.`num_local` AS `num_local`, `atendimentos`.`dt_cheg` AS `dt_cheg`, `atendimentos`.`dt_cha` AS `dt_cha`, `atendimentos`.`dt_ini` AS `dt_ini`, `atendimentos`.`dt_fim` AS `dt_fim`, `atendimentos`.`ident_cli` AS `ident_cli` FROM `atendimentos`union all select `historico_atendimentos`.`id` AS `id`,`historico_atendimentos`.`unidade_id` AS `unidade_id`,`historico_atendimentos`.`usuario_id` AS `usuario_id`,`historico_atendimentos`.`usuario_tri_id` AS `usuario_tri_id`,`historico_atendimentos`.`servico_id` AS `servico_id`,`historico_atendimentos`.`prioridade_id` AS `prioridade_id`,`historico_atendimentos`.`atendimento_id` AS `atendimento_id`,`historico_atendimentos`.`status` AS `status`,`historico_atendimentos`.`sigla_senha` AS `sigla_senha`,`historico_atendimentos`.`num_senha` AS `num_senha`,`historico_atendimentos`.`num_senha_serv` AS `num_senha_serv`,`historico_atendimentos`.`nm_cli` AS `nm_cli`,`historico_atendimentos`.`num_local` AS `num_local`,`historico_atendimentos`.`dt_cheg` AS `dt_cheg`,`historico_atendimentos`.`dt_cha` AS `dt_cha`,`historico_atendimentos`.`dt_ini` AS `dt_ini`,`historico_atendimentos`.`dt_fim` AS `dt_fim`,`historico_atendimentos`.`ident_cli` AS `ident_cli` from `historico_atendimentos`  ;

-- --------------------------------------------------------

--
-- Structure for view `view_historico_atend_codif`
--
DROP TABLE IF EXISTS `view_historico_atend_codif`;

CREATE ALGORITHM=UNDEFINED DEFINER=`novosga15`@`%` SQL SECURITY DEFINER VIEW `view_historico_atend_codif`  AS SELECT `atend_codif`.`atendimento_id` AS `atendimento_id`, `atend_codif`.`servico_id` AS `servico_id`, `atend_codif`.`valor_peso` AS `valor_peso` FROM `atend_codif`union all select `historico_atend_codif`.`atendimento_id` AS `atendimento_id`,`historico_atend_codif`.`servico_id` AS `servico_id`,`historico_atend_codif`.`valor_peso` AS `valor_peso` from `historico_atend_codif`  ;

-- --------------------------------------------------------

--
-- Structure for view `view_historico_atend_meta`
--
DROP TABLE IF EXISTS `view_historico_atend_meta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`novosga15`@`%` SQL SECURITY DEFINER VIEW `view_historico_atend_meta`  AS SELECT `atend_meta`.`atendimento_id` AS `atendimento_id`, `atend_meta`.`name` AS `name`, `atend_meta`.`value` AS `value` FROM `atend_meta`union all select `historico_atend_meta`.`atendimento_id` AS `atendimento_id`,`historico_atend_meta`.`name` AS `name`,`historico_atend_meta`.`value` AS `value` from `historico_atend_meta`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atendimentos`
--
ALTER TABLE `atendimentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `atendimentos_ibfk_1` (`prioridade_id`),
  ADD KEY `atendimentos_ibfk_2` (`unidade_id`,`servico_id`),
  ADD KEY `atendimentos_ibfk_4` (`usuario_id`),
  ADD KEY `atendimentos_ibfk_5` (`usuario_tri_id`),
  ADD KEY `atendimentos_ibfk_6` (`atendimento_id`),
  ADD KEY `fki_atendimentos_ibfk_3` (`status`);

--
-- Indexes for table `atend_codif`
--
ALTER TABLE `atend_codif`
  ADD PRIMARY KEY (`atendimento_id`,`servico_id`),
  ADD KEY `atend_codif_ibfk_2` (`servico_id`);

--
-- Indexes for table `atend_meta`
--
ALTER TABLE `atend_meta`
  ADD PRIMARY KEY (`atendimento_id`,`name`);

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cargos_mod_perm`
--
ALTER TABLE `cargos_mod_perm`
  ADD PRIMARY KEY (`cargo_id`,`modulo_id`),
  ADD KEY `cargos_mod_perm_ibfk_2` (`modulo_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`chave`);

--
-- Indexes for table `contador`
--
ALTER TABLE `contador`
  ADD PRIMARY KEY (`unidade_id`);

--
-- Indexes for table `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `direita` (`direita`),
  ADD KEY `esqdir` (`esquerda`,`direita`),
  ADD KEY `esquerda` (`esquerda`);

--
-- Indexes for table `historico_atendimentos`
--
ALTER TABLE `historico_atendimentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historico_atendimentos_ibfk_1` (`prioridade_id`),
  ADD KEY `historico_atendimentos_ibfk_2` (`unidade_id`,`servico_id`),
  ADD KEY `historico_atendimentos_ibfk_4` (`usuario_id`),
  ADD KEY `historico_atendimentos_ibfk_5` (`usuario_tri_id`),
  ADD KEY `historico_atendimentos_ibfk_6` (`atendimento_id`);

--
-- Indexes for table `historico_atend_codif`
--
ALTER TABLE `historico_atend_codif`
  ADD PRIMARY KEY (`atendimento_id`,`servico_id`),
  ADD KEY `historico_atend_codif_ibfk_2` (`servico_id`);

--
-- Indexes for table `historico_atend_meta`
--
ALTER TABLE `historico_atend_meta`
  ADD PRIMARY KEY (`atendimento_id`,`name`);

--
-- Indexes for table `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `local_serv_nm` (`nome`);

--
-- Indexes for table `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modulos_chave` (`chave`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `paineis`
--
ALTER TABLE `paineis`
  ADD PRIMARY KEY (`host`),
  ADD KEY `paineis_ibfk_1` (`unidade_id`);

--
-- Indexes for table `paineis_servicos`
--
ALTER TABLE `paineis_servicos`
  ADD PRIMARY KEY (`host`,`servico_id`),
  ADD KEY `paineis_servicos_ibfk_2` (`unidade_id`,`servico_id`);

--
-- Indexes for table `painel_senha`
--
ALTER TABLE `painel_senha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `painel_senha_ibfk_1` (`unidade_id`),
  ADD KEY `painel_senha_ibfk_2` (`servico_id`);

--
-- Indexes for table `prioridades`
--
ALTER TABLE `prioridades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicos_ibfk_1` (`macro_id`);

--
-- Indexes for table `serv_meta`
--
ALTER TABLE `serv_meta`
  ADD PRIMARY KEY (`servico_id`,`name`);

--
-- Indexes for table `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `unidades_grupo_id_fkey` (`grupo_id`);

--
-- Indexes for table `uni_meta`
--
ALTER TABLE `uni_meta`
  ADD PRIMARY KEY (`unidade_id`,`name`);

--
-- Indexes for table `uni_serv`
--
ALTER TABLE `uni_serv`
  ADD PRIMARY KEY (`unidade_id`,`servico_id`),
  ADD KEY `uni_serv_ibfk_2` (`servico_id`),
  ADD KEY `uni_serv_ibfk_3` (`local_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `usu_grup_cargo`
--
ALTER TABLE `usu_grup_cargo`
  ADD PRIMARY KEY (`usuario_id`,`grupo_id`),
  ADD KEY `usu_grup_cargo_ibfk_2` (`grupo_id`),
  ADD KEY `usu_grup_cargo_ibfk_3` (`cargo_id`);

--
-- Indexes for table `usu_meta`
--
ALTER TABLE `usu_meta`
  ADD PRIMARY KEY (`usuario_id`,`name`);

--
-- Indexes for table `usu_serv`
--
ALTER TABLE `usu_serv`
  ADD PRIMARY KEY (`unidade_id`,`servico_id`,`usuario_id`),
  ADD KEY `usu_serv_ibfk_1` (`servico_id`,`unidade_id`),
  ADD KEY `usu_serv_ibfk_2` (`usuario_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atendimentos`
--
ALTER TABLE `atendimentos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atend_codif`
--
ALTER TABLE `atend_codif`
  MODIFY `atendimento_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `locais`
--
ALTER TABLE `locais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `painel_senha`
--
ALTER TABLE `painel_senha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prioridades`
--
ALTER TABLE `prioridades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cargos_mod_perm`
--
ALTER TABLE `cargos_mod_perm`
  ADD CONSTRAINT `cargos_mod_perm_ibfk_1` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`),
  ADD CONSTRAINT `cargos_mod_perm_ibfk_2` FOREIGN KEY (`modulo_id`) REFERENCES `modulos` (`id`);

--
-- Constraints for table `contador`
--
ALTER TABLE `contador`
  ADD CONSTRAINT `contador_ibfk_1` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`);

--
-- Constraints for table `paineis`
--
ALTER TABLE `paineis`
  ADD CONSTRAINT `paineis_ibfk_1` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`);

--
-- Constraints for table `paineis_servicos`
--
ALTER TABLE `paineis_servicos`
  ADD CONSTRAINT `paineis_servicos_ibfk_1` FOREIGN KEY (`host`) REFERENCES `paineis` (`host`),
  ADD CONSTRAINT `paineis_servicos_ibfk_2` FOREIGN KEY (`unidade_id`,`servico_id`) REFERENCES `uni_serv` (`unidade_id`, `servico_id`);

--
-- Constraints for table `painel_senha`
--
ALTER TABLE `painel_senha`
  ADD CONSTRAINT `painel_senha_ibfk_1` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`),
  ADD CONSTRAINT `painel_senha_ibfk_2` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`);

--
-- Constraints for table `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `servicos_ibfk_1` FOREIGN KEY (`macro_id`) REFERENCES `servicos` (`id`);

--
-- Constraints for table `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `unidades_grupo_id_fkey` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`);

--
-- Constraints for table `uni_serv`
--
ALTER TABLE `uni_serv`
  ADD CONSTRAINT `uni_serv_ibfk_1` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`),
  ADD CONSTRAINT `uni_serv_ibfk_2` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  ADD CONSTRAINT `uni_serv_ibfk_3` FOREIGN KEY (`local_id`) REFERENCES `locais` (`id`);

--
-- Constraints for table `usu_grup_cargo`
--
ALTER TABLE `usu_grup_cargo`
  ADD CONSTRAINT `usu_grup_cargo_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `usu_grup_cargo_ibfk_2` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
  ADD CONSTRAINT `usu_grup_cargo_ibfk_3` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`);

--
-- Constraints for table `usu_serv`
--
ALTER TABLE `usu_serv`
  ADD CONSTRAINT `usu_serv_ibfk_1` FOREIGN KEY (`servico_id`,`unidade_id`) REFERENCES `uni_serv` (`servico_id`, `unidade_id`),
  ADD CONSTRAINT `usu_serv_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
