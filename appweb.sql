-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 16-04-2024 a las 17:47:19
-- Versión del servidor: 11.5.0-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_accesos`
--

CREATE TABLE `seg_accesos` (
  `cod_usu` varchar(50) NOT NULL,
  `cod_apl` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_aplicacion`
--

CREATE TABLE `seg_aplicacion` (
  `cod_apl` varchar(100) NOT NULL,
  `cod_apl_sup` varchar(100) DEFAULT NULL,
  `cod_mod` varchar(30) NOT NULL,
  `dsc_apl` varchar(50) NOT NULL,
  `obs_apl` varchar(50) NOT NULL,
  `tpo_apl` varchar(50) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `ayuda` text DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `target_tpo` varchar(20) DEFAULT NULL,
  `hr_ini` time(5) DEFAULT NULL,
  `ht_fin` time(5) DEFAULT NULL,
  `sw_vie` int(11) DEFAULT NULL,
  `sw_sab` int(11) DEFAULT NULL,
  `sw_dom` int(11) DEFAULT NULL,
  `sw_fer` int(11) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `seg_aplicacion`
--

INSERT INTO `seg_aplicacion` (`cod_apl`, `cod_apl_sup`, `cod_mod`, `dsc_apl`, `obs_apl`, `tpo_apl`, `menu`, `ayuda`, `url`, `target_tpo`, `hr_ini`, `ht_fin`, `sw_vie`, `sw_sab`, `sw_dom`, `sw_fer`, `estado`, `usu_cre`, `fh_cre`, `usu_mod`, `fh_mod`) VALUES
('SEGPAGEMODULOBTNCREAR', NULL, 'SEG', 'Crear Nuevo Modulo', 'Crear Nuevo Modulo', 'BUTTON', 'NO', NULL, NULL, '_BLANK', '00:00:00.00000', '23:59:00.00000', 1, 1, 1, 1, 'ACTIVO', 'admin', '2024-04-16 10:57:47', NULL, NULL),
('SEGPAGEMODULOBTNEDITAR', NULL, 'SEG', 'Editar Modulo', 'Editar Modulo', 'BUTTON', 'NO', NULL, NULL, '_BLANK', '00:00:00.00000', '23:59:00.00000', 1, 1, 1, 1, 'ACTIVO', 'admin', '2024-04-16 10:57:47', NULL, NULL),
('SEGPAGEMODULOBTNELIMINAR', NULL, 'SEG', 'Eliminar Modulo', 'Eliminar Modulo', 'BUTTON', 'NO', NULL, NULL, '_BLANK', '00:00:00.00000', '23:59:00.00000', 1, 1, 1, 1, 'ACTIVO', 'admin', '2024-04-16 10:57:47', NULL, NULL),
('SEGPAGEMODULOPAGECREATE', NULL, 'SEG', 'Pagina Crear', 'Pagina Crear', 'PAGE', 'NO', NULL, '/modulo/index.php', '_BLANK', '00:00:00.00000', '23:59:00.00000', 1, 1, 1, 1, 'ACTIVO', 'admin', '2024-04-16 10:57:47', NULL, NULL),
('SEGPAGEMODULOPAGELIST', NULL, 'SEG', 'Lista de Modulos', 'Lsita de Modulos', 'PAGE', 'MENU', NULL, '/modulo/index.php', '_BLANK', '00:00:00.00000', '23:59:00.00000', 1, 1, 1, 1, 'ACTIVO', 'admin', '2024-04-16 10:57:47', NULL, NULL),
('SEGPAGEMODULORPTPDFACTIVOS', NULL, 'SEG', 'Reporte de Modulos Activos', 'Reporte de Modulos Activos', 'REPORTPDF', 'NO', NULL, NULL, '_BLANK', '00:00:00.00000', '23:59:00.00000', 1, 1, 1, 1, 'ACTIVO', 'admin', '2024-04-16 10:57:47', NULL, NULL),
('SEGPAGEMODULORPTPDFTOTAL', NULL, 'SEG', 'Reporte de Modulos', 'Reporte de Modulos', 'REPORTPDF', 'NO', NULL, NULL, '_BLANK', '00:00:00.00000', '23:59:00.00000', 1, 1, 1, 1, 'ACTIVO', 'admin', '2024-04-16 10:57:47', NULL, NULL),
('SEGPAGEMODULORPTXLSACTIVOS', NULL, 'SEG', 'Reporte de Modulos Activos en Formato XLSX', 'Reporte de Modulos Activos en Formato XLSX', 'REPORTXLS', 'NO', NULL, NULL, '_BLANK', '00:00:00.00000', '23:59:00.00000', 1, 1, 1, 1, 'ACTIVO', 'admin', '2024-04-16 11:05:44', NULL, NULL),
('SEGPAGEMODULORPTXLSTOTAL', NULL, 'SEG', 'Reporte de Modulos', 'Reporte de Modulos', 'REPORTXLS', 'NO', NULL, NULL, '_BLANK', '00:00:00.00000', '23:59:00.00000', 1, 1, 1, 1, 'ACTIVO', 'admin', '2024-04-16 11:05:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_control_usuario`
--

CREATE TABLE `seg_control_usuario` (
  `id` bigint(20) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `cod_usu` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_log_aplicacion`
--

CREATE TABLE `seg_log_aplicacion` (
  `id` bigint(20) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `cod_usu` varchar(50) NOT NULL,
  `cod_apl` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_modulo`
--

CREATE TABLE `seg_modulo` (
  `cod_mod` varchar(30) NOT NULL,
  `dsc_mod` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `seg_modulo`
--

INSERT INTO `seg_modulo` (`cod_mod`, `dsc_mod`, `estado`, `usu_cre`, `fh_cre`, `usu_mod`, `fh_mod`) VALUES
('ACT', 'ACTIVOS FIJOS', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('ADM', 'ADMINISTRACION', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('COM', 'COMPRAS', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('CON', 'CONTABILIDAD', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('CRM', 'GESTION DE CLIENTES', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('CXC', 'CUENTAS POR COBRAR', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('CXP', 'CUENTAS POR PAGAR', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('E-C', 'E-COMMERCE', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('ERP', 'PLANIFICACION DE RECURSOS EMPRESARIALES', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('INF', 'INFORMATICA', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('INV', 'INVENTARIO', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('LOG', 'LOGISTICA', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('MKT', 'MARKETING', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('PRE', 'PRESUPUESTO', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('PRO', 'PRODUCCION', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('RRH', 'RECURSOS HUMANOS', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('SEG', 'SEGURIDAD', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('SER', 'SERVICIOS', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('TES', 'TESORERIA', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('UAI', 'AUDITORIA INTERNA', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL),
('VEN', 'VENTAS', 'ACTIVO', 'admin', '2024-04-04 17:39:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_perfil`
--

CREATE TABLE `seg_perfil` (
  `cod_prf` varchar(30) NOT NULL,
  `dsc_prf` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_perfil_det`
--

CREATE TABLE `seg_perfil_det` (
  `cod_prf_det` varchar(30) NOT NULL,
  `cod_prf` varchar(30) NOT NULL,
  `cod_apl` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_usuario`
--

CREATE TABLE `seg_usuario` (
  `cod_usu` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL,
  `rrhh_cod` varchar(10) DEFAULT NULL,
  `prf_cod` varchar(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `sw_session` int(11) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_ver_accesos`
--

CREATE TABLE `seg_ver_accesos` (
  `id` bigint(20) NOT NULL,
  `cod_usu` varchar(30) NOT NULL,
  `cod_apl` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_ver_aplicacion`
--

CREATE TABLE `seg_ver_aplicacion` (
  `id` bigint(20) NOT NULL,
  `nro` int(11) DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL,
  `cod_apl` varchar(100) NOT NULL,
  `cod_apl_sup` varchar(100) DEFAULT NULL,
  `cod_mod` varchar(30) NOT NULL,
  `dsc_apl` varchar(50) NOT NULL,
  `obs_apl` varchar(50) NOT NULL,
  `tpo_apl` varchar(50) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `ayuda` text DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `target_tpo` varchar(20) DEFAULT NULL,
  `hr_ini` varchar(5) DEFAULT NULL,
  `ht_fin` varchar(5) DEFAULT NULL,
  `sw_vie` int(11) DEFAULT NULL,
  `sw_sab` int(11) DEFAULT NULL,
  `sw_dom` int(11) DEFAULT NULL,
  `sw_fer` int(11) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_ver_modulo`
--

CREATE TABLE `seg_ver_modulo` (
  `id` bigint(20) NOT NULL,
  `cod_mod` varchar(30) NOT NULL,
  `dsc_mod` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `usu_cre` varchar(50) NOT NULL,
  `fh_cre` datetime NOT NULL,
  `usu_mod` varchar(50) DEFAULT NULL,
  `fh_mod` datetime DEFAULT NULL,
  `nro` int(11) DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `seg_accesos`
--
ALTER TABLE `seg_accesos`
  ADD PRIMARY KEY (`cod_usu`,`cod_apl`) USING BTREE,
  ADD KEY `cod_apl` (`cod_apl`) USING BTREE;

--
-- Indices de la tabla `seg_aplicacion`
--
ALTER TABLE `seg_aplicacion`
  ADD PRIMARY KEY (`cod_apl`) USING BTREE,
  ADD KEY `cod_mod` (`cod_mod`) USING BTREE;

--
-- Indices de la tabla `seg_control_usuario`
--
ALTER TABLE `seg_control_usuario`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cod_usu` (`cod_usu`) USING BTREE;

--
-- Indices de la tabla `seg_log_aplicacion`
--
ALTER TABLE `seg_log_aplicacion`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cod_usu` (`cod_usu`) USING BTREE,
  ADD KEY `cod_apl` (`cod_apl`) USING BTREE;

--
-- Indices de la tabla `seg_modulo`
--
ALTER TABLE `seg_modulo`
  ADD PRIMARY KEY (`cod_mod`) USING BTREE;

--
-- Indices de la tabla `seg_perfil`
--
ALTER TABLE `seg_perfil`
  ADD PRIMARY KEY (`cod_prf`) USING BTREE;

--
-- Indices de la tabla `seg_perfil_det`
--
ALTER TABLE `seg_perfil_det`
  ADD PRIMARY KEY (`cod_prf_det`) USING BTREE,
  ADD KEY `cod_prf` (`cod_prf`) USING BTREE;

--
-- Indices de la tabla `seg_usuario`
--
ALTER TABLE `seg_usuario`
  ADD PRIMARY KEY (`cod_usu`) USING BTREE;

--
-- Indices de la tabla `seg_ver_accesos`
--
ALTER TABLE `seg_ver_accesos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `seg_ver_aplicacion`
--
ALTER TABLE `seg_ver_aplicacion`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `seg_ver_modulo`
--
ALTER TABLE `seg_ver_modulo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `seg_control_usuario`
--
ALTER TABLE `seg_control_usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seg_log_aplicacion`
--
ALTER TABLE `seg_log_aplicacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seg_ver_accesos`
--
ALTER TABLE `seg_ver_accesos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seg_ver_aplicacion`
--
ALTER TABLE `seg_ver_aplicacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seg_ver_modulo`
--
ALTER TABLE `seg_ver_modulo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `seg_accesos`
--
ALTER TABLE `seg_accesos`
  ADD CONSTRAINT `seg_accesos_ibfk_1` FOREIGN KEY (`cod_usu`) REFERENCES `seg_usuario` (`cod_usu`),
  ADD CONSTRAINT `seg_accesos_ibfk_2` FOREIGN KEY (`cod_apl`) REFERENCES `seg_aplicacion` (`cod_apl`);

--
-- Filtros para la tabla `seg_aplicacion`
--
ALTER TABLE `seg_aplicacion`
  ADD CONSTRAINT `seg_aplicacion_ibfk_1` FOREIGN KEY (`cod_mod`) REFERENCES `seg_modulo` (`cod_mod`);

--
-- Filtros para la tabla `seg_control_usuario`
--
ALTER TABLE `seg_control_usuario`
  ADD CONSTRAINT `seg_control_usuario_ibfk_1` FOREIGN KEY (`cod_usu`) REFERENCES `seg_usuario` (`cod_usu`);

--
-- Filtros para la tabla `seg_log_aplicacion`
--
ALTER TABLE `seg_log_aplicacion`
  ADD CONSTRAINT `seg_log_aplicacion_ibfk_1` FOREIGN KEY (`cod_usu`) REFERENCES `seg_usuario` (`cod_usu`),
  ADD CONSTRAINT `seg_log_aplicacion_ibfk_2` FOREIGN KEY (`cod_apl`) REFERENCES `seg_aplicacion` (`cod_apl`);

--
-- Filtros para la tabla `seg_perfil_det`
--
ALTER TABLE `seg_perfil_det`
  ADD CONSTRAINT `seg_perfil_det_ibfk_1` FOREIGN KEY (`cod_prf`) REFERENCES `seg_perfil` (`cod_prf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
