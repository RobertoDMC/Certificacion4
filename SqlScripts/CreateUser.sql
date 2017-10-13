CREATE USER dota_admin
  IDENTIFIED BY dota
  DEFAULT TABLESPACE TBS_DOTA_DATA
  TEMPORARY TABLESPACE TEMP
  PROFILE DEFAULT
  ACCOUNT UNLOCK;
  GRANT CONNECT TO dota_admin;
  ALTER USER dota_admin DEFAULT ROLE ALL;
  GRANT CREATE DATABASE LINK TO dota_admin;
  GRANT CREATE TRIGGER TO dota_admin;
  GRANT DEBUG CONNECT SESSION TO dota_admin;
  GRANT SELECT ANY TABLE TO dota_admin;
  GRANT CREATE TABLE TO dota_admin;
  GRANT CREATE PROCEDURE TO dota_admin;
  GRANT CREATE SEQUENCE TO dota_admin;
  GRANT CREATE VIEW TO dota_admin;
  grant select, update on sys.source$ to dota_admin;
  ALTER USER dota_admin QUOTA UNLIMITED ON TBS_DOTA_DATA;
  ALTER USER dota_admin QUOTA UNLIMITED ON TBS_DOTA_IDX;