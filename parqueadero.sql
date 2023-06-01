create database parqueadero;
use parqueadero;

CREATE TABLE `parqueadero`.`conductor` (
  `conId` INT NOT NULL,
  `conTipoDocumento` VARCHAR(45) NOT NULL,
  `conDocumento` VARCHAR(10) NOT NULL,
  `conNombre` VARCHAR(45) NOT NULL,
  `conApellido` VARCHAR(45) NOT NULL,
  `conTelefono` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`conId`));
  
  CREATE TABLE `parqueadero`.`vehiculo` (
  `vehId` INT NOT NULL,
  `vehTipoVehiculo` VARCHAR(9) NOT NULL,
  `vehPlacaVehiculo` VARCHAR(7) NOT NULL,
  `vehDetallesVehiculo` VARCHAR(100) NOT NULL,
  `vehEstado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`vehId`),
  FOREIGN KEY (`conId`) REFERENCES `conductor`(`conId`));
  
   CREATE TABLE `parqueadero`.`tiempo` (
  `tieId` INT NOT NULL,
  `tieHoraEntrada` DATE NOT NULL,
  `tieHoraSalida` DATE NOT NULL,
  `tieValorTotal` DOUBLE NOT NULL,
  PRIMARY KEY (`tieId`),
  FOREIGN KEY (`vehId`) REFERENCES `vehiculo`(`vehId`)); 