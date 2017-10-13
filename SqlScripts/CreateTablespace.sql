--DROP TABLESPACE TBS_BANCO_DATA    INCLUDING CONTENTS AND DATAFILES;
select * from dba_tablespaces;
select * from V$TABLESPACE;
select * from ALL_DIRECTORIES;
select * from DBA_DATA_FILES;
select * from dba_users;

create tablespace 
   TBS_DOTA_DATA
datafile   
  'C:/oraclexe/app/oracle/oradata/XE/TBS_DOTA_DATA.dbf' 
size 50m
autoextend on;
create tablespace 
   TBS_DOTA_IDX
datafile   
  'C:/oraclexe/app/oracle/oradata/XE/TBS_DOTA_IDX.dbf' 
size 50m
autoextend on;