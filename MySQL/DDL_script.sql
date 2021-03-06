-- MySQL Script generated by MySQL Workbench
-- Tue Apr 20 16:08:44 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_Generation
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_Generation
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_Generation` DEFAULT CHARACTER SET utf8 ;
USE `db_Generation` ;

-- -----------------------------------------------------
-- Table `db_Generation`.`td_Cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_Generation`.`td_Cursos` (
  `id_Cursos` INT NOT NULL,
  `nome_curso` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Cursos`),
  UNIQUE INDEX `idtd_Cursos_UNIQUE` (`id_Cursos` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_Generation`.`tb_Alunes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_Generation`.`tb_Alunes` (
  `id_Alune` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NOT NULL,
  `idade` INT NOT NULL,
  `fk_Curso` INT NOT NULL,
  PRIMARY KEY (`id_Alune`, `fk_Curso`),
  UNIQUE INDEX `id_Alune_UNIQUE` (`id_Alune` ASC) VISIBLE,
  INDEX `fk_tb_Alunes_td_Cursos_idx` (`fk_Curso` ASC) VISIBLE,
  CONSTRAINT `fk_tb_Alunes_td_Cursos`
    FOREIGN KEY (`fk_Curso`)
    REFERENCES `db_Generation`.`td_Cursos` (`id_Cursos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
