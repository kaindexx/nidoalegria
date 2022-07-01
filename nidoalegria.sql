-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2022 a las 14:30:11
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nidoalegria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `cod_alum` int(11) NOT NULL,
  `cod_p` int(11) NOT NULL,
  `cod_salon` int(11) NOT NULL,
  `horario` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`cod_alum`, `cod_p`, `cod_salon`, `horario`) VALUES
(10, 1, 101, 'A'),
(20, 2, 102, 'B'),
(30, 3, 103, 'B'),
(40, 4, 104, 'A'),
(50, 5, 105, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado`
--

CREATE TABLE `apoderado` (
  `cod_apo` int(50) NOT NULL,
  `cod_po` int(50) NOT NULL,
  `telef_apo` int(50) NOT NULL,
  `coreo_apo` varchar(50) NOT NULL,
  `cod_rec` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `apoderado`
--

INSERT INTO `apoderado` (`cod_apo`, `cod_po`, `telef_apo`, `coreo_apo`, `cod_rec`) VALUES
(60, 6, 989564123, 'roberto.torres@gmail.com		', 1001),
(70, 7, 999858623, 'andres.vargas@gmail.com', 1002),
(80, 8, 987456221, 'maria.cornejo@gmail.com', 1003),
(90, 9, 974556223, 'ana.valdes@gmail.com', 1004),
(100, 10, 985545662, 'miguel.rodrigues@gmail.com', 1005);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$BhgfOHQT8HXlGc3x68czWh$ZVnF91A2BcF+LH45gpDucZcxSBCmDZxmEug8Avll87M=', '2022-07-01 03:53:27.364101', 1, 'admin', '', '', 'admin@nidoalegria.com', 1, 1, '2022-07-01 03:52:53.555923');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-07-01 03:46:19.125670'),
(2, 'auth', '0001_initial', '2022-07-01 03:46:20.156875'),
(3, 'admin', '0001_initial', '2022-07-01 03:46:20.346891'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-01 03:46:20.363316'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-01 03:46:20.377477'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-07-01 03:46:20.498829'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-07-01 03:46:20.586297'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-07-01 03:46:20.623935'),
(9, 'auth', '0004_alter_user_username_opts', '2022-07-01 03:46:20.637941'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-07-01 03:46:20.710934'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-07-01 03:46:20.716937'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-07-01 03:46:20.732935'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-07-01 03:46:20.763935'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-07-01 03:46:20.792940'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-07-01 03:46:20.820940'),
(16, 'auth', '0011_update_proxy_permissions', '2022-07-01 03:46:20.836935'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-07-01 03:46:20.870940'),
(18, 'sessions', '0001_initial', '2022-07-01 03:46:20.933935');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `cod_ficha` int(11) NOT NULL,
  `num_ficha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`cod_ficha`, `num_ficha`) VALUES
(31, 111),
(32, 112),
(33, 113),
(34, 114),
(35, 115);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `cod_mat` int(11) NOT NULL,
  `nom_mat` text NOT NULL,
  `hrs_mat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`cod_mat`, `nom_mat`, `hrs_mat`) VALUES
(21, 'ingles', 45),
(22, 'musica', 45),
(23, 'actividad fisica', 45),
(24, 'psicomotricidad', 90),
(25, 'grafico plastico', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaalumno`
--

CREATE TABLE `materiaalumno` (
  `cod_alum` int(50) NOT NULL,
  `cod_mat` int(50) NOT NULL,
  `cod_pro` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materiaalumno`
--

INSERT INTO `materiaalumno` (`cod_alum`, `cod_mat`, `cod_pro`) VALUES
(10, 21, 110),
(20, 22, 120),
(30, 23, 130),
(40, 24, 140),
(50, 25, 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `cod_ma` int(11) NOT NULL,
  `cod_alum` int(11) NOT NULL,
  `cod_ficha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`cod_ma`, `cod_alum`, `cod_ficha`) VALUES
(1010, 10, 31),
(1020, 20, 32),
(1030, 30, 33),
(1040, 40, 34),
(1050, 50, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `cod_p` int(50) NOT NULL,
  `nom_p` varchar(30) NOT NULL,
  `apell_p` varchar(30) NOT NULL,
  `fnacim_p` date NOT NULL,
  `direcci_p` varchar(30) NOT NULL,
  `cvacun_p` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`cod_p`, `nom_p`, `apell_p`, `fnacim_p`, `direcci_p`, `cvacun_p`) VALUES
(1, 'Camila', 'Torres', '2020-05-02', 'Av. Dolores 103', '2da dosis'),
(2, 'Andres ', 'Vargas', '2019-04-10', 'Jr. Benavides 150', '2da dosis'),
(3, 'Martha ', 'Sanches', '2020-08-30', 'Av. ingenieros ', '2da dosis'),
(4, 'Sergio', 'Muñoz', '2020-11-18', 'Av. los pinos B-15', '2da dosis'),
(5, 'Rosa', 'Rodrigues', '2019-06-09', 'Av: Los guindos c-7', '2da dosis'),
(6, 'Roberto', 'Torres', '1990-09-28', 'Av. Dolores 103', '3ra dosis'),
(7, 'Andres ', 'Vargas', '1988-08-08', 'Jr. Benavides 150', '3ra dosis'),
(8, 'Maria', 'Cornejo', '1980-12-09', 'Av. Ingenieros', '3ra dosis'),
(9, 'Ana ', 'Valdes', '1981-05-12', 'Av. Los pinos B-15', '3ra dosis'),
(10, 'Miguel', 'Rodrigues', '1991-02-05', 'Av: Los guindos c-7', '3ra dosis'),
(11, 'Teresa', 'Romero', '1988-05-16', 'Av. Ejercito A_14', '3ra dosis'),
(12, 'Gabriela', 'Gonzales', '1998-01-04', 'Jr. Godofredo e-14', '3ra dosis'),
(13, 'Maria', 'Segura', '1995-09-16', 'Av. Jose Olaya M-15', '3ra dosis'),
(14, 'Mercedes', 'Linares', '1985-10-26', 'Jr. Cusco c-23', '3ra dosis'),
(15, 'Luciana', 'Iquira', '1999-04-23', 'Urb. La negrita 307', '3ra dosis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `cod_pro` int(11) NOT NULL,
  `cod_p` int(11) NOT NULL,
  `telef_pro` int(11) NOT NULL,
  `correo_pro` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`cod_pro`, `cod_p`, `telef_pro`, `correo_pro`) VALUES
(110, 11, 980954083, 'tersa.romero@gmail.com'),
(120, 12, 999776766, 'gabriela.gonzales@gmail.com'),
(130, 13, 995746474, 'maria.segura@gmail.com'),
(140, 14, 959555710, 'mercedes.linares@gmail.com'),
(150, 15, 963941661, 'luciana.iquira@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibos`
--

CREATE TABLE `recibos` (
  `cod_rec` int(11) NOT NULL,
  `monto_rec` int(11) NOT NULL,
  `fecha_rec` date NOT NULL,
  `cod_ma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recibos`
--

INSERT INTO `recibos` (`cod_rec`, `monto_rec`, `fecha_rec`, `cod_ma`) VALUES
(401, 600, '2022-01-05', 1010),
(402, 600, '2022-01-03', 1020),
(403, 600, '2022-01-06', 1030),
(404, 600, '2022-01-07', 1040),
(405, 600, '2022-01-03', 1050);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE `salon` (
  `cod_salon` int(11) NOT NULL,
  `nom_salon` varchar(30) NOT NULL,
  `ubicacion` varchar(30) NOT NULL,
  `aforo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`cod_salon`, `nom_salon`, `ubicacion`, `aforo`) VALUES
(101, 'mariposa', '1er piso', '10'),
(102, 'delfin', '1er piso', '10'),
(103, 'oruga', '1er piso', '10'),
(104, 'estrellas', '1er piso', '10'),
(105, 'arcoiris', '1er piso', '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `fldName` varchar(50) NOT NULL,
  `fldEmail` varchar(150) NOT NULL,
  `fldCel` varchar(150) NOT NULL,
  `fldMessage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `fldName`, `fldEmail`, `fldCel`, `fldMessage`) VALUES
(1, 'KAEL', '921363333', '', 'espero su pronta atencioon'),
(2, 'KAEL', 'kael@hotmail.com', '921264335', 'espero su pronta atencioon');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`cod_alum`),
  ADD KEY `cod_p` (`cod_p`),
  ADD KEY `cod_salon` (`cod_salon`);

--
-- Indices de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD PRIMARY KEY (`cod_apo`),
  ADD UNIQUE KEY `cod_rec` (`cod_rec`),
  ADD UNIQUE KEY `cod_rec_2` (`cod_rec`),
  ADD KEY `cod_po` (`cod_po`),
  ADD KEY `cod_recibo` (`cod_rec`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`cod_ficha`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`cod_mat`);

--
-- Indices de la tabla `materiaalumno`
--
ALTER TABLE `materiaalumno`
  ADD PRIMARY KEY (`cod_alum`),
  ADD UNIQUE KEY `cod_mat` (`cod_mat`),
  ADD UNIQUE KEY `cod_pro` (`cod_pro`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`cod_ma`),
  ADD KEY `cod_alum` (`cod_alum`,`cod_ficha`),
  ADD KEY `cod_ficha` (`cod_ficha`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`cod_p`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`cod_pro`),
  ADD KEY `cod_p` (`cod_p`);

--
-- Indices de la tabla `recibos`
--
ALTER TABLE `recibos`
  ADD PRIMARY KEY (`cod_rec`),
  ADD KEY `cod_ma` (`cod_ma`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`cod_salon`);

--
-- Indices de la tabla `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `cod_apo` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `materiaalumno`
--
ALTER TABLE `materiaalumno`
  MODIFY `cod_alum` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`cod_salon`) REFERENCES `salon` (`cod_salon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`cod_p`) REFERENCES `persona` (`cod_p`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD CONSTRAINT `apoderado_ibfk_1` FOREIGN KEY (`cod_po`) REFERENCES `persona` (`cod_p`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `materiaalumno`
--
ALTER TABLE `materiaalumno`
  ADD CONSTRAINT `materiaalumno_ibfk_1` FOREIGN KEY (`cod_alum`) REFERENCES `alumno` (`cod_alum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materiaalumno_ibfk_2` FOREIGN KEY (`cod_mat`) REFERENCES `materia` (`cod_mat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materiaalumno_ibfk_3` FOREIGN KEY (`cod_pro`) REFERENCES `profesor` (`cod_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`cod_alum`) REFERENCES `alumno` (`cod_alum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`cod_ficha`) REFERENCES `ficha` (`cod_ficha`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`cod_p`) REFERENCES `persona` (`cod_p`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `recibos`
--
ALTER TABLE `recibos`
  ADD CONSTRAINT `recibos_ibfk_1` FOREIGN KEY (`cod_ma`) REFERENCES `matricula` (`cod_ma`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
