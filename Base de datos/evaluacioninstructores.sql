-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para evaluacioninstructores
CREATE DATABASE IF NOT EXISTS `evaluacioninstructores` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `evaluacioninstructores`;


-- Volcando estructura para tabla evaluacioninstructores.aprendizm
CREATE TABLE IF NOT EXISTS `aprendizm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Documento` bigint(20) NOT NULL,
  `Tipo_documento` enum('T.I','C.C','CE','PASS','NIT') COLLATE utf8_unicode_ci NOT NULL,
  `Nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Correo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Fecha_inicioLectiva` date NOT NULL,
  `Fecha_finLectiva` date NOT NULL,
  `Fecha_inicioProductiva` date NOT NULL,
  `Fecha_finProductiva` date NOT NULL,
  `Usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Contraseña` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FK_Ficha` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `FK_aprendizm_ficham` (`FK_Ficha`),
  CONSTRAINT `FK_aprendizm_ficham` FOREIGN KEY (`FK_Ficha`) REFERENCES `ficham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.aprendizm: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `aprendizm` DISABLE KEYS */;
INSERT INTO `aprendizm` (`id`, `Documento`, `Tipo_documento`, `Nombres`, `Apellidos`, `Fecha_Nacimiento`, `Correo`, `Direccion`, `Telefono`, `Fecha_inicioLectiva`, `Fecha_finLectiva`, `Fecha_inicioProductiva`, `Fecha_finProductiva`, `Usuario`, `Contraseña`, `FK_Ficha`, `created_at`, `updated_at`) VALUES
	(1, 98010470862, 'T.I', 'alberto', 'lleras', '0000-00-00', 'alonzo@hot.com', 'falsa123', 2147483647, '2015-09-23', '2015-09-04', '2015-09-15', '2015-09-06', 'dan', '123', 1, '2015-09-11 16:28:57', '2015-12-10 04:55:31'),
	(2, 96254589635, 'T.I', 'Andres Eduardo', 'Cruz Hoyos', '0000-00-00', 'c@h.com', 'calle 2 verdadera 3', 2147483647, '2015-11-19', '2016-02-27', '2015-11-12', '2015-11-01', 'Andres', '1234', 2, '2015-11-06 12:50:47', '2015-11-06 12:50:47');
/*!40000 ALTER TABLE `aprendizm` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.centrom
CREATE TABLE IF NOT EXISTS `centrom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FK_Regional` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `centrom_fk_regional_foreign` (`FK_Regional`),
  CONSTRAINT `centrom_fk_regional_foreign` FOREIGN KEY (`FK_Regional`) REFERENCES `regionalm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.centrom: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `centrom` DISABLE KEYS */;
INSERT INTO `centrom` (`id`, `Descripcion`, `Direccion`, `FK_Regional`, `created_at`, `updated_at`) VALUES
	(1, 'Centro de gestion de mercados logistica y tecnologias de la informacion', 'calle 52 con Av. Caracas', 2, '2015-09-10 15:12:13', '2015-11-06 12:44:13'),
	(2, 'Centro de administracion de empresas y economia', 'Calle 7 falsa 123', 4, '2015-11-06 12:44:54', '2015-11-06 12:44:54');
/*!40000 ALTER TABLE `centrom` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.coordinacionm
CREATE TABLE IF NOT EXISTS `coordinacionm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FK_Centro` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `coordinacionm_fk_centro_foreign` (`FK_Centro`),
  CONSTRAINT `coordinacionm_fk_centro_foreign` FOREIGN KEY (`FK_Centro`) REFERENCES `centrom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.coordinacionm: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `coordinacionm` DISABLE KEYS */;
INSERT INTO `coordinacionm` (`id`, `Nombre`, `FK_Centro`, `created_at`, `updated_at`) VALUES
	(1, 'Coordinacion 412', 1, '2015-09-10 15:12:25', '2015-11-06 12:42:50'),
	(2, 'Coordinacion 502', 1, '2015-11-06 12:43:01', '2015-11-06 12:43:01');
/*!40000 ALTER TABLE `coordinacionm` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.cuestionariom
CREATE TABLE IF NOT EXISTS `cuestionariom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Fecha` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.cuestionariom: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cuestionariom` DISABLE KEYS */;
INSERT INTO `cuestionariom` (`id`, `Nombre`, `Fecha`, `created_at`, `updated_at`) VALUES
	(1, 'cuestionario mercadero', '2015-09-17', '2015-09-11 14:39:40', '2015-11-06 12:51:03'),
	(2, 'cuestionario logistica', '2015-11-19', '2015-11-03 14:32:00', '2015-11-06 12:51:10');
/*!40000 ALTER TABLE `cuestionariom` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.detalle_cuestionariom
CREATE TABLE IF NOT EXISTS `detalle_cuestionariom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_Cuestionario` int(10) unsigned NOT NULL,
  `FK_Ficha` int(10) unsigned NOT NULL,
  `FK_Instructor` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `detalle_cuestionariom_fk_cuestionario_foreign` (`FK_Cuestionario`),
  KEY `detalle_cuestionariom_fk_ficha_foreign` (`FK_Ficha`),
  KEY `detalle_cuestionariom_fk_instructor_foreign` (`FK_Instructor`),
  CONSTRAINT `detalle_cuestionariom_fk_cuestionario_foreign` FOREIGN KEY (`FK_Cuestionario`) REFERENCES `cuestionariom` (`id`),
  CONSTRAINT `detalle_cuestionariom_fk_ficha_foreign` FOREIGN KEY (`FK_Ficha`) REFERENCES `ficham` (`id`),
  CONSTRAINT `detalle_cuestionariom_fk_instructor_foreign` FOREIGN KEY (`FK_Instructor`) REFERENCES `instructorm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.detalle_cuestionariom: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_cuestionariom` DISABLE KEYS */;
INSERT INTO `detalle_cuestionariom` (`id`, `FK_Cuestionario`, `FK_Ficha`, `FK_Instructor`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 5, '2015-11-06 12:41:36', '2015-11-06 12:51:30'),
	(2, 2, 2, 4, '2015-11-06 12:41:46', '2015-12-10 05:08:13');
/*!40000 ALTER TABLE `detalle_cuestionariom` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.detalle_fichasm
CREATE TABLE IF NOT EXISTS `detalle_fichasm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_Ficha` int(10) unsigned NOT NULL,
  `FK_Instructor` int(10) unsigned NOT NULL,
  `Titular` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `detalle_fichasm_fk_ficha_foreign` (`FK_Ficha`),
  KEY `detalle_fichasm_fk_instructor_foreign` (`FK_Instructor`),
  CONSTRAINT `detalle_fichasm_fk_ficha_foreign` FOREIGN KEY (`FK_Ficha`) REFERENCES `ficham` (`id`),
  CONSTRAINT `detalle_fichasm_fk_instructor_foreign` FOREIGN KEY (`FK_Instructor`) REFERENCES `instructorm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.detalle_fichasm: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_fichasm` DISABLE KEYS */;
INSERT INTO `detalle_fichasm` (`id`, `FK_Ficha`, `FK_Instructor`, `Titular`, `created_at`, `updated_at`) VALUES
	(1, 1, 5, 'No', '2015-09-11 16:25:29', '2015-12-10 04:54:25'),
	(2, 2, 4, 'Si', '2015-11-06 12:51:54', '2015-12-10 04:54:18');
/*!40000 ALTER TABLE `detalle_fichasm` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.detalle_preguntam
CREATE TABLE IF NOT EXISTS `detalle_preguntam` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_Pregunta` int(10) unsigned NOT NULL,
  `FK_Cuestionario` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `detalle_preguntam_fk_pregunta_foreign` (`FK_Pregunta`),
  KEY `detalle_preguntam_fk_cuestionario_foreign` (`FK_Cuestionario`),
  CONSTRAINT `detalle_preguntam_fk_cuestionario_foreign` FOREIGN KEY (`FK_Cuestionario`) REFERENCES `cuestionariom` (`id`),
  CONSTRAINT `detalle_preguntam_fk_pregunta_foreign` FOREIGN KEY (`FK_Pregunta`) REFERENCES `preguntam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.detalle_preguntam: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_preguntam` DISABLE KEYS */;
INSERT INTO `detalle_preguntam` (`id`, `FK_Pregunta`, `FK_Cuestionario`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 2, 1, '2015-11-03 14:27:25', '2015-11-03 14:27:25'),
	(3, 4, 1, '2015-11-03 14:31:21', '2015-11-03 14:31:21'),
	(4, 3, 1, '2015-11-03 14:31:26', '2015-11-03 14:31:26'),
	(5, 8, 1, '2015-11-03 14:31:32', '2015-11-03 14:31:32'),
	(6, 10, 1, '2015-11-03 14:31:36', '2015-12-10 05:08:52'),
	(7, 9, 1, '2015-11-03 14:31:41', '2015-11-03 14:31:41'),
	(8, 1, 2, '2015-11-03 14:32:09', '2015-11-03 14:32:09'),
	(9, 5, 2, '2015-11-03 14:32:14', '2015-11-03 14:32:14'),
	(10, 9, 2, '2015-11-03 14:32:19', '2015-11-03 14:58:07'),
	(11, 10, 2, '2015-11-12 15:53:43', '2015-11-12 15:53:43'),
	(12, 10, 2, '2015-12-10 05:09:00', '2015-12-10 05:09:00');
/*!40000 ALTER TABLE `detalle_preguntam` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.detalle_respuesta
CREATE TABLE IF NOT EXISTS `detalle_respuesta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_aprendiz` int(10) unsigned NOT NULL,
  `FK_respuesta` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detalle_respuesta_fk_aprendiz_foreign` (`FK_aprendiz`),
  KEY `detalle_respuesta_fk_respuesta_foreign` (`FK_respuesta`),
  CONSTRAINT `detalle_respuesta_fk_aprendiz_foreign` FOREIGN KEY (`FK_aprendiz`) REFERENCES `aprendizm` (`id`),
  CONSTRAINT `detalle_respuesta_fk_respuesta_foreign` FOREIGN KEY (`FK_respuesta`) REFERENCES `respuestam` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.detalle_respuesta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_respuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_respuesta` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.detalle_saber
CREATE TABLE IF NOT EXISTS `detalle_saber` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_saber` int(10) unsigned NOT NULL,
  `FK_pregunta` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detalle_saber_fk_saber_foreign` (`FK_saber`),
  KEY `detalle_saber_fk_pregunta_foreign` (`FK_pregunta`),
  CONSTRAINT `detalle_saber_fk_pregunta_foreign` FOREIGN KEY (`FK_pregunta`) REFERENCES `preguntam` (`id`),
  CONSTRAINT `detalle_saber_fk_saber_foreign` FOREIGN KEY (`FK_saber`) REFERENCES `saberm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.detalle_saber: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_saber` DISABLE KEYS */;
INSERT INTO `detalle_saber` (`id`, `FK_saber`, `FK_pregunta`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 2, 2),
	(4, 3, 3),
	(5, 2, 4),
	(6, 3, 4),
	(7, 2, 5),
	(8, 2, 6),
	(9, 2, 7),
	(10, 1, 7),
	(11, 1, 8),
	(12, 2, 8),
	(13, 1, 9),
	(14, 1, 10),
	(15, 2, 10),
	(16, 3, 10);
/*!40000 ALTER TABLE `detalle_saber` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.ficham
CREATE TABLE IF NOT EXISTS `ficham` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Numero` int(11) NOT NULL,
  `FK_Coordinacion` int(10) unsigned NOT NULL,
  `FK_Programa` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `ficham_fk_coordinacion_foreign` (`FK_Coordinacion`),
  KEY `ficham_fk_programa_foreign` (`FK_Programa`),
  CONSTRAINT `ficham_fk_coordinacion_foreign` FOREIGN KEY (`FK_Coordinacion`) REFERENCES `coordinacionm` (`id`),
  CONSTRAINT `ficham_fk_programa_foreign` FOREIGN KEY (`FK_Programa`) REFERENCES `programam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.ficham: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `ficham` DISABLE KEYS */;
INSERT INTO `ficham` (`id`, `Numero`, `FK_Coordinacion`, `FK_Programa`, `created_at`, `updated_at`) VALUES
	(1, 912296, 1, 1, '2015-11-13 13:42:23', '2015-11-13 13:42:23'),
	(2, 956633, 2, 2, '2015-11-13 13:42:36', '2015-11-13 13:42:36');
/*!40000 ALTER TABLE `ficham` ENABLE KEYS */;


-- Volcando estructura para vista evaluacioninstructores.instructorescoordinacion
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `instructorescoordinacion` (
	`Nombre` VARCHAR(255) NOT NULL COLLATE 'utf8_unicode_ci',
	`Nombres` VARCHAR(255) NOT NULL COLLATE 'utf8_unicode_ci',
	`FK_Ficha` INT(10) UNSIGNED NOT NULL,
	`Titular` VARCHAR(50) NOT NULL COLLATE 'utf8_unicode_ci'
) ENGINE=MyISAM;


-- Volcando estructura para tabla evaluacioninstructores.instructorm
CREATE TABLE IF NOT EXISTS `instructorm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Documento` bigint(20) NOT NULL,
  `Tipo_documento` enum('T.I','C.C','C.E','PASS','NIT') COLLATE utf8_unicode_ci NOT NULL,
  `Nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Correo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipoInstructor` enum('TRANSVERSAL','TECNICO') COLLATE utf8_unicode_ci NOT NULL,
  `foto` blob NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.instructorm: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `instructorm` DISABLE KEYS */;
INSERT INTO `instructorm` (`id`, `Documento`, `Tipo_documento`, `Nombres`, `Apellidos`, `Correo`, `tipoInstructor`, `foto`, `created_at`, `updated_at`) VALUES
	(4, 98010470862, 'T.I', 'Daniel', 'Moreno', 'd@y.com', 'TRANSVERSAL', _binary '', '2015-09-10 15:13:24', '2015-11-06 12:46:55'),
	(5, 97042789521, 'C.E', 'Ingrid Vanesa', 'Acuña urrego', 'a@h.com', 'TECNICO', _binary '', '2015-11-06 12:46:46', '2015-11-06 12:46:46');
/*!40000 ALTER TABLE `instructorm` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.migrations: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2014_10_12_000000_create_users_table', 1),
	('2014_10_12_100000_create_password_resets_table', 1),
	('2015_09_04_133455_instructor', 2),
	('2015_09_04_171956_instructor', 3),
	('2015_09_04_172124_regional', 3),
	('2015_09_04_172130_centro', 4),
	('2015_09_04_172138_coordinacion', 5),
	('2015_09_04_174342_programa', 6),
	('2015_09_05_005651_programa', 7),
	('2015_09_05_005726_ficha', 8),
	('2015_09_08_221400_create_instructors_table', 9),
	('2015_09_08_223803_users', 10),
	('2015_09_11_022858_cuestionario', 11),
	('2015_09_11_025157_detalle_cuestionario', 12),
	('2015_09_11_154940_create_dfichas_table', 13),
	('2015_10_17_203252_saber', 14),
	('2015_10_17_202921_Pregunta', 15),
	('2015_11_03_130450_detalle_pregunta', 16),
	('2015_11_05_125359_ficha', 17),
	('2015_11_12_140636_respuesta', 17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.preguntam
CREATE TABLE IF NOT EXISTS `preguntam` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FK_Saber` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `preguntam_fk_saber_foreign` (`FK_Saber`),
  CONSTRAINT `preguntam_fk_saber_foreign` FOREIGN KEY (`FK_Saber`) REFERENCES `saberm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.preguntam: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `preguntam` DISABLE KEYS */;
INSERT INTO `preguntam` (`id`, `Descripcion`, `FK_Saber`, `created_at`, `updated_at`) VALUES
	(1, '¿el instructor cumple con sus actividades?', 1, '2015-10-28 12:45:31', '2015-11-03 12:57:41'),
	(2, '¿es bueno en su labor?', 2, '2015-11-03 14:27:16', '2015-11-03 14:27:16'),
	(3, '¿expone correctamente los temas?', 2, '2015-11-03 14:28:12', '2015-11-03 14:28:12'),
	(4, '¿Elabora actividades ludicas en clase?', 3, '2015-11-03 14:28:25', '2015-11-03 14:28:25'),
	(5, '¿sabe del tema y los temas quedan concisos?', 3, '2015-11-03 14:28:40', '2015-11-03 14:28:40'),
	(6, '¿respeta equitativamente a los miembros de la ficha?', 1, '2015-11-03 14:29:09', '2015-11-03 14:29:09'),
	(7, '¿Ayuda con cualquier problema fuera de los horarios de clase?', 1, '2015-11-03 14:29:27', '2015-11-03 14:29:27'),
	(8, '¿Utiliza correctamente los materias brindados por las instalaciones?', 2, '2015-11-03 14:29:50', '2015-12-10 04:55:59'),
	(9, '¿brinda la ayuda necesaria en el momento adecuado?', 1, '2015-11-03 14:29:57', '2015-11-03 14:30:56'),
	(10, '¿Aplica bien las normativas institucionales?', 1, '2015-11-03 14:31:11', '2015-11-03 14:31:11');
/*!40000 ALTER TABLE `preguntam` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.programam
CREATE TABLE IF NOT EXISTS `programam` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.programam: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `programam` DISABLE KEYS */;
INSERT INTO `programam` (`id`, `Nombre`, `Descripcion`, `created_at`, `updated_at`) VALUES
	(1, 'Sistemas de informacion', 'Activo', '2015-09-10 15:12:41', '2015-11-06 12:42:28'),
	(2, 'Mercadeo', 'Activo', '2015-11-06 12:42:09', '2015-11-06 12:42:09');
/*!40000 ALTER TABLE `programam` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.regionalm
CREATE TABLE IF NOT EXISTS `regionalm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.regionalm: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `regionalm` DISABLE KEYS */;
INSERT INTO `regionalm` (`id`, `Nombre`, `Descripcion`, `created_at`, `updated_at`) VALUES
	(2, 'Distrito capital', 'activo', '2015-09-09 02:21:24', '2015-09-09 02:21:24'),
	(3, 'Antioquia', 'Inactivo', '2015-09-09 02:21:41', '2015-09-09 02:21:41'),
	(4, 'Manizales', 'activo', '2015-09-09 02:21:58', '2015-09-09 02:21:58'),
	(5, 'costa atalntico', 'por confirmar', '2015-09-09 02:22:22', '2015-09-09 02:22:22'),
	(6, 'Faustino', 'Asprilla', '2015-09-09 02:22:49', '2015-09-09 02:22:49'),
	(7, 'Meta', 'activo', '2015-09-09 02:23:06', '2015-09-09 02:23:06');
/*!40000 ALTER TABLE `regionalm` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.respuestam
CREATE TABLE IF NOT EXISTS `respuestam` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Valor_Respuesta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FK_Pregunta` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `respuestam_fk_pregunta_foreign` (`FK_Pregunta`),
  CONSTRAINT `respuestam_fk_pregunta_foreign` FOREIGN KEY (`FK_Pregunta`) REFERENCES `preguntam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.respuestam: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `respuestam` DISABLE KEYS */;
/*!40000 ALTER TABLE `respuestam` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.saberm
CREATE TABLE IF NOT EXISTS `saberm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.saberm: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `saberm` DISABLE KEYS */;
INSERT INTO `saberm` (`id`, `Nombre`, `Descripcion`, `created_at`, `updated_at`) VALUES
	(1, 'ser', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 'hacer', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 'saber', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `saberm` ENABLE KEYS */;


-- Volcando estructura para tabla evaluacioninstructores.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla evaluacioninstructores.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'evainstruc@doc.com', '$2y$10$B5w0guNtBoC6wAui.0V0UOI8s6x7mKoQ/76jO3BsgsWgkUyRrwcvC', 'KqqW1ngS3k2zmEdgUP1dKlSlhhmyR0GX01VSmzjWsOHUF9GPdZKnib2aoEuZ', '0000-00-00 00:00:00', '2015-12-10 05:09:31');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Volcando estructura para vista evaluacioninstructores.vpreguntas
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vpreguntas` (
	`Pregunta` VARCHAR(255) NOT NULL COLLATE 'utf8_unicode_ci',
	`Saber` VARCHAR(255) NOT NULL COLLATE 'utf8_unicode_ci'
) ENGINE=MyISAM;


-- Volcando estructura para vista evaluacioninstructores.instructorescoordinacion
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `instructorescoordinacion`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `instructorescoordinacion` AS SELECT
coordinacionM.Nombre,
instructorM.Nombres,
detalle_fichasm.FK_Ficha,
detalle_fichasm.Titular
FROM
coordinacionm
INNER JOIN ficham ON ficham.FK_Coordinacion = coordinacionm.id
INNER JOIN detalle_fichasm ON detalle_fichasm.id = ficham.id
INNER JOIN instructorm ON detalle_fichasm.FK_Instructor = instructorm.id ;


-- Volcando estructura para vista evaluacioninstructores.vpreguntas
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vpreguntas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `vpreguntas` AS SELECT
preguntam.Descripcion AS Pregunta,
saberm.Nombre AS Saber
FROM
preguntam
INNER JOIN saberm ON preguntam.FK_Saber = saberm.id ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
