-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2019 a las 00:11:07
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pare_area`
--

CREATE TABLE `pare_area` (
  `PARE_CODIGO` char(6) NOT NULL,
  `PARE_DESCRIPCION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pare_area`
--

INSERT INTO `pare_area` (`PARE_CODIGO`, `PARE_DESCRIPCION`) VALUES
('000001', 'Finanzas'),
('000002', 'Personal'),
('000003', 'Seguridad'),
('000004', 'Bienes'),
('000005', 'Almacen'),
('000006', 'Inventario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcem_ciudad_empleado`
--

CREATE TABLE `pcem_ciudad_empleado` (
  `PEEMP_CODIGO` char(6) NOT NULL,
  `PCIU_CODIGO` char(6) NOT NULL,
  `PCEM_ANOS_ESTADIA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pciu_ciudad`
--

CREATE TABLE `pciu_ciudad` (
  `PCIU_CODIGO` char(6) NOT NULL,
  `PPRO_CODIGO` char(1) NOT NULL,
  `PCIU_DESCRIPCION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pciu_ciudad`
--

INSERT INTO `pciu_ciudad` (`PCIU_CODIGO`, `PPRO_CODIGO`, `PCIU_DESCRIPCION`) VALUES
('000001', 'P', 'Quito'),
('000002', 'P', 'Cayambe'),
('000003', 'A', 'Cuenca'),
('000004', 'G', 'Guayaquil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pecar_cargo`
--

CREATE TABLE `pecar_cargo` (
  `PECAR_CODIGO` char(3) NOT NULL,
  `PARE_CODIGO` char(6) NOT NULL,
  `PECAR_DESCRI` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entidad utilizada para realizar el CRUD de los diferentes ca';

--
-- Volcado de datos para la tabla `pecar_cargo`
--

INSERT INTO `pecar_cargo` (`PECAR_CODIGO`, `PARE_CODIGO`, `PECAR_DESCRI`) VALUES
('001', '000001', 'Administardor de Área'),
('002', '000001', 'Contador'),
('003', '000001', 'Analista'),
('004', '000002', 'Jefe de Recuros Humanos'),
('005', '000003', 'Jefe de Seguridad'),
('006', '000003', 'Vigilante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peemp_emple`
--

CREATE TABLE `peemp_emple` (
  `PEEMP_CODIGO` char(6) NOT NULL,
  `PESEX_CODIGO` char(1) NOT NULL,
  `PEESC_CODIGO` char(1) DEFAULT NULL,
  `PECAR_CODIGO` char(3) NOT NULL,
  `PEEMP_APELLI` varchar(100) NOT NULL,
  `PEEMP_NOMBRE` varchar(100) NOT NULL,
  `PEEMP_CEDULA` char(10) DEFAULT NULL,
  `PEEMP_FECNAC` date NOT NULL,
  `PEEMP_DIREC` varchar(200) DEFAULT NULL,
  `PEEMP_TELEFO` varchar(15) DEFAULT NULL,
  `PEEMP_CARGAS` decimal(3,0) NOT NULL,
  `PEEMP_EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entidad utilizada para realiar el CRUD de empleados\r\n\r\n                                ';

--
-- Volcado de datos para la tabla `peemp_emple`
--

INSERT INTO `peemp_emple` (`PEEMP_CODIGO`, `PESEX_CODIGO`, `PEESC_CODIGO`, `PECAR_CODIGO`, `PEEMP_APELLI`, `PEEMP_NOMBRE`, `PEEMP_CEDULA`, `PEEMP_FECNAC`, `PEEMP_DIREC`, `PEEMP_TELEFO`, `PEEMP_CARGAS`, `PEEMP_EMAIL`) VALUES
('000001', 'M', 'C', '001', 'Campaña', 'Mauricio', '1751045195', '1969-09-05', 'Valle de los Chillos', '2321088', '2', 'monster@espe.edu.ec'),
('000002', 'M', 'S', '003', 'Erazo', 'Diego', '1751045196', '1995-06-05', 'Valle de los Chillos', '2321077', '0', 'diegera@espe.edu.ec'),
('000003', 'M', 'V', '004', 'Palacios', 'David', '1751045197', '1995-06-05', 'Valle de los Chillos', '2321055', '0', 'davidpala@espe.edu.ec'),
('000004', 'M', 'S', '003', 'Suárez', 'David', '1751045194', '1995-04-05', 'Edén del Valle', '2321066', '0', 'dasurezm@espe.edu.ec');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peesc_estciv`
--

CREATE TABLE `peesc_estciv` (
  `PEESC_CODIGO` char(1) NOT NULL,
  `PEESC_DESCRI` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entidad utilizada para realziar el CRUD del ESTADO CIVIL de ';

--
-- Volcado de datos para la tabla `peesc_estciv`
--

INSERT INTO `peesc_estciv` (`PEESC_CODIGO`, `PEESC_DESCRI`) VALUES
('C', 'Casado'),
('D', 'Divorciado'),
('S', 'Soltero'),
('V', 'Viudo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pesex_sexo`
--

CREATE TABLE `pesex_sexo` (
  `PESEX_CODIGO` char(1) NOT NULL,
  `PESEX_DESCRI` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entidad utilizada para realziar el CRUD del g[enero o sexo d';

--
-- Volcado de datos para la tabla `pesex_sexo`
--

INSERT INTO `pesex_sexo` (`PESEX_CODIGO`, `PESEX_DESCRI`) VALUES
('F', 'Femenino'),
('M', 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ppro_provincia`
--

CREATE TABLE `ppro_provincia` (
  `PPRO_CODIGO` char(1) NOT NULL,
  `PPRO_DESCRIPCION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entidad utilizada para realziar el CRUD del la provincia de ';

--
-- Volcado de datos para la tabla `ppro_provincia`
--

INSERT INTO `ppro_provincia` (`PPRO_CODIGO`, `PPRO_DESCRIPCION`) VALUES
('A', 'Azuay'),
('B', 'Bolivar'),
('C', 'Carchi'),
('G', 'Guayas'),
('H', 'Chimborazo'),
('I', 'Imbabura'),
('P', 'Pichincha');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sper_perfil`
--

CREATE TABLE `sper_perfil` (
  `SPER_CODIGO` char(6) NOT NULL,
  `CODIGO_ROL` char(1) NOT NULL,
  `SSUB_CODIGO` char(6) NOT NULL,
  `SRO_CODIGO_ROL` char(1) NOT NULL,
  `SPER_DESCRIPCION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sper_perfil`
--

INSERT INTO `sper_perfil` (`SPER_CODIGO`, `CODIGO_ROL`, `SSUB_CODIGO`, `SRO_CODIGO_ROL`, `SPER_DESCRIPCION`) VALUES
('000001', 'A', '000001', 'A', 'Administrador del Area de Finanzas'),
('000002', 'O', '000001', 'O', 'Analista de Finanzas'),
('000003', 'A', '000002', 'A', 'Administrador de Personal'),
('000004', 'A', '000003', 'A', 'Jefe de Seguridad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `srol_rol`
--

CREATE TABLE `srol_rol` (
  `CODIGO_ROL` char(1) NOT NULL,
  `SSUB_CODIGO` char(6) DEFAULT NULL,
  `CREAR` smallint(6) DEFAULT 0,
  `BUSCAR` smallint(6) DEFAULT 0,
  `ELIMINAR` smallint(6) DEFAULT 0,
  `ACTUALIZAR` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `srol_rol`
--

INSERT INTO `srol_rol` (`CODIGO_ROL`, `SSUB_CODIGO`, `CREAR`, `BUSCAR`, `ELIMINAR`, `ACTUALIZAR`) VALUES
('A', '000001', 1, 1, 1, 1),
('O', '000002', 1, 1, 1, 1),
('U', '000003', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ssub_subsistema`
--

CREATE TABLE `ssub_subsistema` (
  `SSUB_CODIGO` char(6) NOT NULL,
  `SSUB_DESCRIPCION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ssub_subsistema`
--

INSERT INTO `ssub_subsistema` (`SSUB_CODIGO`, `SSUB_DESCRIPCION`) VALUES
('000001', 'Finanzas'),
('000002', 'Personal'),
('000003', 'Seguridad'),
('000004', 'Bienes'),
('000005', 'Almacen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `susu_usuario`
--

CREATE TABLE `susu_usuario` (
  `PEEMP_CODIGO` char(6) NOT NULL,
  `SUSU_CODIGO` char(6) NOT NULL,
  `SPER_CODIGO` char(6) NOT NULL,
  `SUSU_NOMBRE` varchar(100) DEFAULT NULL,
  `SUSU_PASSWORD` varchar(100) DEFAULT NULL,
  `SUSU_FECHA_CREACION` datetime DEFAULT NULL,
  `SUSU_FECHA_ULT_CAMBIO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `susu_usuario`
--

INSERT INTO `susu_usuario` (`PEEMP_CODIGO`, `SUSU_CODIGO`, `SPER_CODIGO`, `SUSU_NOMBRE`, `SUSU_PASSWORD`, `SUSU_FECHA_CREACION`, `SUSU_FECHA_ULT_CAMBIO`) VALUES
('000001', '000001', '000001', 'monster', '1234', '2019-06-13 08:37:32', '2019-06-13 17:52:30'),
('000001', '000005', '000001', 'dx', 'root', NULL, NULL),
('000002', '000002', '000002', 'dieguito', '1234', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('000003', '000003', '000001', 'winar', '1234', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('000004', '000004', '000001', 'lucho', '1234', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pare_area`
--
ALTER TABLE `pare_area`
  ADD PRIMARY KEY (`PARE_CODIGO`);

--
-- Indices de la tabla `pcem_ciudad_empleado`
--
ALTER TABLE `pcem_ciudad_empleado`
  ADD PRIMARY KEY (`PEEMP_CODIGO`,`PCIU_CODIGO`),
  ADD KEY `FK_PCEM_CIUDAD_EMPLEADO2` (`PCIU_CODIGO`);

--
-- Indices de la tabla `pciu_ciudad`
--
ALTER TABLE `pciu_ciudad`
  ADD PRIMARY KEY (`PCIU_CODIGO`),
  ADD KEY `FK_PROVINCIA_CIUDAD` (`PPRO_CODIGO`);

--
-- Indices de la tabla `pecar_cargo`
--
ALTER TABLE `pecar_cargo`
  ADD PRIMARY KEY (`PECAR_CODIGO`),
  ADD KEY `FK_AREA_CARGO` (`PARE_CODIGO`);

--
-- Indices de la tabla `peemp_emple`
--
ALTER TABLE `peemp_emple`
  ADD PRIMARY KEY (`PEEMP_CODIGO`),
  ADD KEY `FK_EMPLEADO_CARGO` (`PECAR_CODIGO`),
  ADD KEY `FK_PR_PEESC_PEEMP` (`PEESC_CODIGO`),
  ADD KEY `FK_PR_PESEX_PEEMP` (`PESEX_CODIGO`);

--
-- Indices de la tabla `peesc_estciv`
--
ALTER TABLE `peesc_estciv`
  ADD PRIMARY KEY (`PEESC_CODIGO`);

--
-- Indices de la tabla `pesex_sexo`
--
ALTER TABLE `pesex_sexo`
  ADD PRIMARY KEY (`PESEX_CODIGO`);

--
-- Indices de la tabla `ppro_provincia`
--
ALTER TABLE `ppro_provincia`
  ADD PRIMARY KEY (`PPRO_CODIGO`);

--
-- Indices de la tabla `sper_perfil`
--
ALTER TABLE `sper_perfil`
  ADD PRIMARY KEY (`SPER_CODIGO`),
  ADD KEY `FK_PERFIL_ROL` (`SRO_CODIGO_ROL`),
  ADD KEY `FK_PERFIL_ROL1` (`CODIGO_ROL`),
  ADD KEY `FK_PERFIL_SUBSISTEMA` (`SSUB_CODIGO`);

--
-- Indices de la tabla `srol_rol`
--
ALTER TABLE `srol_rol`
  ADD PRIMARY KEY (`CODIGO_ROL`),
  ADD KEY `FK_ACTIVIDADES_ROL` (`SSUB_CODIGO`);

--
-- Indices de la tabla `ssub_subsistema`
--
ALTER TABLE `ssub_subsistema`
  ADD PRIMARY KEY (`SSUB_CODIGO`);

--
-- Indices de la tabla `susu_usuario`
--
ALTER TABLE `susu_usuario`
  ADD PRIMARY KEY (`PEEMP_CODIGO`,`SUSU_CODIGO`),
  ADD KEY `FK_USUARIO_PERFIL1` (`SPER_CODIGO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pcem_ciudad_empleado`
--
ALTER TABLE `pcem_ciudad_empleado`
  ADD CONSTRAINT `FK_PCEM_CIUDAD_EMPLEADO` FOREIGN KEY (`PEEMP_CODIGO`) REFERENCES `peemp_emple` (`PEEMP_CODIGO`),
  ADD CONSTRAINT `FK_PCEM_CIUDAD_EMPLEADO2` FOREIGN KEY (`PCIU_CODIGO`) REFERENCES `pciu_ciudad` (`PCIU_CODIGO`);

--
-- Filtros para la tabla `pciu_ciudad`
--
ALTER TABLE `pciu_ciudad`
  ADD CONSTRAINT `FK_PROVINCIA_CIUDAD` FOREIGN KEY (`PPRO_CODIGO`) REFERENCES `ppro_provincia` (`PPRO_CODIGO`);

--
-- Filtros para la tabla `pecar_cargo`
--
ALTER TABLE `pecar_cargo`
  ADD CONSTRAINT `FK_AREA_CARGO` FOREIGN KEY (`PARE_CODIGO`) REFERENCES `pare_area` (`PARE_CODIGO`);

--
-- Filtros para la tabla `peemp_emple`
--
ALTER TABLE `peemp_emple`
  ADD CONSTRAINT `FK_EMPLEADO_CARGO` FOREIGN KEY (`PECAR_CODIGO`) REFERENCES `pecar_cargo` (`PECAR_CODIGO`),
  ADD CONSTRAINT `FK_PR_PEESC_PEEMP` FOREIGN KEY (`PEESC_CODIGO`) REFERENCES `peesc_estciv` (`PEESC_CODIGO`),
  ADD CONSTRAINT `FK_PR_PESEX_PEEMP` FOREIGN KEY (`PESEX_CODIGO`) REFERENCES `pesex_sexo` (`PESEX_CODIGO`);

--
-- Filtros para la tabla `sper_perfil`
--
ALTER TABLE `sper_perfil`
  ADD CONSTRAINT `FK_PERFIL_ROL` FOREIGN KEY (`SRO_CODIGO_ROL`) REFERENCES `srol_rol` (`CODIGO_ROL`),
  ADD CONSTRAINT `FK_PERFIL_ROL1` FOREIGN KEY (`CODIGO_ROL`) REFERENCES `srol_rol` (`CODIGO_ROL`),
  ADD CONSTRAINT `FK_PERFIL_SUBSISTEMA` FOREIGN KEY (`SSUB_CODIGO`) REFERENCES `ssub_subsistema` (`SSUB_CODIGO`);

--
-- Filtros para la tabla `srol_rol`
--
ALTER TABLE `srol_rol`
  ADD CONSTRAINT `FK_ACTIVIDADES_ROL` FOREIGN KEY (`SSUB_CODIGO`) REFERENCES `ssub_subsistema` (`SSUB_CODIGO`);

--
-- Filtros para la tabla `susu_usuario`
--
ALTER TABLE `susu_usuario`
  ADD CONSTRAINT `FK_EMPLEADO_USUARIO1` FOREIGN KEY (`PEEMP_CODIGO`) REFERENCES `peemp_emple` (`PEEMP_CODIGO`),
  ADD CONSTRAINT `FK_USUARIO_PERFIL1` FOREIGN KEY (`SPER_CODIGO`) REFERENCES `sper_perfil` (`SPER_CODIGO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
