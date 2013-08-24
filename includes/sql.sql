SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `phprpg` ;
CREATE SCHEMA IF NOT EXISTS `phprpg` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `phprpg` ;

-- -----------------------------------------------------
-- Table `phprpg`.`monsters`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`monsters` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`monsters` (
  `id` TINYINT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `maxHp` MEDIUMINT ZEROFILL NOT NULL ,
  `maxDam` MEDIUMINT ZEROFILL NOT NULL ,
  `armor` MEDIUMINT ZEROFILL NOT NULL ,
  `level` SMALLINT ZEROFILL NOT NULL ,
  `maxExp` MEDIUMINT ZEROFILL NOT NULL ,
  `maxGold` MEDIUMINT ZEROFILL NOT NULL ,
  `immunities` TINYINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`towns`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`towns` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`towns` (
  `id` TINYINT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `latitude` SMALLINT UNSIGNED NOT NULL ,
  `longitude` SMALLINT UNSIGNED NOT NULL ,
  `innprice` TINYINT UNSIGNED NOT NULL DEFAULT 100 ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`class`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`class` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`class` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`spells`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`spells` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`spells` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `mp` SMALLINT ZEROFILL NOT NULL ,
  `class_id` TINYINT NOT NULL ,
  `attribute` SMALLINT ZEROFILL NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `level` SMALLINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`, `class_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`shoutBox`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`shoutBox` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`shoutBox` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `posttime` TIME NOT NULL ,
  `user` SMALLINT NOT NULL ,
  `message` VARCHAR(150) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`helmet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`helmet` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`helmet` (
  `id` INT NOT NULL ,
  `slot` TINYINT ZEROFILL NOT NULL ,
  `defense` TINYINT NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `strenghtMod` TINYINT ZEROFILL NOT NULL ,
  `dexterityMod` TINYINT ZEROFILL NOT NULL ,
  `intelligenceMod` TINYINT ZEROFILL NOT NULL ,
  `vitalityMod` TINYINT ZEROFILL NOT NULL ,
  `wisdomMod` TINYINT ZEROFILL NOT NULL ,
  `constitutionMod` TINYINT ZEROFILL NOT NULL ,
  `charismaMod` TINYINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`necklace`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`necklace` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`necklace` (
  `id` INT NOT NULL ,
  `slot` TINYINT ZEROFILL NOT NULL ,
  `defense` TINYINT NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `strenghtMod` TINYINT ZEROFILL NOT NULL ,
  `dexterityMod` TINYINT ZEROFILL NOT NULL ,
  `intelligenceMod` TINYINT ZEROFILL NOT NULL ,
  `vitalityMod` TINYINT ZEROFILL NOT NULL ,
  `wisdomMod` TINYINT ZEROFILL NOT NULL ,
  `constitutionMod` TINYINT ZEROFILL NOT NULL ,
  `charismaMod` TINYINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`gloves`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`gloves` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`gloves` (
  `id` INT NOT NULL ,
  `slot` TINYINT ZEROFILL NOT NULL ,
  `defense` TINYINT NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `strenghtMod` TINYINT ZEROFILL NOT NULL ,
  `dexterityMod` TINYINT ZEROFILL NOT NULL ,
  `intelligenceMod` TINYINT ZEROFILL NOT NULL ,
  `vitalityMod` TINYINT ZEROFILL NOT NULL ,
  `wisdomMod` TINYINT ZEROFILL NOT NULL ,
  `constitutionMod` TINYINT ZEROFILL NOT NULL ,
  `charismaMod` TINYINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`arms`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`arms` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`arms` (
  `id` INT NOT NULL ,
  `slot` TINYINT ZEROFILL NOT NULL ,
  `defense` TINYINT NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `strenghtMod` TINYINT ZEROFILL NOT NULL ,
  `dexterityMod` TINYINT ZEROFILL NOT NULL ,
  `intelligenceMod` TINYINT ZEROFILL NOT NULL ,
  `vitalityMod` TINYINT ZEROFILL NOT NULL ,
  `wisdomMod` TINYINT ZEROFILL NOT NULL ,
  `constitutionMod` TINYINT ZEROFILL NOT NULL ,
  `charismaMod` TINYINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`chest`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`chest` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`chest` (
  `id` INT NOT NULL ,
  `slot` TINYINT ZEROFILL NOT NULL ,
  `defense` TINYINT NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `strenghtMod` TINYINT ZEROFILL NOT NULL ,
  `dexterityMod` TINYINT ZEROFILL NOT NULL ,
  `intelligenceMod` TINYINT ZEROFILL NOT NULL ,
  `vitalityMod` TINYINT ZEROFILL NOT NULL ,
  `wisdomMod` TINYINT ZEROFILL NOT NULL ,
  `constitutionMod` TINYINT ZEROFILL NOT NULL ,
  `charismaMod` TINYINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`belt`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`belt` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`belt` (
  `id` INT NOT NULL ,
  `slot` TINYINT ZEROFILL NOT NULL ,
  `defense` TINYINT NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `strenghtMod` TINYINT ZEROFILL NOT NULL ,
  `dexterityMod` TINYINT ZEROFILL NOT NULL ,
  `intelligenceMod` TINYINT ZEROFILL NOT NULL ,
  `vitalityMod` TINYINT ZEROFILL NOT NULL ,
  `wisdomMod` TINYINT ZEROFILL NOT NULL ,
  `constitutionMod` TINYINT ZEROFILL NOT NULL ,
  `charismaMod` TINYINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`greaves`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`greaves` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`greaves` (
  `id` INT NOT NULL ,
  `slot` TINYINT ZEROFILL NOT NULL ,
  `defense` TINYINT NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `strenghtMod` TINYINT ZEROFILL NOT NULL ,
  `dexterityMod` TINYINT ZEROFILL NOT NULL ,
  `intelligenceMod` TINYINT ZEROFILL NOT NULL ,
  `vitalityMod` TINYINT ZEROFILL NOT NULL ,
  `wisdomMod` TINYINT ZEROFILL NOT NULL ,
  `constitutionMod` TINYINT ZEROFILL NOT NULL ,
  `charismaMod` TINYINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`boots`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`boots` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`boots` (
  `id` INT NOT NULL ,
  `slot` TINYINT ZEROFILL NOT NULL ,
  `defense` TINYINT NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `strenghtMod` TINYINT ZEROFILL NOT NULL ,
  `dexterityMod` TINYINT ZEROFILL NOT NULL ,
  `intelligenceMod` TINYINT ZEROFILL NOT NULL ,
  `vitalityMod` TINYINT ZEROFILL NOT NULL ,
  `wisdomMod` TINYINT ZEROFILL NOT NULL ,
  `constitutionMod` TINYINT ZEROFILL NOT NULL ,
  `charismaMod` TINYINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`ring`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`ring` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`ring` (
  `id` INT NOT NULL ,
  `slot` TINYINT ZEROFILL NOT NULL ,
  `defense` TINYINT NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `strenghtMod` TINYINT ZEROFILL NOT NULL ,
  `dexterityMod` TINYINT ZEROFILL NOT NULL ,
  `intelligenceMod` TINYINT ZEROFILL NOT NULL ,
  `vitalityMod` TINYINT ZEROFILL NOT NULL ,
  `wisdomMod` TINYINT ZEROFILL NOT NULL ,
  `constitutionMod` TINYINT ZEROFILL NOT NULL ,
  `charismaMod` TINYINT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`users` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `userName` VARCHAR(45) NOT NULL ,
  `password` VARCHAR(45) NOT NULL ,
  `fName` VARCHAR(45) NOT NULL ,
  `lName` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(100) NOT NULL ,
  `regDate` DATETIME NULL ,
  `onlineTime` DATETIME NULL ,
  `authLevel` TINYINT NOT NULL DEFAULT 0 ,
  `latitude` SMALLINT ZEROFILL NOT NULL ,
  `longitude` SMALLINT ZEROFILL NOT NULL ,
  `residence` TINYINT NOT NULL ,
  `bank` INT ZEROFILL NOT NULL ,
  `class` TINYINT NOT NULL ,
  `maxHP` SMALLINT NOT NULL ,
  `maxMP` SMALLINT NOT NULL ,
  `level` SMALLINT NOT NULL ,
  `gold` MEDIUMINT ZEROFILL NOT NULL ,
  `experience` INT NOT NULL ,
  `skillpoints` SMALLINT ZEROFILL NOT NULL ,
  `strength` SMALLINT NOT NULL ,
  `dexterity` SMALLINT NOT NULL ,
  `intelligence` SMALLINT NOT NULL ,
  `vitality` SMALLINT NOT NULL ,
  `wisdom` SMALLINT NOT NULL ,
  `constitution` SMALLINT NOT NULL ,
  `charisma` SMALLINT NOT NULL ,
  `helmet_id` SMALLINT NOT NULL ,
  `necklace_id` SMALLINT NOT NULL ,
  `gloves_id` SMALLINT NOT NULL ,
  `arms_id` SMALLINT NOT NULL ,
  `chest_id` SMALLINT NOT NULL ,
  `belt_id` SMALLINT NOT NULL ,
  `greaves_id` SMALLINT NOT NULL ,
  `boots_id` SMALLINT NOT NULL ,
  `ring_id` INT NOT NULL ,
  PRIMARY KEY (`id`, `residence`, `class`, `helmet_id`, `necklace_id`, `gloves_id`, `arms_id`, `chest_id`, `belt_id`, `greaves_id`, `boots_id`, `ring_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`forum`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`forum` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`forum` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `author` SMALLINT NOT NULL ,
  `postDate` DATETIME NOT NULL ,
  `newPostDate` DATETIME NOT NULL ,
  `title` VARCHAR(100) NOT NULL ,
  `parent` MEDIUMINT NOT NULL DEFAULT 0 ,
  `replies` MEDIUMINT NOT NULL ,
  `content` TEXT NOT NULL ,
  PRIMARY KEY (`id`, `author`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`news`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`news` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`news` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `postDate` DATETIME NOT NULL ,
  `content` TEXT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`shoutBox_has_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`shoutBox_has_users` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`shoutBox_has_users` (
  `shoutBox_id` INT NOT NULL ,
  `users_id` INT NOT NULL ,
  PRIMARY KEY (`shoutBox_id`, `users_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`npc`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`npc` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`npc` (
  `id` TINYINT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `type` TINYINT ZEROFILL NOT NULL ,
  `latitude` SMALLINT ZEROFILL NOT NULL ,
  `longitude` SMALLINT ZEROFILL NOT NULL COMMENT 'Type is the script number for the NPC. \\n1 = General shop\\n2 = Weapons\\n3 = Armor\\n4 = King Ding A Ling' ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`towns_has_npc`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`towns_has_npc` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`towns_has_npc` (
  `towns_id` TINYINT NOT NULL ,
  `npc_id` TINYINT NOT NULL ,
  PRIMARY KEY (`towns_id`, `npc_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phprpg`.`levels`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `phprpg`.`levels` ;

CREATE  TABLE IF NOT EXISTS `phprpg`.`levels` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `expReq` INT ZEROFILL NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
