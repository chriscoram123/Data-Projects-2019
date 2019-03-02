-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema VirtualArcade
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema VirtualArcade
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `VirtualArcade` DEFAULT CHARACTER SET utf8 ;
USE `VirtualArcade` ;

-- -----------------------------------------------------
-- Table `VirtualArcade`.`USERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VirtualArcade`.`USERS` (
  `USERS` VARCHAR(45) NOT NULL,
  `GMAILS` VARCHAR(45) NULL,
  `USERS_USERS` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`USERS`),
  INDEX `fk_USERS_USERS_idx` (`USERS_USERS` ASC),
  CONSTRAINT `fk_USERS_USERS`
    FOREIGN KEY (`USERS_USERS`)
    REFERENCES `VirtualArcade`.`USERS` (`USERS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
