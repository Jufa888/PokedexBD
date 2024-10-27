-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Pokedex
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Pokedex
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Pokedex` DEFAULT CHARACTER SET utf8 ;
USE `Pokedex` ;

-- -----------------------------------------------------
-- Table `Pokedex`.`Objeto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Objeto` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Descripcion` VARCHAR(500) NULL,
  PRIMARY KEY (`Nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Generacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Generacion` (
  `Numero` INT NOT NULL,
  `Region` VARCHAR(45) NULL,
  `Legendario1` VARCHAR(45) NULL,
  `Legendario2` VARCHAR(45) NULL,
  PRIMARY KEY (`Numero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Pokemon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Pokemon` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Numero` INT NULL,
  `Tipo1` VARCHAR(10) NULL,
  `Tipo2` VARCHAR(10) NULL,
  `Descripcion` VARCHAR(500) NULL,
  `Objeto_Nombre` VARCHAR(45) NULL,
  `Generacion_Numero` INT NOT NULL,
  PRIMARY KEY (`Nombre`),
  INDEX `fk_Pokemon_Objeto1_idx` (`Objeto_Nombre` ASC) VISIBLE,
  INDEX `fk_Pokemon_Generacion1_idx` (`Generacion_Numero` ASC) VISIBLE,
  CONSTRAINT `fk_Pokemon_Objeto1`
    FOREIGN KEY (`Objeto_Nombre`)
    REFERENCES `Pokedex`.`Objeto` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pokemon_Generacion1`
    FOREIGN KEY (`Generacion_Numero`)
    REFERENCES `Pokedex`.`Generacion` (`Numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Entrenador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Entrenador` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Genero` VARCHAR(45) NULL,
  `Rol` VARCHAR(45) NULL,
  PRIMARY KEY (`Nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Gimnasio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Gimnasio` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(10) NULL,
  `Ciudad` VARCHAR(45) NULL,
  `Generacion_Numero` INT NOT NULL,
  PRIMARY KEY (`Nombre`),
  INDEX `fk_Gimnasio_Generacion1_idx` (`Generacion_Numero` ASC) VISIBLE,
  CONSTRAINT `fk_Gimnasio_Generacion1`
    FOREIGN KEY (`Generacion_Numero`)
    REFERENCES `Pokedex`.`Generacion` (`Numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Lider`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Lider` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(10) NULL,
  `Ciudad` VARCHAR(45) NULL,
  `Gimnasio_Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Nombre`, `Gimnasio_Nombre`),
  INDEX `fk_Lider_Gimnasio1_idx` (`Gimnasio_Nombre` ASC) VISIBLE,
  CONSTRAINT `fk_Lider_Gimnasio1`
    FOREIGN KEY (`Gimnasio_Nombre`)
    REFERENCES `Pokedex`.`Gimnasio` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Profesor` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Ciudad` VARCHAR(45) NULL,
  `Inicial1` VARCHAR(45) NULL,
  `Inicial2` VARCHAR(45) NULL,
  `Inicial3` VARCHAR(45) NULL,
  `Generacion_Numero` INT NOT NULL,
  PRIMARY KEY (`Nombre`),
  INDEX `fk_Profesor_Generacion1_idx` (`Generacion_Numero` ASC) VISIBLE,
  CONSTRAINT `fk_Profesor_Generacion1`
    FOREIGN KEY (`Generacion_Numero`)
    REFERENCES `Pokedex`.`Generacion` (`Numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Movimiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Movimiento` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(10) NULL,
  `Categoria` VARCHAR(45) NULL,
  `Descripcion` VARCHAR(500) NULL,
  `PP` INT NULL,
  PRIMARY KEY (`Nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Pokemon_Entrenador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Pokemon_Entrenador` (
  `Pokemon_Nombre` VARCHAR(45) NOT NULL,
  `Entrenador_Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Pokemon_Nombre`, `Entrenador_Nombre`),
  INDEX `fk_Pokemon_has_Entrenador_Entrenador1_idx` (`Entrenador_Nombre` ASC) VISIBLE,
  INDEX `fk_Pokemon_has_Entrenador_Pokemon_idx` (`Pokemon_Nombre` ASC) VISIBLE,
  CONSTRAINT `fk_Pokemon_has_Entrenador_Pokemon`
    FOREIGN KEY (`Pokemon_Nombre`)
    REFERENCES `Pokedex`.`Pokemon` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pokemon_has_Entrenador_Entrenador1`
    FOREIGN KEY (`Entrenador_Nombre`)
    REFERENCES `Pokedex`.`Entrenador` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Pokemon_Lider`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Pokemon_Lider` (
  `Pokemon_Nombre` VARCHAR(45) NOT NULL,
  `Lider_Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Pokemon_Nombre`, `Lider_Nombre`),
  INDEX `fk_Pokemon_has_Lider_Lider1_idx` (`Lider_Nombre` ASC) VISIBLE,
  INDEX `fk_Pokemon_has_Lider_Pokemon1_idx` (`Pokemon_Nombre` ASC) VISIBLE,
  CONSTRAINT `fk_Pokemon_has_Lider_Pokemon1`
    FOREIGN KEY (`Pokemon_Nombre`)
    REFERENCES `Pokedex`.`Pokemon` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pokemon_has_Lider_Lider1`
    FOREIGN KEY (`Lider_Nombre`)
    REFERENCES `Pokedex`.`Lider` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Movimiento_Pokemon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Movimiento_Pokemon` (
  `Movimiento_Nombre` VARCHAR(45) NOT NULL,
  `Pokemon_Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Movimiento_Nombre`, `Pokemon_Nombre`),
  INDEX `fk_Movimiento_has_Pokemon_Pokemon1_idx` (`Pokemon_Nombre` ASC) VISIBLE,
  INDEX `fk_Movimiento_has_Pokemon_Movimiento1_idx` (`Movimiento_Nombre` ASC) VISIBLE,
  CONSTRAINT `fk_Movimiento_has_Pokemon_Movimiento1`
    FOREIGN KEY (`Movimiento_Nombre`)
    REFERENCES `Pokedex`.`Movimiento` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movimiento_has_Pokemon_Pokemon1`
    FOREIGN KEY (`Pokemon_Nombre`)
    REFERENCES `Pokedex`.`Pokemon` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
