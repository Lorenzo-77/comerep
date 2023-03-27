

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nombreCategoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `categoria` (`idCategoria`, `nombreCategoria`) VALUES
(1, 'Calleras'),
(2, 'Muñequeras'),
(3, 'Rodilleras'),
(4, 'Sogas'),
(5, 'Magnesio'),
(6, 'Mochilas'),
(7, 'Medias'),
(8, 'Snacks'),
(9, 'Cinturones'),
(10, 'Otros');



CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `nombre2` varchar(200) NOT NULL,
  `nombre3` varchar(200) DEFAULT NULL,
  `idCategori` int(11) DEFAULT NULL,
  `idMarc` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `item` (`id`, `titulo`, `precio`, `descripcion`, `estado`, `nombre`, `nombre2`, `nombre3`, `idCategori`, `idMarc`, `idUser`) VALUES
(45, 'Callera Premium MMEDD Modelo BUTTERFLY 0.1', 15000, 'Las Calleras BUTTERFLY con solo 2mm de grosor y de tejido especial sintetico llamado  Pink Diamond de altísima resistencia al desgaste aportando una larga durabilidad en su cara exterior, pero con una capa de material suave y cómo en la interior. Las calleras BUTTERFLY 0.1 son las calleras con el mejor agarre en barra y ofrecen una rotación muy fluida. Con sistema de retirada fácil quedándose dobladas hacia el antebrazo.', 'Sin Stock', 'callera1.png', 'callera2.png', 'callera3.png', 1, 1, 7),
(46, 'Calleras cuero cromo con muñequera', 4200, 'CALLERAS DE CUERO CROMO DE ALTA RESISTENCIA Y DURABILIDAD , DOBLE COSTURA REFORZADA. CONFECCIONADA CON CUERO CROMO REAL -  REMACHES - HEBILLA METALICA AGARRE DE MUÑECA RESISTENTE Y FIRME IDEAL ENTRENAMIENTO DE ALTA INTENSIDAD, GIMNASIA DEPORTIVA / FITNESS/ CROSSFIT- PROTEJE LAS MANOS MANOS DEL DAÑO DE LA FRICCION DE LA BARRA', 'En Stock', 'callera4.png', 'callera5.png', 'callera6.png', 1, 2, 7),
(47, 'Calleras cuero cromo con muñequera para Entrenamie', 4200, 'CALLERAS DE CUERO CROMO DE ALTA RESISTENCIA Y DURABILIDAD , DOBLE COSTURA REFORZADA. CONFECCIONADA CON CUERO CROMO REAL -  REMACHES - HEBILLA METALICA AGARRE DE MUÑECA RESISTENTE Y FIRME IDEAL ENTRENAMIENTO DE ALTA INTENSIDAD, GIMNASIA DEPORTIVA / FITNESS/ CROSSFIT- PROTEJE LAS MANOS MANOS DEL DAÑO DE LA FRICCION DE LA BARRA', 'En Stock', 'callera7.png', 'callera8.png', 'callera9.png', 1, 3, 7),
(48, 'Cinturón Lumbar ', 8000, 'es ideal para Levantamiento de Pesas, por su doble velcro y mayor sujeción.El modelo Full Color se adapta a diferentes workout\s, siendo más fácil desajustarlo y ajustarlo cuando haya que tirar cargas pesadas.', 'En Stock', 'cinturon2.png', 'cinturon3.png', 'cinturon4.png', 9, 5, 7),
(49, 'Cinturón Lumbar ', 8000, 'Cinturón que brinda un soporte firme en el abdomen y en la parte baja de la espalda para entrenamientos intensos y levantamiento pesado', 'En Stock', 'cinturon5.png', 'cinturon6.png', 'cinturon7.png', 9, 4, 7),
(50, 'Cinturón Lumbar ', 8000, 'Cinturon De Fuerza para crossfit - Levantamiento \r\nCinturón que brinda un soporte firme en el abdomen y en la parte baja de la espalda para entrenamientos intensos y levantamiento pesado.', 'En Stock', 'cinturon13.png', 'cinturon14.png', 'cinturon15.png', 9, 2, 7),
(51, 'Cinturón Lumbar ', 8000, 'Cinturon De Fuerza para crossfit - Levantamiento \r\nCinturón que brinda un soporte firme en el abdomen y en la parte baja de la espalda para entrenamientos intensos y levantamiento pesado.', 'En Stock', 'cinturon12.png', 'cinturon13.png', 'cinturon16.png', 9, 2, 7),
(52, 'Cinturón Lumbar ', 8000, 'En esta oportunidad les traemos nuestros cinturones lumbares rectos reforzados, con abrojos de alta tenacidad, poseen 10 cm de ancho en todo su largo y se encuentran aptos para competencias de levantamiento olímpico. Agregamos una hebilla reforzada más ancha de 8 cm junto a la cinta y los abrojos de la misma medida que brindan una mayor sujeción al momento de la ejecución del movimiento, tanto en la zona frontal como en la lumbar.', 'En Stock', 'cinturon17.png', 'cinturon18.png', 'cinturon19.png', 9, 9, 7),
(53, 'Magnesio Fragmentado', 3000, 'Magnesio en porciones.', 'En Stock', 'otros4.png', 'otros5.png', 'otros6.png', 5, 10, 7),
(54, 'Medias', 1700, 'Medias', 'En Stock', 'IMG_5413.png', 'IMG_5414.png', 'IMG_5415.png', 7, 7, 7),
(55, 'Medias', 1700, 'medias', 'En Stock', 'IMG_5416.png', 'IMG_5417.png', 'IMG_5419.png', 7, 7, 7),
(56, 'Mochila', 25000, 'La “MOCHILA TÁCTICA 35 L” es nuestra opción mas versátil a la hora de hablar de capacidad de carga, ya que permite equiparse para sesiones de entrenamiento, competencias, trabajo, viajes, camping y tiempo libre o simplemente para el día a día.\r\n\r\nCuenta con:\r\n\r\n2 compartimientos aislados\r\n3 bolsillos internos\r\n2 bolsillos externos\r\nSistema MOLLE (Modular ligthweight load-carrying equipmnet), permitiendo el acople de distintos accesorios tacticos para aumentar la capacidad de carga de la mochila.\r\nSistema de parches con abrojo.\r\nDIMENSIONES\r\n\r\nCompartimiento principal – 48 cm x 28 cm x 12 cm\r\nCompartimiento secundario – 48 cm x 28 cm x 8 cm\r\nBolsillo frontal grande – 29 cm x 24 cm x 6 cm\r\nBolsillo frontal pequeño -12 cm x 24 cm x 4 cm\r\nCapacidad total – 35 litros', 'En Stock', 'mochila1.jpg', 'mochila2.jpg', 'mochila3.jpg', 6, 6, 7),
(57, 'Muñequera elastica sudadera', 3000, 'Muñequeras de 7 cm x 17 cm de largo\r\n\r\nLiberá tus manos de la transpiración.\r\nUsa las Muñequeras para:\r\n- lograr compresion y proteccion en la zona del antebrazo\r\n- secar la transpiración del cuerpo\r\n- mantener tus manos secas todo el tiempo\r\n- proteger la piel si usas calleras, ademas permiten un mejor agarre.', 'En Stock', 'muÃ±equera1.png', 'muÃ±equera2.png', 'muÃ±equera3.png', 2, 2, 7),
(58, 'Muñequeras Antitranspirantes', 3000, 'Muñequera de microfibra tejida 16 cms.\r\n\r\nAntitranspiración.', 'En Stock', 'muÃ±equera7.png', 'muÃ±equera8.png', 'muÃ±equera9.png', 2, 5, 7),
(59, 'Muñequeras Antitranspirantes', 300, '\r\nmuñequera deportiva para tenis, levantamiento de pesas y entrenamiento de fuerza.\r\n\r\nAntitranspiración.', 'En Stock', 'muÃ±equera10.png', 'muÃ±equera11.png', 'muÃ±equera12.png', 2, 4, 7),
(60, 'RODILLERA 7MM BALBOAFIT BAILE TWERK FITNESS POR UN', 7800, 'Rodillera deportiva neoprene para levantamiento de pesas, running, entrenamiento de fuerza y deportes en general.', 'En Stock', 'rodillera2.png', 'rodillera3.png', 'rodillera4.png', 3, 4, 7),
(61, 'Rodilleras levantamiento - crossfit Importadas', 7800, 'La rodillera da un soporte constante brindando máxima flexibilidad para evitar cualquier tipo de lesión, ya que aumenta el flujo sanguíneo, reduce el dolor y acelera la recuperación. Especificaciones: Comercializadas en pares - Rodilleras de alta resistencia - SBR + Neoprene, Para calcular el tamaño correcto, con la pierna semi flexionada, medir la circunferencia de la pierna 10cm por debajo de la rotula,', 'En Stock', 'rodillera5.png', 'rodillera6.png', 'rodillera7.png', 3, 2, 7);


CREATE TABLE `marca` (
  `idMarca` int(11) NOT NULL,
  `nombreMarca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `marca` (`idMarca`, `nombreMarca`) VALUES
(1, 'MMEDDFIT'),
(2, 'FULL FITNESS'),
(3, 'AAGRIP'),
(4, 'BalboaFit'),
(5, 'RX236'),
(6, 'BARAK'),
(7, 'One Feet'),
(8, 'Que Lo Paleó'),
(9, 'PRESSLOVE'),
(10, 'Otros');



CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('75z5r6pRl9yKdmbJbn33LtF05_Baq6dV', 1679616850, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('ODJpjSxS9wAxo3Dday6cUjaXtp5xDyim', 1679252654, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('WcIBTwxT4nCZ47ZZK5tM103JJg1F8cWr', 1679011515, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('xSwhgdqYi7wAHC5pcmLaRClVWUWUoJL1', 1679448298, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}');



CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `email`, `name`, `password`) VALUES
(7, 'Admin@admin.com', 'Admin', '$2a$10$Vx9J33mb33cOdcjJx8UH9OsGYLxfzTv2ZJTdZW7n8L74wzro8EHYW');


ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);


ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lista` (`idUser`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idCategori` (`idCategori`,`idMarc`),
  ADD KEY `idMarc` (`idMarc`);


ALTER TABLE `marca`
  ADD PRIMARY KEY (`idMarca`);


ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_ibfk_3` FOREIGN KEY (`idMarc`) REFERENCES `marca` (`idMarca`),
  ADD CONSTRAINT `item_ibfk_4` FOREIGN KEY (`idCategori`) REFERENCES `categoria` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
