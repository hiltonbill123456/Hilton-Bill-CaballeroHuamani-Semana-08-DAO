-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2024 a las 02:17:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbwebxe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemaarti`
--

CREATE TABLE `xemaarti` (
  `art_codigo` char(8) NOT NULL,
  `art_codlin` char(4) DEFAULT NULL,
  `art_descri` varchar(50) DEFAULT NULL,
  `art_codund` char(2) DEFAULT NULL,
  `art_stoini` int(11) DEFAULT NULL,
  `art_stoact` int(11) DEFAULT NULL,
  `art_codest` int(11) NOT NULL,
  `art_codcat` char(4) DEFAULT NULL,
  `art_precio` decimal(18,3) DEFAULT NULL,
  `art_codzon` char(10) DEFAULT NULL,
  `art_abrevi` varchar(50) DEFAULT NULL,
  `art_antcod` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `xemaarti`
--

INSERT INTO `xemaarti` (`art_codigo`, `art_codlin`, `art_descri`, `art_codund`, `art_stoini`, `art_stoact`, `art_codest`, `art_codcat`, `art_precio`, `art_codzon`, `art_abrevi`, `art_antcod`) VALUES
('02010001', '0201', 'PALETA DE CHOCOLATE', '03', 0, 0, 1, '0001', 1.000, '01001-0100', 'PAL CHOCO', '902'),
('02010002', '0201', 'PALETA DE FRESA', '03', 0, 0, 1, '0001', 1.500, '01001-0100', 'PAL FRESA', '903'),
('02010003', '0201', 'PALETA DE LUCUMA', '03', 0, 0, 1, '0001', 1.800, '01001-0100', 'PAL LUCUM', '904'),
('02010004', '0201', 'CHISPECAS', '05', 0, 0, 1, '0002', 2.000, '01001-0100', 'CHISPECA', '801'),
('02010005', '0201', 'RON CON PASAS', '02', 0, 0, 1, '0002', 1.750, '01001-0100', 'RON C PASA', '614'),
('02010006', '0201', 'RELLENA', '02', 0, 0, 1, '0002', 1.640, '01001-0100', 'RELLENA', '908'),
('02010007', '0201', 'ALGARROBINA', '02', 0, 0, 1, '0002', 1.840, '01001-0100', 'ALGARROBIN', '604'),
('02010008', '0201', 'CAFE', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'CAFE', '605'),
('02010009', '0201', 'COCO', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'COCO', '606'),
('02010010', '0201', 'SAUCO', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'SAUCO', '607'),
('02010011', '0201', 'AGUAJE', '04', 0, 0, 1, '0002', NULL, '01001-0100', 'AGUAJE', '501'),
('02010012', '0201', 'SACRA FRESA', '04', 0, 0, 1, '0002', NULL, '01001-0100', 'SAC FRESA', '1001'),
('02010013', '0201', 'SACRA MANGO', '04', 0, 0, 1, '0002', NULL, '01001-0100', 'SAC MANGO', '1002'),
('02010014', '0201', 'SACRA GUANABANA', '04', 0, 0, 1, '0002', NULL, '01001-0100', 'SAC GUANA', '1003'),
('02010015', '0201', 'SACRA PINA', '04', 0, 0, 1, '0002', NULL, '01001-0100', 'SAC PINA', '1005'),
('02010016', '0201', 'SUCKOY CHOCOLATE', '09', 0, 0, 1, '0002', NULL, '01001-0100', 'SUK CHOCO', '1202'),
('02010017', '0201', 'SUCKOY LIMON', '09', 0, 0, 1, '0002', NULL, '01001-0100', 'SUK LIMON', '1203'),
('02010018', '0201', 'SUCKOY CHICLE', '09', 0, 0, 1, '0002', NULL, '01001-0100', 'SUK CHICLE', '1204'),
('02010019', '0201', 'SUCKOY CHICHA', '09', 0, 0, 1, '0002', NULL, '01001-0100', 'SUK CHICHA', '1205'),
('02010020', '0201', 'SUCKOY VAINILLA', '09', 0, 0, 1, '0002', NULL, '01001-0100', 'SUK VAINILLA', '1206'),
('02010021', '0201', 'SUPAY CHOCOLATE', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'SUP CHOCO', '101'),
('02010022', '0201', 'SUPAY LUCUMA', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'SUP LUCUM', '102'),
('02010023', '0201', 'CASANOVA', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'CASANOVA', '601'),
('02010024', '0201', 'YANACHA', '03', 0, 0, 1, '0002', NULL, '01001-0100', 'YANACHA', '602'),
('02010025', '0201', 'CHANCAYSITO', '07', 0, 0, 1, '0002', NULL, '01001-0100', 'CHANCAY', '603'),
('02010026', '0201', 'APU', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'APU', '608'),
('02010027', '0201', 'BISABOR', '03', 0, 0, 1, '0002', NULL, '01001-0100', 'BISABOR', '615'),
('02010028', '0201', 'KIMI SANWICH', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'KIMI', '610'),
('02010029', '0201', 'FRAMBUCO', '02', 0, 0, 0, '0002', NULL, '01001-0100', 'LIMA FROZEN', NULL),
('02010030', '0201', 'VASO LUCUMA', '03', 0, 0, 1, '0002', NULL, '01001-0100', 'VAS LUCUM', '201'),
('02010031', '0201', 'VASO FRESA', '03', 0, 0, 1, '0002', NULL, '01001-0100', 'VAS FRESA', '202'),
('02010032', '0201', 'CUBETA VAINILLA CHIP', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'CUB VAI CHIP', NULL),
('02010033', '0201', 'CUBETA LUCUMA CHIP', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'CUB LUCUMA', NULL),
('02010034', '0201', 'CUBETA TRICOLOR', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'CUB TRICO', '403'),
('02010035', '0201', 'CUBETA RON CON PASAS', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'CUB RN/PASA', NULL),
('02010036', '0201', 'CUBETA VAINILLLA CHOCOLATE', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'CUB VAI CHO', NULL),
('02010037', '0201', 'CUBETA MENTA CHIP', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'CUB MEN CHIP', NULL),
('02010038', '0201', 'LITRO CHOCO CHIP', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'LIT VAI CHIP', '301'),
('02010039', '0201', 'LITRO TRICOLOR', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'LIT TRICO', '302'),
('02010040', '0201', 'LITRO ALGARROBINA', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'LIT ALGAR', '303'),
('02010041', '0201', 'LITRO RON CON PASAS', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'LIT RN/PASA', '306'),
('02010042', '0201', 'LITRO SAUCO', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'LIT SAUCO', NULL),
('02010043', '0201', 'LITRO COCO', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'LIT COCO', NULL),
('02010044', '0201', 'LITRO CHOCOLATE', '01', 0, 0, 1, '0002', NULL, '01001-0100', 'LIT CHOCO', '309'),
('02010045', '0201', 'SACRA MARACUYA', '04', 0, 0, 1, '0002', NULL, '01001-0100', 'SAC MARAC', '1004'),
('02010046', '0201', 'PIÑA COLA', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'PIÑA COLA', NULL),
('02010047', '0201', 'CHISPECA FRESA', '05', 0, 0, 1, '0002', 1.000, '01001-0100', 'CHIS FRESA', NULL),
('02010048', '0201', 'UNGURAHUI', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'UNGURA', NULL),
('02010049', '0201', 'CHELITA', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'CHELITA', NULL),
('02010050', '0201', 'APU CHOCOLATE', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'APU CHOCO', NULL),
('02010051', '0201', 'FRAMBRUCO', '02', 0, 0, 1, '0002', NULL, '01001-0100', 'FRAMBRUCO', NULL),
('03010001', '0301', 'BATERIA GRANDE', '01', 0, 0, 1, '0001', NULL, '01001-0100', 'BATERIA G', NULL),
('04010001', '0401', 'ARTICHEESE', '08', 0, 0, 1, '0001', NULL, '01001-0200', 'ARTICHEESE', NULL),
('04020001', '0402', 'HUMITA', '01', 0, 0, 1, '0001', NULL, '01001-0200', 'HUMITA', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemacliente`
--

CREATE TABLE `xemacliente` (
  `cli_codigo` char(15) NOT NULL,
  `cli_coddoc` char(1) DEFAULT NULL,
  `cli_docnum` varchar(15) NOT NULL,
  `cli_razsoc` varchar(200) DEFAULT NULL,
  `cli_apepat` varchar(50) DEFAULT NULL,
  `cli_apemat` varchar(50) DEFAULT NULL,
  `cli_nombre` varchar(50) DEFAULT NULL,
  `cli_codubi` char(6) DEFAULT NULL,
  `cli_direcc` varchar(200) DEFAULT NULL,
  `cli_refere` varchar(200) DEFAULT NULL,
  `cli_email` varchar(50) DEFAULT NULL,
  `cli_nrotlf` varchar(50) DEFAULT NULL,
  `cli_nrocel` varchar(50) DEFAULT NULL,
  `cli_latitu` varchar(50) DEFAULT NULL,
  `cli_longit` varchar(50) DEFAULT NULL,
  `cli_codrut` char(2) DEFAULT NULL,
  `cli_images` varchar(500) DEFAULT NULL,
  `cli_macuse` int(11) DEFAULT NULL,
  `cli_mackey` int(11) DEFAULT NULL,
  `cli_mac182` varchar(50) DEFAULT NULL,
  `cli_mac282` varchar(50) DEFAULT NULL,
  `cli_umbrel` int(11) DEFAULT NULL,
  `cli_feccre` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cli_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemaespe`
--

CREATE TABLE `xemaespe` (
  `esp_codart` char(8) NOT NULL,
  `esp_codcar` char(3) NOT NULL,
  `esp_dato` varchar(50) DEFAULT NULL,
  `esp_codrub` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemaline`
--

CREATE TABLE `xemaline` (
  `lin_codigo` char(4) NOT NULL,
  `lin_descri` varchar(50) DEFAULT NULL,
  `lin_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `xemaline`
--

INSERT INTO `xemaline` (`lin_codigo`, `lin_descri`, `lin_codest`) VALUES
('0100', 'CONGELADORAS', 1),
('0101', 'CONGELADORA CHICA', 1),
('0102', 'CONGELADORA MEDIANA', 1),
('0103', 'CONGELADORA GRANDE', 1),
('0200', 'HELADOS', 1),
('0201', 'ESPECIALES', 1),
('0300', 'BATERIAS', 1),
('0301', 'BATERIAS GRANDES', 1),
('0400', 'ALIMENTOS', 1),
('0401', 'SNACKS', 1),
('0402', 'HUMAS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemaruta`
--

CREATE TABLE `xemaruta` (
  `rut_codigo` char(2) NOT NULL,
  `rut_descri` varchar(50) DEFAULT NULL,
  `rut_vencod` char(3) DEFAULT NULL,
  `rut_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xematdoc`
--

CREATE TABLE `xematdoc` (
  `tdo_codigo` char(2) NOT NULL,
  `tdo_descri` varchar(50) DEFAULT NULL,
  `tdo_abrevi` varchar(10) DEFAULT NULL,
  `tdo_sales` int(11) DEFAULT NULL,
  `tdo_invent` int(11) DEFAULT NULL,
  `tdo_estcod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemazona`
--

CREATE TABLE `xemazona` (
  `zon_codigo` char(10) NOT NULL,
  `zon_descri` varchar(50) DEFAULT NULL,
  `zon_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `xemazona`
--

INSERT INTO `xemazona` (`zon_codigo`, `zon_descri`, `zon_codest`) VALUES
('01001-0100', 'VES - CUALQUIER CONGELADOR', 1),
('01001-0200', 'VES - CUALQUIER ALMACEN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemvdocu1`
--

CREATE TABLE `xemvdocu1` (
  `do1_empcod` char(2) NOT NULL,
  `do1_ptocod` char(3) NOT NULL,
  `do1_tdocod` char(2) NOT NULL,
  `do1_sernro` char(4) NOT NULL,
  `do1_correl` char(7) NOT NULL,
  `do1_fecemi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `do1_trncod` char(2) DEFAULT NULL,
  `do1_clicod` char(15) DEFAULT NULL,
  `do1_direcc` varchar(200) DEFAULT NULL,
  `do1_vencod` char(37) DEFAULT NULL,
  `do1_usucod` char(37) DEFAULT NULL,
  `do1_docref` varchar(20) DEFAULT NULL,
  `do1_observ` varchar(200) DEFAULT NULL,
  `do1_submon` decimal(10,6) DEFAULT NULL,
  `do1_igvmon` decimal(10,6) DEFAULT NULL,
  `do1_totmon` decimal(10,6) DEFAULT NULL,
  `do1_estcod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemvdocu2`
--

CREATE TABLE `xemvdocu2` (
  `do2_empcod` char(2) NOT NULL,
  `do2_ptocod` char(3) NOT NULL,
  `do2_tdocod` char(2) NOT NULL,
  `do2_sernro` char(4) NOT NULL,
  `do2_correl` char(7) NOT NULL,
  `do2_fecemi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `do2_trncod` char(2) DEFAULT NULL,
  `do2_itenro` char(3) DEFAULT NULL,
  `do2_artcod` char(8) NOT NULL,
  `do2_undcod` char(2) DEFAULT NULL,
  `do2_factor` decimal(10,6) DEFAULT NULL,
  `do2_cantid` decimal(10,6) DEFAULT NULL,
  `do2_premon` decimal(10,6) DEFAULT NULL,
  `do2_igvmon` decimal(10,6) DEFAULT NULL,
  `do2_common` decimal(10,6) DEFAULT NULL,
  `do2_estcod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemvgui1`
--

CREATE TABLE `xemvgui1` (
  `gi1_codemp` char(2) NOT NULL,
  `gi1_codpto` char(3) NOT NULL,
  `gi1_tipdoc` char(1) NOT NULL,
  `gi1_nrodoc` char(24) NOT NULL,
  `gi1_fecemi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gi1_codtrn` char(2) DEFAULT NULL,
  `gi1_solusu` char(37) DEFAULT NULL,
  `gi1_codusu` char(37) DEFAULT NULL,
  `gi1_nrosol` varchar(22) DEFAULT NULL,
  `gi1_docref` varchar(24) DEFAULT NULL,
  `gi1_observ` varchar(200) DEFAULT NULL,
  `gi1_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemvgui2`
--

CREATE TABLE `xemvgui2` (
  `gi2_codemp` char(2) NOT NULL,
  `gi2_codpto` char(3) NOT NULL,
  `gi2_tipdoc` char(1) NOT NULL,
  `gi2_nrodoc` char(24) NOT NULL,
  `gi2_fecemi` timestamp NOT NULL DEFAULT current_timestamp(),
  `gi2_codtrn` char(2) DEFAULT NULL,
  `gi2_nroite` char(3) DEFAULT NULL,
  `gi2_codart` char(8) NOT NULL,
  `gi2_cantid` decimal(10,6) DEFAULT NULL,
  `gi2_codusu` char(37) DEFAULT NULL,
  `gi2_docref` varchar(24) DEFAULT NULL,
  `gi2_chksol` int(11) DEFAULT NULL,
  `gi2_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemvprecio`
--

CREATE TABLE `xemvprecio` (
  `pre_artcod` char(8) NOT NULL,
  `pre_valcom` decimal(10,6) DEFAULT NULL,
  `pre_valvxm` decimal(10,6) DEFAULT NULL,
  `pre_valvxn` decimal(10,6) DEFAULT NULL,
  `pre_valvxd` decimal(10,6) DEFAULT NULL,
  `pre_fecha` date DEFAULT NULL,
  `pre_estcod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemvsoli1`
--

CREATE TABLE `xemvsoli1` (
  `so1_empcod` char(2) NOT NULL,
  `so1_ptocod` char(3) NOT NULL,
  `so1_tdocod` char(2) NOT NULL,
  `so1_sernro` char(4) NOT NULL,
  `so1_correl` char(7) NOT NULL,
  `so1_fecemi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `so1_trncod` char(2) DEFAULT NULL,
  `so1_clicod` char(15) DEFAULT NULL,
  `so1_direcc` varchar(200) DEFAULT NULL,
  `so1_vencod` char(37) DEFAULT NULL,
  `so1_usucod` char(37) DEFAULT NULL,
  `so1_docref` varchar(20) DEFAULT NULL,
  `so1_observ` varchar(200) DEFAULT NULL,
  `so1_submon` decimal(10,6) DEFAULT NULL,
  `so1_igvmon` decimal(10,6) DEFAULT NULL,
  `so1_totmon` decimal(10,6) DEFAULT NULL,
  `so1_estcod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xemvsoli2`
--

CREATE TABLE `xemvsoli2` (
  `so2_empcod` char(2) NOT NULL,
  `so2_ptocod` char(3) NOT NULL,
  `so2_tdocod` char(2) NOT NULL,
  `so2_sernro` char(4) NOT NULL,
  `so2_correl` char(7) NOT NULL,
  `so2_fecemi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `so2_trncod` char(2) DEFAULT NULL,
  `so2_itenro` char(3) DEFAULT NULL,
  `so2_artcod` char(8) NOT NULL,
  `so2_undcod` char(2) DEFAULT NULL,
  `so2_factor` decimal(10,6) DEFAULT NULL,
  `so2_cantid` decimal(10,6) DEFAULT NULL,
  `so2_premon` decimal(10,6) DEFAULT NULL,
  `so2_igvmon` decimal(10,6) DEFAULT NULL,
  `so2_common` decimal(10,6) DEFAULT NULL,
  `so2_estcod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbcara`
--

CREATE TABLE `xetbcara` (
  `car_codigo` char(3) NOT NULL,
  `car_descri` varchar(50) DEFAULT NULL,
  `car_codest` int(11) DEFAULT NULL,
  `car_numcar` decimal(10,0) DEFAULT NULL,
  `car_tipo` char(1) DEFAULT NULL,
  `car_oblig` char(1) DEFAULT NULL,
  `car_tipcam` char(2) DEFAULT NULL,
  `car_tabla` varchar(50) DEFAULT NULL,
  `car_campo1` varchar(50) DEFAULT NULL,
  `car_campo2` varchar(50) DEFAULT NULL,
  `car_where` varchar(50) DEFAULT NULL,
  `car_tipcar` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbcarv`
--

CREATE TABLE `xetbcarv` (
  `vca_codcar` char(3) DEFAULT NULL,
  `vca_tipcar` char(2) DEFAULT NULL,
  `vca_codsec` char(4) DEFAULT NULL,
  `vca_valor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbcata`
--

CREATE TABLE `xetbcata` (
  `cat_codigo` char(4) NOT NULL,
  `cat_descri` varchar(50) DEFAULT NULL,
  `cat_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `xetbcata`
--

INSERT INTO `xetbcata` (`cat_codigo`, `cat_descri`, `cat_codest`) VALUES
('0001', 'GENERAL', NULL),
('0002', 'HELADOS', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbcava`
--

CREATE TABLE `xetbcava` (
  `vca_codcat` char(4) NOT NULL,
  `vca_codcar` char(3) NOT NULL,
  `vca_tipcar` char(2) DEFAULT NULL,
  `vca_valor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbconfig`
--

CREATE TABLE `xetbconfig` (
  `cfg_codemp` char(2) NOT NULL,
  `cfg_codpto` char(3) NOT NULL,
  `cfg_codusu` char(37) NOT NULL,
  `cfg_codsis` char(2) NOT NULL,
  `cfg_impddg` int(11) DEFAULT NULL,
  `cfg_visdpp` int(11) DEFAULT NULL,
  `cfg_visrpp` int(11) DEFAULT NULL,
  `cfg_nroser` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbempr`
--

CREATE TABLE `xetbempr` (
  `emp_codigo` char(2) NOT NULL,
  `emp_razsoc` varchar(100) DEFAULT NULL,
  `emp_logo` varchar(500) DEFAULT NULL,
  `emp_nroruc` char(11) DEFAULT NULL,
  `emp_direcc` varchar(100) DEFAULT NULL,
  `emp_codest` int(11) NOT NULL,
  `emp_razcom` varchar(100) NOT NULL,
  `emp_logpth` varchar(150) DEFAULT NULL,
  `emp_nrotlf` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `xetbempr`
--

INSERT INTO `xetbempr` (`emp_codigo`, `emp_razsoc`, `emp_logo`, `emp_nroruc`, `emp_direcc`, `emp_codest`, `emp_razcom`, `emp_logpth`, `emp_nrotlf`) VALUES
('01', 'HELADOS ARTIKA', NULL, '10470058043', 'SECTOR 2 GRUPO 5 MZA. LOTE 6', 1, 'ARTIKA VES', NULL, '991716219  ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbespe`
--

CREATE TABLE `xetbespe` (
  `esp_codart` char(8) NOT NULL,
  `esp_codcar` char(3) NOT NULL,
  `esp_dato` varchar(50) DEFAULT NULL,
  `esp_codrub` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbestado`
--

CREATE TABLE `xetbestado` (
  `est_codigo` int(11) NOT NULL,
  `est_descri` varchar(50) DEFAULT NULL,
  `est_slbest` varchar(50) DEFAULT NULL,
  `est_plbest` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbnivel`
--

CREATE TABLE `xetbnivel` (
  `niv_codigo` char(1) NOT NULL,
  `niv_descri` varchar(50) DEFAULT NULL,
  `niv_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `xetbnivel`
--

INSERT INTO `xetbnivel` (`niv_codigo`, `niv_descri`, `niv_codest`) VALUES
('D', 'DESKTOP', 1),
('G', 'GLOBAL', 1),
('W', 'WEB', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbnumera`
--

CREATE TABLE `xetbnumera` (
  `num_empcod` char(2) NOT NULL,
  `num_ptoemi` char(3) NOT NULL,
  `num_tdocod` char(2) NOT NULL,
  `num_sernro` char(4) NOT NULL,
  `num_correl` char(10) DEFAULT NULL,
  `num_tamano` int(11) DEFAULT NULL,
  `num_estcod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbptoemi`
--

CREATE TABLE `xetbptoemi` (
  `pto_codigo` char(3) NOT NULL,
  `pto_descri` varchar(50) DEFAULT NULL,
  `pto_codest` int(11) DEFAULT NULL,
  `pto_codemp` char(2) DEFAULT NULL,
  `pto_hroini` char(5) DEFAULT NULL,
  `pto_hrofin` char(5) DEFAULT NULL,
  `pto_hrwini` char(5) DEFAULT NULL,
  `pto_hrwfin` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `xetbptoemi`
--

INSERT INTO `xetbptoemi` (`pto_codigo`, `pto_descri`, `pto_codest`, `pto_codemp`, `pto_hroini`, `pto_hrofin`, `pto_hrwini`, `pto_hrwfin`) VALUES
('001', 'VILLA EL SALVADOR I', 1, '01', '10:00', '21:00', '10:00', '19:00'),
('002', 'LURIN', 1, '01', '10:00', '21:00', '10:00', '19:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbrecc`
--

CREATE TABLE `xetbrecc` (
  `rcc_codcat` char(4) DEFAULT NULL,
  `rcc_codcar` char(3) DEFAULT NULL,
  `rcc_tipcar` char(2) DEFAULT NULL,
  `rcc_codite` char(3) DEFAULT NULL,
  `rcc_obtdat` char(1) DEFAULT NULL,
  `rcc_oblig` char(1) DEFAULT NULL,
  `rcc_tipcam` char(2) DEFAULT NULL,
  `rcc_tabla` varchar(50) DEFAULT NULL,
  `rcc_campo1` varchar(50) DEFAULT NULL,
  `rcc_campo2` varchar(50) DEFAULT NULL,
  `rcc_where` varchar(50) DEFAULT NULL,
  `rcc_tipo` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbsist`
--

CREATE TABLE `xetbsist` (
  `sis_codigo` char(2) NOT NULL,
  `sis_descri` varchar(50) DEFAULT NULL,
  `sis_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbtran`
--

CREATE TABLE `xetbtran` (
  `trn_codigo` char(2) NOT NULL,
  `trn_descri` varchar(50) DEFAULT NULL,
  `trn_abrevi` varchar(50) DEFAULT NULL,
  `trn_codtip` char(1) DEFAULT NULL,
  `trn_trnadd` int(11) DEFAULT NULL,
  `trn_tdocod` char(2) DEFAULT NULL,
  `trn_estcod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbubigeo`
--

CREATE TABLE `xetbubigeo` (
  `ubi_codigo` char(6) NOT NULL,
  `ubi_descri` varchar(200) DEFAULT NULL,
  `ubi_estcod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbunid`
--

CREATE TABLE `xetbunid` (
  `und_codigo` char(2) NOT NULL,
  `und_descri` varchar(50) DEFAULT NULL,
  `und_abrevi` varchar(50) DEFAULT NULL,
  `und_factor` decimal(10,6) DEFAULT NULL,
  `und_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `xetbunid`
--

INSERT INTO `xetbunid` (`und_codigo`, `und_descri`, `und_abrevi`, `und_factor`, `und_codest`) VALUES
('01', 'UNIDAD', 'UND', 1.000000, 1),
('02', 'CAJA 20 UNIDADES', 'x20', 20.000000, 1),
('03', 'CAJA 24 UNIDADES', 'X24', 24.000000, 1),
('04', 'CAJA 25 UNIDADES', 'X25', 25.000000, 1),
('05', 'CAJA 50 UNIDADES', 'X50', 50.000000, 1),
('06', 'CAJA 72 UNIDADES', 'X72', 72.000000, 1),
('07', 'CAJA 27 UNIDADES', 'X27', 27.000000, 1),
('08', 'TIRA 12 UNIDADES', 'X12', 12.000000, 1),
('09', 'CAJA 66 UNIDADES', 'X66', 66.000000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xetbuser`
--

CREATE TABLE `xetbuser` (
  `usu_codigo` char(37) NOT NULL,
  `usu_accniv` char(1) DEFAULT NULL,
  `usu_login` varchar(10) DEFAULT NULL,
  `usu_passwd` varchar(10) DEFAULT NULL,
  `usu_pasmod` varchar(10) DEFAULT NULL,
  `usu_descri` varchar(50) DEFAULT NULL,
  `usu_nrodni` varchar(15) DEFAULT NULL,
  `usu_apepat` varchar(50) DEFAULT NULL,
  `usu_apemat` varchar(50) DEFAULT NULL,
  `usu_nombre` varchar(50) DEFAULT NULL,
  `usu_direcc` varchar(200) DEFAULT NULL,
  `usu_codubi` char(6) DEFAULT NULL,
  `usu_nrotlf` varchar(50) DEFAULT NULL,
  `usu_email` varchar(50) DEFAULT NULL,
  `usu_images` char(1) DEFAULT NULL,
  `usu_feccre` timestamp NOT NULL DEFAULT curdate(),
  `usu_feccad` timestamp NOT NULL DEFAULT curdate(),
  `usu_codest` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `xetbuser`
--

INSERT INTO `xetbuser` (`usu_codigo`, `usu_accniv`, `usu_login`, `usu_passwd`, `usu_pasmod`, `usu_descri`, `usu_nrodni`, `usu_apepat`, `usu_apemat`, `usu_nombre`, `usu_direcc`, `usu_codubi`, `usu_nrotlf`, `usu_email`, `usu_images`, `usu_feccre`, `usu_feccad`, `usu_codest`) VALUES
('5d956eaf-34fd-4a1c-a952-55ddb3bae3ab', 'G', 'GVALDIVIA', '456789', '123456', 'GIAN VALDIVIA LINARES', '80807070', 'VALDIVIA', 'LINARES', 'GIAN', 'CA', '150101', '955800000', 'c23630@utp.edu.pe', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
('ae8017cf-bc8d-4bb8-9530-579555fcd0a2', 'G', 'ATORRES', '123456', '987654', 'ALEX FERNANDO TORRES CHAHUARA', '42455979', 'TORRES', 'CHAHUARA', 'ALEX FERNANDO', 'AV', '150101', '955800000', 'c23630@utp.edu.pe', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `xemaarti`
--
ALTER TABLE `xemaarti`
  ADD PRIMARY KEY (`art_codigo`),
  ADD KEY `art_codcat` (`art_codcat`),
  ADD KEY `art_codlin` (`art_codlin`);

--
-- Indices de la tabla `xemacliente`
--
ALTER TABLE `xemacliente`
  ADD PRIMARY KEY (`cli_codigo`);

--
-- Indices de la tabla `xemaespe`
--
ALTER TABLE `xemaespe`
  ADD PRIMARY KEY (`esp_codart`,`esp_codcar`),
  ADD KEY `esp_codcar` (`esp_codcar`);

--
-- Indices de la tabla `xemaline`
--
ALTER TABLE `xemaline`
  ADD PRIMARY KEY (`lin_codigo`);

--
-- Indices de la tabla `xemaruta`
--
ALTER TABLE `xemaruta`
  ADD PRIMARY KEY (`rut_codigo`);

--
-- Indices de la tabla `xematdoc`
--
ALTER TABLE `xematdoc`
  ADD PRIMARY KEY (`tdo_codigo`);

--
-- Indices de la tabla `xemazona`
--
ALTER TABLE `xemazona`
  ADD PRIMARY KEY (`zon_codigo`);

--
-- Indices de la tabla `xemvdocu1`
--
ALTER TABLE `xemvdocu1`
  ADD PRIMARY KEY (`do1_empcod`,`do1_ptocod`,`do1_tdocod`,`do1_sernro`,`do1_correl`);

--
-- Indices de la tabla `xemvdocu2`
--
ALTER TABLE `xemvdocu2`
  ADD PRIMARY KEY (`do2_empcod`,`do2_ptocod`,`do2_tdocod`,`do2_sernro`,`do2_correl`,`do2_artcod`);

--
-- Indices de la tabla `xemvgui1`
--
ALTER TABLE `xemvgui1`
  ADD PRIMARY KEY (`gi1_nrodoc`,`gi1_tipdoc`,`gi1_codemp`,`gi1_codpto`),
  ADD KEY `gi1_codemp` (`gi1_codemp`),
  ADD KEY `gi1_codpto` (`gi1_codpto`),
  ADD KEY `gi1_codtrn` (`gi1_codtrn`),
  ADD KEY `gi1_codusu` (`gi1_codusu`);

--
-- Indices de la tabla `xemvgui2`
--
ALTER TABLE `xemvgui2`
  ADD PRIMARY KEY (`gi2_codemp`,`gi2_codpto`,`gi2_tipdoc`,`gi2_nrodoc`,`gi2_codart`),
  ADD KEY `gi2_codart` (`gi2_codart`),
  ADD KEY `gi2_codusu` (`gi2_codusu`);

--
-- Indices de la tabla `xemvprecio`
--
ALTER TABLE `xemvprecio`
  ADD PRIMARY KEY (`pre_artcod`);

--
-- Indices de la tabla `xemvsoli1`
--
ALTER TABLE `xemvsoli1`
  ADD PRIMARY KEY (`so1_empcod`,`so1_ptocod`,`so1_tdocod`,`so1_sernro`,`so1_correl`);

--
-- Indices de la tabla `xemvsoli2`
--
ALTER TABLE `xemvsoli2`
  ADD PRIMARY KEY (`so2_empcod`,`so2_ptocod`,`so2_tdocod`,`so2_sernro`,`so2_correl`,`so2_artcod`);

--
-- Indices de la tabla `xetbcara`
--
ALTER TABLE `xetbcara`
  ADD PRIMARY KEY (`car_codigo`);

--
-- Indices de la tabla `xetbcarv`
--
ALTER TABLE `xetbcarv`
  ADD KEY `vca_codcar` (`vca_codcar`);

--
-- Indices de la tabla `xetbcata`
--
ALTER TABLE `xetbcata`
  ADD PRIMARY KEY (`cat_codigo`);

--
-- Indices de la tabla `xetbcava`
--
ALTER TABLE `xetbcava`
  ADD PRIMARY KEY (`vca_codcat`,`vca_codcar`),
  ADD KEY `vca_codcar` (`vca_codcar`);

--
-- Indices de la tabla `xetbconfig`
--
ALTER TABLE `xetbconfig`
  ADD PRIMARY KEY (`cfg_codemp`,`cfg_codpto`,`cfg_codusu`,`cfg_codsis`),
  ADD KEY `cfg_codpto` (`cfg_codpto`),
  ADD KEY `cfg_codsis` (`cfg_codsis`);

--
-- Indices de la tabla `xetbempr`
--
ALTER TABLE `xetbempr`
  ADD PRIMARY KEY (`emp_codigo`);

--
-- Indices de la tabla `xetbespe`
--
ALTER TABLE `xetbespe`
  ADD PRIMARY KEY (`esp_codart`,`esp_codcar`),
  ADD KEY `esp_codcar` (`esp_codcar`);

--
-- Indices de la tabla `xetbestado`
--
ALTER TABLE `xetbestado`
  ADD PRIMARY KEY (`est_codigo`);

--
-- Indices de la tabla `xetbnivel`
--
ALTER TABLE `xetbnivel`
  ADD PRIMARY KEY (`niv_codigo`);

--
-- Indices de la tabla `xetbnumera`
--
ALTER TABLE `xetbnumera`
  ADD PRIMARY KEY (`num_empcod`,`num_ptoemi`,`num_tdocod`,`num_sernro`);

--
-- Indices de la tabla `xetbptoemi`
--
ALTER TABLE `xetbptoemi`
  ADD PRIMARY KEY (`pto_codigo`);

--
-- Indices de la tabla `xetbsist`
--
ALTER TABLE `xetbsist`
  ADD PRIMARY KEY (`sis_codigo`);

--
-- Indices de la tabla `xetbtran`
--
ALTER TABLE `xetbtran`
  ADD PRIMARY KEY (`trn_codigo`);

--
-- Indices de la tabla `xetbubigeo`
--
ALTER TABLE `xetbubigeo`
  ADD PRIMARY KEY (`ubi_codigo`);

--
-- Indices de la tabla `xetbunid`
--
ALTER TABLE `xetbunid`
  ADD PRIMARY KEY (`und_codigo`);

--
-- Indices de la tabla `xetbuser`
--
ALTER TABLE `xetbuser`
  ADD PRIMARY KEY (`usu_codigo`),
  ADD KEY `usu_accniv` (`usu_accniv`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `xemaarti`
--
ALTER TABLE `xemaarti`
  ADD CONSTRAINT `xemaarti_ibfk_1` FOREIGN KEY (`art_codcat`) REFERENCES `xetbcata` (`cat_codigo`),
  ADD CONSTRAINT `xemaarti_ibfk_2` FOREIGN KEY (`art_codlin`) REFERENCES `xemaline` (`lin_codigo`);

--
-- Filtros para la tabla `xemaespe`
--
ALTER TABLE `xemaespe`
  ADD CONSTRAINT `xemaespe_ibfk_1` FOREIGN KEY (`esp_codart`) REFERENCES `xemaarti` (`art_codigo`),
  ADD CONSTRAINT `xemaespe_ibfk_2` FOREIGN KEY (`esp_codcar`) REFERENCES `xetbcara` (`car_codigo`);

--
-- Filtros para la tabla `xemvgui1`
--
ALTER TABLE `xemvgui1`
  ADD CONSTRAINT `xemvgui1_ibfk_1` FOREIGN KEY (`gi1_codemp`) REFERENCES `xetbempr` (`emp_codigo`),
  ADD CONSTRAINT `xemvgui1_ibfk_2` FOREIGN KEY (`gi1_codpto`) REFERENCES `xetbptoemi` (`pto_codigo`),
  ADD CONSTRAINT `xemvgui1_ibfk_3` FOREIGN KEY (`gi1_codtrn`) REFERENCES `xetbtran` (`trn_codigo`),
  ADD CONSTRAINT `xemvgui1_ibfk_4` FOREIGN KEY (`gi1_codusu`) REFERENCES `xetbuser` (`usu_codigo`);

--
-- Filtros para la tabla `xemvgui2`
--
ALTER TABLE `xemvgui2`
  ADD CONSTRAINT `xemvgui2_ibfk_1` FOREIGN KEY (`gi2_codart`) REFERENCES `xemaarti` (`art_codigo`),
  ADD CONSTRAINT `xemvgui2_ibfk_2` FOREIGN KEY (`gi2_codusu`) REFERENCES `xetbuser` (`usu_codigo`);

--
-- Filtros para la tabla `xetbcarv`
--
ALTER TABLE `xetbcarv`
  ADD CONSTRAINT `xetbcarv_ibfk_1` FOREIGN KEY (`vca_codcar`) REFERENCES `xetbcara` (`car_codigo`);

--
-- Filtros para la tabla `xetbcava`
--
ALTER TABLE `xetbcava`
  ADD CONSTRAINT `xetbcava_ibfk_1` FOREIGN KEY (`vca_codcar`) REFERENCES `xetbcara` (`car_codigo`);

--
-- Filtros para la tabla `xetbconfig`
--
ALTER TABLE `xetbconfig`
  ADD CONSTRAINT `xetbconfig_ibfk_1` FOREIGN KEY (`cfg_codemp`) REFERENCES `xetbempr` (`emp_codigo`),
  ADD CONSTRAINT `xetbconfig_ibfk_2` FOREIGN KEY (`cfg_codpto`) REFERENCES `xetbptoemi` (`pto_codigo`),
  ADD CONSTRAINT `xetbconfig_ibfk_3` FOREIGN KEY (`cfg_codsis`) REFERENCES `xetbsist` (`sis_codigo`);

--
-- Filtros para la tabla `xetbespe`
--
ALTER TABLE `xetbespe`
  ADD CONSTRAINT `xetbespe_ibfk_1` FOREIGN KEY (`esp_codart`) REFERENCES `xemaarti` (`art_codigo`),
  ADD CONSTRAINT `xetbespe_ibfk_2` FOREIGN KEY (`esp_codcar`) REFERENCES `xetbcara` (`car_codigo`);

--
-- Filtros para la tabla `xetbuser`
--
ALTER TABLE `xetbuser`
  ADD CONSTRAINT `xetbuser_ibfk_1` FOREIGN KEY (`usu_accniv`) REFERENCES `xetbnivel` (`niv_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



