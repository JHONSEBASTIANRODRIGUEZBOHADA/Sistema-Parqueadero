create database parqueadero;
use parqueadero;

CREATE TABLE `parqueadero`.`conductor` (
  `conId` INT NOT NULL,
  `conTipoDocumento` VARCHAR(45) NOT NULL,
  `conDocumento` VARCHAR(10) NOT NULL,
  `conNombre` VARCHAR(45) NOT NULL,
  `conApellido` VARCHAR(45) NOT NULL,
  `conTelefono` VARCHAR(10) NOT NULL,
  `conPlacaVehiculo` VARCHAR(7) NOT NULL,
  PRIMARY KEY (`conId`));
  
  CREATE TABLE `parqueadero`.`vehiculo` (
  `vehId` INT NOT NULL,
  `vehTipo` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`vehId`));