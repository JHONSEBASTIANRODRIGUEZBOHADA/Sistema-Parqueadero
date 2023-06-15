create database parking;
use parking;
  
CREATE TABLE `parking`.`persona` (
  `personaId` INT NOT NULL AUTO_INCREMENT,
  `personaNombre` VARCHAR(45) NOT NULL,
  `personaApellido` VARCHAR(45) NOT NULL,
  `personaDocumento` INT NOT NULL,
  `personaCelular` INT NOT NULL,
  `personaFechaIngreso` DATETIME NOT NULL,
  `conFechaSalida` DATETIME NULL,
  `conTotalTiempo` INT NULL,
  `ConMonto` DOUBLE NULL,
  PRIMARY KEY (`conId`));
  
CREATE TABLE `parking`.`vehiculo` (
  `vehId` INT NOT NULL AUTO_INCREMENT,
  `condId_fk` INT NOT NULL,
  `vehMarca` VARCHAR(45) NOT NULL,
  `vehPlaca` VARCHAR(45) NOT NULL,
  `espId_fk` INT NOT NULL,
  `espId` INT NOT NULL AUTO_INCREMENT,
  `espNumero` INT NOT NULL,
  `espEstado` VARCHAR(45) NOT NULL,
PRIMARY KEY (`vehId`),
FOREIGN KEY (condId_fk) REFERENCES conductor(conId),
FOREIGN KEY (espId_fk) REFERENCES espaciovehiculo(espId));