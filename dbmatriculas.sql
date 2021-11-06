-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2021 a las 17:06:11
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbmatriculas`
--

CREATE DATABASE dbmatriculas;
USE dbmatriculas;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course`
--

CREATE TABLE `course` (
  `id_course` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `credit` int(10) UNSIGNED NOT NULL,
  `type` enum('basic','required','optional') NOT NULL,
  `course` tinyint(3) UNSIGNED NOT NULL,
  `semestre` tinyint(3) UNSIGNED NOT NULL,
  `id_teacher` int(10) UNSIGNED DEFAULT NULL,
  `id_grade` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `course`
--

INSERT INTO `course` (`id_course`, `name`, `credit`, `type`, `course`, `semestre`, `id_teacher`, `id_grade`) VALUES
(1, 'Álgegra lineal y matemática discreta', 6, 'basic', 1, 1, 3, 4),
(2, 'Cálculo', 6, 'basic', 1, 1, 14, 4),
(3, 'Física para informática', 6, 'basic', 1, 1, 3, 4),
(4, 'Introducción a la programación', 6, 'basic', 1, 1, 14, 4),
(5, 'Organización y gestión de empresas', 6, 'basic', 1, 1, 3, 4),
(6, 'Estadística', 6, 'basic', 1, 2, 14, 4),
(7, 'Estructura y tecnología de computadores', 6, 'basic', 1, 2, 3, 4),
(8, 'Fundamentos de electrónica', 6, 'basic', 1, 2, 14, 4),
(9, 'Lógica y algorítmica', 6, 'basic', 1, 2, 3, 4),
(10, 'Metodología de la programación', 6, 'basic', 1, 2, 14, 4),
(11, 'Arquitectura de Computadores', 6, 'basic', 2, 1, 3, 4),
(12, 'Estructura de Datos y Algoritmos I', 6, 'required', 2, 1, 3, 4),
(13, 'Ingeniería del Software', 6, 'required', 2, 1, 14, 4),
(14, 'Sistemas Inteligentes', 6, 'required', 2, 1, 3, 4),
(15, 'Sistemas Operativos', 6, 'required', 2, 1, 14, 4),
(16, 'Bases de Datos', 6, 'basic', 2, 2, 14, 4),
(17, 'Estructura de Datos y Algoritmos II', 6, 'required', 2, 2, 14, 4),
(18, 'Fundamentos de Redes de\nComputadores', 6, 'required', 2, 2, 3, 4),
(19, 'Planificación y Gestión de Proyectos\nInformáticos', 6, 'required', 2, 2, 3, 4),
(20, 'Programación de Servicios Software', 6, 'required', 2, 2, 14, 4),
(21, 'Desarrollo de interfaces de usuario', 6, 'required', 3, 1, 14, 4),
(22, 'Ingeniería de Requisitos', 6, 'optional', 3, 1, NULL, 4),
(23, 'Integración de las Tecnologías de la\nInformación en las Organizaciones', 6, 'optional', 3, 1, NULL, 4),
(24, 'Modelado y Diseño del Software 1', 6, 'optional', 3, 1, NULL, 4),
(25, 'Multiprocesadores', 6, 'optional', 3, 1, NULL, 4),
(26, 'Seguridad y cumplimiento normativo', 6, 'optional', 3, 1, NULL, 4),
(27, 'Sistema de Información para las\nOrganizaciones', 6, 'optional', 3, 1, NULL, 4),
(28, 'Tecnologías web', 6, 'optional', 3, 1, NULL, 4),
(29, 'Teoría de códigos y criptografía', 6, 'optional', 3, 1, NULL, 4),
(30, 'Administración de bases de datos', 6, 'optional', 3, 2, NULL, 4),
(31, 'Herramientas y Métodos de Ingeniería\ndel Software', 6, 'optional', 3, 2, NULL, 4),
(32, 'Informática industrial y robótica', 6, 'optional', 3, 2, NULL, 4),
(33, 'Ingeniería de Sistemas de Información', 6, 'optional', 3, 2, NULL, 4),
(34, 'Modelado y Diseño del Software 2', 6, 'optional', 3, 2, NULL, 4),
(35, 'Negocio Electrónico', 6, 'optional', 3, 2, NULL, 4),
(36, 'Periféricos e interfaces', 6, 'optional', 3, 2, NULL, 4),
(37, 'Sistemas de tiempo real', 6, 'optional', 3, 2, NULL, 4),
(38, 'Tecnologías de acceso a red', 6, 'optional', 3, 2, NULL, 4),
(39, 'Tratamiento digital de imágenes', 6, 'optional', 3, 2, NULL, 4),
(40, 'Administración de redes y sistemas\noperativos', 6, 'optional', 4, 1, NULL, 4),
(41, 'Almacenes de Datos', 6, 'optional', 4, 1, NULL, 4),
(42, 'Fiabilidad y Gestión de Riesgos', 6, 'optional', 4, 1, NULL, 4),
(43, 'Líneas de Productos Software', 6, 'optional', 4, 1, NULL, 4),
(44, 'Procesos de Ingeniería del Software 1', 6, 'optional', 4, 1, NULL, 4),
(45, 'Tecnologías multimedia', 6, 'optional', 4, 1, NULL, 4),
(46, 'Análisis y planificación de las TI', 6, 'optional', 4, 2, NULL, 4),
(47, 'Desarrollo Rápido de Aplicaciones', 6, 'optional', 4, 2, NULL, 4),
(48, 'Gestión de la Calidad y de la Innovación\nTecnológica', 6, 'optional', 4, 2, NULL, 4),
(49, 'Inteligencia del Negocio', 6, 'optional', 4, 2, NULL, 4),
(50, 'Procesos de Ingeniería del Software 2', 6, 'optional', 4, 2, NULL, 4),
(51, 'Seguridad Informática', 6, 'optional', 4, 2, NULL, 4),
(52, 'Biologia celular', 6, 'basic', 1, 1, NULL, 7),
(53, 'Física', 6, 'basic', 1, 1, NULL, 7),
(54, 'Matemáticas I', 6, 'basic', 1, 1, NULL, 7),
(55, 'Química general', 6, 'basic', 1, 1, NULL, 7),
(56, 'Química orgánica', 6, 'basic', 1, 1, NULL, 7),
(57, 'Biología vegetal y animal', 6, 'basic', 1, 2, NULL, 7),
(58, 'Bioquímica', 6, 'basic', 1, 2, NULL, 7),
(59, 'Genética', 6, 'basic', 1, 2, NULL, 7),
(60, 'Matemáticas II', 6, 'basic', 1, 2, NULL, 7),
(61, 'Microbiología', 6, 'basic', 1, 2, NULL, 7),
(62, 'Botánica agrícola', 6, 'required', 2, 1, NULL, 7),
(63, 'Fisiología vegetal', 6, 'required', 2, 1, NULL, 7),
(64, 'Genética molecular', 6, 'required', 2, 1, NULL, 7),
(65, 'Ingeniería bioquímica', 6, 'required', 2, 1, NULL, 7),
(66, 'Termodinámica y cinética química\naplicada', 6, 'required', 2, 1, NULL, 7),
(67, 'Biorreactores', 6, 'required', 2, 2, NULL, 7),
(68, 'Biotecnología microbiana', 6, 'required', 2, 2, NULL, 7),
(69, 'Ingeniería genética', 6, 'required', 2, 2, NULL, 7),
(70, 'Inmunología', 6, 'required', 2, 2, NULL, 7),
(71, 'Virología', 6, 'required', 2, 2, NULL, 7),
(72, 'Bases moleculares del desarrollo\nvegetal', 5, 'required', 3, 1, NULL, 7),
(73, 'Fisiología animal', 5, 'required', 3, 1, NULL, 7),
(74, 'Metabolismo y biosíntesis de\nbiomoléculas', 6, 'required', 3, 1, NULL, 7),
(75, 'Operaciones de separación', 6, 'required', 3, 1, NULL, 7),
(76, 'Patología molecular de plantas', 5, 'required', 3, 1, NULL, 7),
(77, 'Técnicas instrumentales básicas', 5, 'required', 3, 1, NULL, 7),
(78, 'Bioinformática', 5, 'required', 3, 2, NULL, 7),
(79, 'Biotecnología de los productos\nhortofrutículas', 5, 'required', 3, 2, NULL, 7),
(80, 'Biotecnología vegetal', 6, 'required', 3, 2, NULL, 7),
(81, 'Genómica y proteómica', 5, 'required', 3, 2, NULL, 7),
(82, 'Procesos biotecnológicos', 6, 'required', 3, 2, NULL, 7),
(83, 'Técnicas instrumentales avanzadas', 5, 'required', 3, 2, NULL, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_escolar`
--

CREATE TABLE `course_escolar` (
  `id_course_escolar` int(10) UNSIGNED NOT NULL,
  `start_year` year(4) NOT NULL,
  `end_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `course_escolar`
--

INSERT INTO `course_escolar` (`id_course_escolar`, `start_year`, `end_year`) VALUES
(1, 2021, 2022),
(2, 2022, 2023),
(3, 2023, 2024),
(4, 2024, 2025),
(5, 2025, 2026);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department`
--

CREATE TABLE `department` (
  `id_department` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `department`
--

INSERT INTO `department` (`id_department`, `name`) VALUES
(1, 'Informática'),
(2, 'Matemáticas'),
(3, 'Economía y Empresa'),
(4, 'Educación'),
(5, 'Agronomía'),
(6, 'Química y Física'),
(7, 'Filología'),
(8, 'Derecho'),
(9, 'Biología y Geología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grades`
--

CREATE TABLE `grades` (
  `id_grade` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grades`
--

INSERT INTO `grades` (`id_grade`, `name`) VALUES
(1, 'Grado en Ingeniería Agrícola (Plan 2015)'),
(2, 'Grado en Ingeniería Eléctrica (Plan 2014)'),
(3, 'Grado en Ingeniería Electrónica Industrial (Plan 2010)'),
(4, 'Grado en Ingeniería Informática (Plan 2015)'),
(5, 'Grado en Ingeniería Mecánica (Plan 2010)'),
(6, 'Grado en Ingeniería Química Industrial (Plan 2010)'),
(7, 'Grado en Biotecnología (Plan 2015)'),
(8, 'Grado en Ciencias Ambientales (Plan 2009)'),
(9, 'Grado en Matemáticas (Plan 2010)'),
(10, 'Grado en Química (Plan 2009)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id_person` int(10) UNSIGNED NOT NULL,
  `identification_number` varchar(30) NOT NULL,
  `name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `second_last_name` varchar(25) DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `direction` varchar(50) NOT NULL,
  `phone_number` varchar(25) DEFAULT NULL,
  `date_born` date NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `person_type` enum('teacher','student') NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`id_person`, `identification_number`, `name`, `last_name`, `second_last_name`, `city`, `direction`, `phone_number`, `date_born`, `gender`, `person_type`, `password`) VALUES
(1, '26902806M', 'Salvador', 'Sánchez', 'Pérez', 'Almería', 'C/ Real del barrio alto', '950254837', '1991-03-28', 'M', 'student', '123456'),
(2, '89542419S', 'Juan', 'Saez', 'Vega', 'Almería', 'C/ Mercurio', '618253876', '1992-08-08', 'M', 'student', '123456'),
(3, '11105554G', 'Zoe', 'Ramirez', 'Gea', 'Almería', 'C/ Marte', '618223876', '1979-08-19', 'F', 'teacher', '123456'),
(4, '17105885A', 'Pedro', 'Heller', 'Pagac', 'Almería', 'C/ Estrella fugaz', NULL, '2000-10-05', 'M', 'student', '123456'),
(5, '38223286T', 'David', 'Schmidt', 'Fisher', 'Almería', 'C/ Venus', '678516294', '1978-01-19', 'M', 'teacher', '123456'),
(6, '04233869Y', 'José', 'Koss', 'Bayer', 'Almería', 'C/ Júpiter', '628349590', '1998-01-28', 'M', 'student', '123456'),
(7, '97258166K', 'Ismael', 'Strosin', 'Turcotte', 'Almería', 'C/ Neptuno', NULL, '1999-05-24', 'M', 'student', '123456'),
(8, '79503962T', 'Cristina', 'Lemke', 'Rutherford', 'Almería', 'C/ Saturno', '669162534', '1977-08-21', 'F', 'teacher', '123456'),
(9, '82842571K', 'Ramón', 'Herzog', 'Tremblay', 'Almería', 'C/ Urano', '626351429', '1996-11-21', 'M', 'student', '123456'),
(10, '61142000L', 'Esther', 'Spencer', 'Lakin', 'Almería', 'C/ Plutón', NULL, '1977-05-19', 'F', 'teacher', '123456'),
(11, '46900725E', 'Daniel', 'Herman', 'Pacocha', 'Almería', 'C/ Andarax', '679837625', '1997-04-26', 'M', 'student', '123456'),
(12, '85366986W', 'Carmen', 'Streich', 'Hirthe', 'Almería', 'C/ Almanzora', NULL, '1971-04-29', 'F', 'teacher', '123456'),
(13, '73571384L', 'Alfredo', 'Stiedemann', 'Morissette', 'Almería', 'C/ Guadalquivir', '950896725', '1980-02-01', 'M', 'teacher', '123456'),
(14, '82937751G', 'Manolo', 'Hamill', 'Kozey', 'Almería', 'C/ Duero', '950263514', '1977-01-02', 'M', 'teacher', '123456'),
(15, '80502866Z', 'Alejandro', 'Kohler', 'Schoen', 'Almería', 'C/ Tajo', '668726354', '1980-03-14', 'M', 'teacher', '123456'),
(16, '10485008K', 'Antonio', 'Fahey', 'Considine', 'Almería', 'C/ Sierra de los Filabres', NULL, '1982-03-18', 'M', 'teacher', '123456'),
(17, '85869555K', 'Guillermo', 'Ruecker', 'Upton', 'Almería', 'C/ Sierra de Gádor', NULL, '1973-05-05', 'M', 'teacher', '123456'),
(18, '04326833G', 'Micaela', 'Monahan', 'Murray', 'Almería', 'C/ Veleta', '662765413', '1976-02-25', 'M', 'teacher', '123456'),
(19, '11578526G', 'Inma', 'Lakin', 'Yundt', 'Almería', 'C/ Picos de Europa', '678652431', '1998-09-01', 'F', 'student', '123456'),
(20, '79221403L', 'Francesca', 'Schowalter', 'Muller', 'Almería', 'C/ Quinto pino', NULL, '1980-10-31', 'M', 'teacher', '123456'),
(21, '79089577Y', 'Juan', 'Gutiérrez', 'López', 'Almería', 'C/ Los pinos', '678652431', '1998-01-01', 'M', 'student', '123456'),
(22, '41491230N', 'Antonio', 'Domínguez', 'Guerrero', 'Almería', 'C/ Cabo de Gata', '626652498', '1999-02-11', 'M', 'student', '123456'),
(23, '64753215G', 'Irene', 'Hernández', 'Martínez', 'Almería', 'C/ Zapillo', '628452384', '1996-03-12', 'F', 'student', '123456'),
(24, '85135690V', 'Sonia', 'Gea', 'Ruiz', 'Almería', 'C/ Mercurio', '678812017', '1995-04-13', 'F', 'student', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_course`
--

CREATE TABLE `student_course` (
  `id_student` int(10) UNSIGNED NOT NULL,
  `id_course` int(10) UNSIGNED NOT NULL,
  `id_course_escolar` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `student_course`
--

INSERT INTO `student_course` (`id_student`, `id_course`, `id_course_escolar`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(4, 1, 1),
(4, 2, 1),
(4, 3, 1),
(19, 1, 5),
(19, 2, 5),
(19, 3, 5),
(19, 4, 5),
(19, 5, 5),
(19, 6, 5),
(19, 7, 5),
(19, 8, 5),
(19, 9, 5),
(19, 10, 5),
(23, 1, 5),
(23, 2, 5),
(23, 3, 5),
(23, 4, 5),
(23, 5, 5),
(23, 6, 5),
(23, 7, 5),
(23, 8, 5),
(23, 9, 5),
(23, 10, 5),
(24, 1, 5),
(24, 2, 5),
(24, 3, 5),
(24, 4, 5),
(24, 5, 5),
(24, 6, 5),
(24, 7, 5),
(24, 8, 5),
(24, 9, 5),
(24, 10, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher`
--

CREATE TABLE `teacher` (
  `id_teacher` int(10) UNSIGNED NOT NULL,
  `id_department` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `id_department`) VALUES
(3, 1),
(14, 1),
(5, 2),
(15, 2),
(8, 3),
(16, 3),
(10, 4),
(12, 4),
(17, 4),
(18, 5),
(13, 6),
(20, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_course`
--

CREATE TABLE `tmp_course` (
  `id_course` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `credit` int(10) UNSIGNED NOT NULL,
  `type` enum('basic','required','optional') NOT NULL,
  `course` tinyint(3) UNSIGNED NOT NULL,
  `semestre` tinyint(3) UNSIGNED NOT NULL,
  `id_teacher` int(10) UNSIGNED DEFAULT NULL,
  `id_grade` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tmp_course`
--

INSERT INTO `tmp_course` (`id_course`, `name`, `credit`, `type`, `course`, `semestre`, `id_teacher`, `id_grade`) VALUES
(1, 'Álgegra lineal y matemática discreta', 6, 'basic', 1, 1, 3, 4),
(2, 'Cálculo', 6, 'basic', 1, 1, 14, 4),
(3, 'Física para informática', 6, 'basic', 1, 1, 3, 4),
(4, 'Introducción a la programación', 6, 'basic', 1, 1, 14, 4),
(5, 'Organización y gestión de empresas', 6, 'basic', 1, 1, 3, 4),
(6, 'Estadística', 6, 'basic', 1, 2, 14, 4),
(7, 'Estructura y tecnología de computadores', 6, 'basic', 1, 2, 3, 4),
(8, 'Fundamentos de electrónica', 6, 'basic', 1, 2, 14, 4),
(9, 'Lógica y algorítmica', 6, 'basic', 1, 2, 3, 4),
(10, 'Metodología de la programación', 6, 'basic', 1, 2, 14, 4),
(11, 'Arquitectura de Computadores', 6, 'basic', 2, 1, 3, 4),
(12, 'Estructura de Datos y Algoritmos I', 6, 'required', 2, 1, 3, 4),
(13, 'Ingeniería del Software', 6, 'required', 2, 1, 14, 4),
(14, 'Sistemas Inteligentes', 6, 'required', 2, 1, 3, 4),
(15, 'Sistemas Operativos', 6, 'required', 2, 1, 14, 4),
(16, 'Bases de Datos', 6, 'basic', 2, 2, 14, 4),
(17, 'Estructura de Datos y Algoritmos II', 6, 'required', 2, 2, 14, 4),
(18, 'Fundamentos de Redes de\nComputadores', 6, 'required', 2, 2, 3, 4),
(19, 'Planificación y Gestión de Proyectos\nInformáticos', 6, 'required', 2, 2, 3, 4),
(20, 'Programación de Servicios Software', 6, 'required', 2, 2, 14, 4),
(21, 'Desarrollo de interfaces de usuario', 6, 'required', 3, 1, 14, 4),
(22, 'Ingeniería de Requisitos', 6, 'optional', 3, 1, NULL, 4),
(23, 'Integración de las Tecnologías de la\nInformación en las Organizaciones', 6, 'optional', 3, 1, NULL, 4),
(24, 'Modelado y Diseño del Software 1', 6, 'optional', 3, 1, NULL, 4),
(25, 'Multiprocesadores', 6, 'optional', 3, 1, NULL, 4),
(26, 'Seguridad y cumplimiento normativo', 6, 'optional', 3, 1, NULL, 4),
(27, 'Sistema de Información para las\nOrganizaciones', 6, 'optional', 3, 1, NULL, 4),
(28, 'Tecnologías web', 6, 'optional', 3, 1, NULL, 4),
(29, 'Teoría de códigos y criptografía', 6, 'optional', 3, 1, NULL, 4),
(30, 'Administración de bases de datos', 6, 'optional', 3, 2, NULL, 4),
(31, 'Herramientas y Métodos de Ingeniería\ndel Software', 6, 'optional', 3, 2, NULL, 4),
(32, 'Informática industrial y robótica', 6, 'optional', 3, 2, NULL, 4),
(33, 'Ingeniería de Sistemas de Información', 6, 'optional', 3, 2, NULL, 4),
(34, 'Modelado y Diseño del Software 2', 6, 'optional', 3, 2, NULL, 4),
(35, 'Negocio Electrónico', 6, 'optional', 3, 2, NULL, 4),
(36, 'Periféricos e interfaces', 6, 'optional', 3, 2, NULL, 4),
(37, 'Sistemas de tiempo real', 6, 'optional', 3, 2, NULL, 4),
(38, 'Tecnologías de acceso a red', 6, 'optional', 3, 2, NULL, 4),
(39, 'Tratamiento digital de imágenes', 6, 'optional', 3, 2, NULL, 4),
(40, 'Administración de redes y sistemas\noperativos', 6, 'optional', 4, 1, NULL, 4),
(41, 'Almacenes de Datos', 6, 'optional', 4, 1, NULL, 4),
(42, 'Fiabilidad y Gestión de Riesgos', 6, 'optional', 4, 1, NULL, 4),
(43, 'Líneas de Productos Software', 6, 'optional', 4, 1, NULL, 4),
(44, 'Procesos de Ingeniería del Software 1', 6, 'optional', 4, 1, NULL, 4),
(45, 'Tecnologías multimedia', 6, 'optional', 4, 1, NULL, 4),
(46, 'Análisis y planificación de las TI', 6, 'optional', 4, 2, NULL, 4),
(47, 'Desarrollo Rápido de Aplicaciones', 6, 'optional', 4, 2, NULL, 4),
(48, 'Gestión de la Calidad y de la Innovación\nTecnológica', 6, 'optional', 4, 2, NULL, 4),
(49, 'Inteligencia del Negocio', 6, 'optional', 4, 2, NULL, 4),
(50, 'Procesos de Ingeniería del Software 2', 6, 'optional', 4, 2, NULL, 4),
(51, 'Seguridad Informática', 6, 'optional', 4, 2, NULL, 4),
(52, 'Biologia celular', 6, 'basic', 1, 1, NULL, 7),
(53, 'Física', 6, 'basic', 1, 1, NULL, 7),
(54, 'Matemáticas I', 6, 'basic', 1, 1, NULL, 7),
(55, 'Química general', 6, 'basic', 1, 1, NULL, 7),
(56, 'Química orgánica', 6, 'basic', 1, 1, NULL, 7),
(57, 'Biología vegetal y animal', 6, 'basic', 1, 2, NULL, 7),
(58, 'Bioquímica', 6, 'basic', 1, 2, NULL, 7),
(59, 'Genética', 6, 'basic', 1, 2, NULL, 7),
(60, 'Matemáticas II', 6, 'basic', 1, 2, NULL, 7),
(61, 'Microbiología', 6, 'basic', 1, 2, NULL, 7),
(62, 'Botánica agrícola', 6, 'required', 2, 1, NULL, 7),
(63, 'Fisiología vegetal', 6, 'required', 2, 1, NULL, 7),
(64, 'Genética molecular', 6, 'required', 2, 1, NULL, 7),
(65, 'Ingeniería bioquímica', 6, 'required', 2, 1, NULL, 7),
(66, 'Termodinámica y cinética química\naplicada', 6, 'required', 2, 1, NULL, 7),
(67, 'Biorreactores', 6, 'required', 2, 2, NULL, 7),
(68, 'Biotecnología microbiana', 6, 'required', 2, 2, NULL, 7),
(69, 'Ingeniería genética', 6, 'required', 2, 2, NULL, 7),
(70, 'Inmunología', 6, 'required', 2, 2, NULL, 7),
(71, 'Virología', 6, 'required', 2, 2, NULL, 7),
(72, 'Bases moleculares del desarrollo\nvegetal', 5, 'required', 3, 1, NULL, 7),
(73, 'Fisiología animal', 5, 'required', 3, 1, NULL, 7),
(74, 'Metabolismo y biosíntesis de\nbiomoléculas', 6, 'required', 3, 1, NULL, 7),
(75, 'Operaciones de separación', 6, 'required', 3, 1, NULL, 7),
(76, 'Patología molecular de plantas', 5, 'required', 3, 1, NULL, 7),
(77, 'Técnicas instrumentales basics', 5, 'required', 3, 1, NULL, 7),
(78, 'Bioinformática', 5, 'required', 3, 2, NULL, 7),
(79, 'Biotecnología de los productos\nhortofrutículas', 5, 'required', 3, 2, NULL, 7),
(80, 'Biotecnología vegetal', 6, 'required', 3, 2, NULL, 7),
(81, 'Genómica y proteómica', 5, 'required', 3, 2, NULL, 7),
(82, 'Procesos biotecnológicos', 6, 'required', 3, 2, NULL, 7),
(83, 'Técnicas instrumentales avanzadas', 5, 'required', 3, 2, NULL, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id_course`),
  ADD KEY `id_teacher` (`id_teacher`),
  ADD KEY `id_grade` (`id_grade`);

--
-- Indices de la tabla `course_escolar`
--
ALTER TABLE `course_escolar`
  ADD PRIMARY KEY (`id_course_escolar`);

--
-- Indices de la tabla `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id_department`);

--
-- Indices de la tabla `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id_grade`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id_person`),
  ADD UNIQUE KEY `identification_number` (`identification_number`);

--
-- Indices de la tabla `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`id_student`,`id_course`,`id_course_escolar`),
  ADD KEY `id_course` (`id_course`),
  ADD KEY `id_course_escolar` (`id_course_escolar`);

--
-- Indices de la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id_teacher`),
  ADD KEY `id_department` (`id_department`);

--
-- Indices de la tabla `tmp_course`
--
ALTER TABLE `tmp_course`
  ADD PRIMARY KEY (`id_course`),
  ADD KEY `id_teacher` (`id_teacher`),
  ADD KEY `id_grade` (`id_grade`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `course`
--
ALTER TABLE `course`
  MODIFY `id_course` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `course_escolar`
--
ALTER TABLE `course_escolar`
  MODIFY `id_course_escolar` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `department`
--
ALTER TABLE `department`
  MODIFY `id_department` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `grades`
--
ALTER TABLE `grades`
  MODIFY `id_grade` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `id_person` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id_teacher` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tmp_course`
--
ALTER TABLE `tmp_course`
  MODIFY `id_course` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`id_grade`) REFERENCES `grades` (`id_grade`);

--
-- Filtros para la tabla `student_course`
--
ALTER TABLE `student_course`
  ADD CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `person` (`id_person`),
  ADD CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`id_course`) REFERENCES `course` (`id_course`),
  ADD CONSTRAINT `student_course_ibfk_3` FOREIGN KEY (`id_course_escolar`) REFERENCES `course_escolar` (`id_course_escolar`);

--
-- Filtros para la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `person` (`id_person`),
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`id_department`) REFERENCES `department` (`id_department`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
