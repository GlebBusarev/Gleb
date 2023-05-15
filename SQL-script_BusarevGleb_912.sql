-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`list_of_clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`list_of_clients` (
  `id_client` INT NOT NULL AUTO_INCREMENT,
  `surname` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `patronymic` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `telephone` VARCHAR(45) NOT NULL,
  `date_of_birth` DATE NOT NULL,
  `fotographic` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `id_clien_UNIQUE` (`id_client` ASC) VISIBLE,
  PRIMARY KEY (`id_client`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sale_of_season_tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sale_of_season_tickets` (
  `id_card_number` INT NOT NULL AUTO_INCREMENT,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `id_subscription` VARCHAR(45) NOT NULL,
  `list_of_clients_id_client` INT NOT NULL,
  PRIMARY KEY (`id_card_number`, `list_of_clients_id_client`),
  UNIQUE INDEX `id_card_number_UNIQUE` (`id_card_number` ASC) VISIBLE,
  INDEX `fk_sale_of_season_tickets_list_of_clients1_idx` (`list_of_clients_id_client` ASC) VISIBLE,
  CONSTRAINT `fk_sale_of_season_tickets_list_of_clients1`
    FOREIGN KEY (`list_of_clients_id_client`)
    REFERENCES `mydb`.`list_of_clients` (`id_client`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`season_tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`season_tickets` (
  `id_subscription` INT NOT NULL,
  `type_of_service` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `number_of_visit` VARCHAR(45) NOT NULL,
  `sale_of_season_tickets_id_card_number` INT NOT NULL,
  PRIMARY KEY (`id_subscription`, `sale_of_season_tickets_id_card_number`),
  UNIQUE INDEX `id_subscription_UNIQUE` (`id_subscription` ASC) VISIBLE,
  INDEX `fk_season_tickets_sale_of_season_tickets1_idx` (`sale_of_season_tickets_id_card_number` ASC) VISIBLE,
  CONSTRAINT `fk_season_tickets_sale_of_season_tickets1`
    FOREIGN KEY (`sale_of_season_tickets_id_card_number`)
    REFERENCES `mydb`.`sale_of_season_tickets` (`id_card_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tracking_visit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tracking_visit` (
  `visit_number` INT NOT NULL,
  `card_number_id` VARCHAR(45) NOT NULL,
  `id_entry_number` VARCHAR(45) NOT NULL,
  `list_of_clients_id_client` INT NOT NULL,
  PRIMARY KEY (`visit_number`, `list_of_clients_id_client`),
  UNIQUE INDEX `idtracking_visit_UNIQUE` (`visit_number` ASC) VISIBLE,
  INDEX `fk_tracking_visit_list_of_clients_idx` (`list_of_clients_id_client` ASC) VISIBLE,
  CONSTRAINT `fk_tracking_visit_list_of_clients`
    FOREIGN KEY (`list_of_clients_id_client`)
    REFERENCES `mydb`.`list_of_clients` (`id_client`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`schedule` (
  `id_entry_number` INT NOT NULL,
  `data` DATE NOT NULL,
  `start_time` DATETIME NOT NULL,
  `end_time` DATETIME NOT NULL,
  `tracking_visit_visit_number` INT NOT NULL,
  PRIMARY KEY (`id_entry_number`, `tracking_visit_visit_number`),
  UNIQUE INDEX `id_entry_number_UNIQUE` (`id_entry_number` ASC) VISIBLE,
  INDEX `fk_schedule_tracking_visit1_idx` (`tracking_visit_visit_number` ASC) VISIBLE,
  CONSTRAINT `fk_schedule_tracking_visit1`
    FOREIGN KEY (`tracking_visit_visit_number`)
    REFERENCES `mydb`.`tracking_visit` (`visit_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
