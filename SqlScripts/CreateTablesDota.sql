CREATE TABLE DOTA_ADMIN.HEROES
( HERO_ID           NUMBER(4)     NOT NULL,
  NAME	            VARCHAR2(40)  NOT NULL,	
  BASE_STRENGTH     NUMBER(3)     NOT NULL,
  BASE_AGILITY      NUMBER(3)     NOT NULL,
  BASE_INTELLIGENCE NUMBER(3)     NOT NULL,
  ATTACK_SPEED      NUMBER(3)     NOT NULL,
  ATTACK_RANGE      NUMBER(3)     NOT NULL,
  MOVEMENT_SPEED    NUMBER(3)     NOT NULL,
  STATUS            NUMBER(1)     NOT NULL
  )
TABLESPACE TBS_DOTA_DATA ;

alter table DOTA_ADMIN.HEROES
  add constraint PK_HERO_ID primary key (HERO_ID)
  using index 
  tablespace TBS_DOTA_IDX;
  
CREATE TABLE DOTA_ADMIN.ABILITIES
( ABILITY_ID        NUMBER(4)     NOT NULL,
  NAME              VARCHAR2(40)  NOT NULL, 
  DESCRIPTION       VARCHAR2(100) NOT NULL,
  DAMAGE            NUMBER(3)     NOT NULL,
  DAMAGE_TYPE       NUMBER(1)     NOT NULL, --0 PURE, 1 MAGIC, 2 PHYSICAL
  TARGET            NUMBER(1)     NOT NULL, --0 SINGLE, 1 AOE, 2 NO TARGET
  CAST_RANGE        NUMBER(4)     NOT NULL, 
  ACTIVE_ABILITY    NUMBER(1)     NOT NULL --0 PASSIVE, 1 ACTIVE
  )
TABLESPACE TBS_DOTA_DATA ;

alter table DOTA_ADMIN.ABILITIES
  add constraint PK_ABILITY_ID primary key (ABILITY_ID)
  using index 
  tablespace TBS_DOTA_IDX;

CREATE TABLE DOTA_ADMIN.ITEMS
( ITEM_ID           NUMBER(4)     NOT NULL,
  NAME              VARCHAR2(40)  NOT NULL, 
  DESCRIPTION       VARCHAR2(100) NOT NULL,
  PRICE             NUMBER(4)     NOT NULL, 
  MANA_COST         NUMBER(3)     NOT NULL,
  TARGET            NUMBER(1)     NOT NULL, --0 SINGLE, 1 AOE, 2 NO TARGET
  ACTIVE_ITEM       NUMBER(1)     NOT NULL --0 PASSIVE, 1 ACTIVE
  )
TABLESPACE TBS_DOTA_DATA ;

alter table DOTA_ADMIN.ITEMS
  add constraint PK_ITEM_ID primary key (ITEM_ID)
  using index 
  tablespace TBS_DOTA_IDX;

/*alter table  BANK.TR_DAILY
add constraint FK_ACCOUN_ID_ORIGIN FOREIGN KEY (ACCOUNT_ID_ORIGIN)
references BANK.TR_ACCOUNT (ACCOUNT_ID)
initially deferred deferrable;

alter table  BANK.TR_DAILY
add constraint FK_ACCOUN_ID_DESTIN FOREIGN KEY (ACCOUNT_ID_DESTIN)
references BANK.TR_ACCOUNT (ACCOUNT_ID)
initially deferred deferrable;

*/

  --sequences
  
create sequence DOTA_ADMIN.SEQ_HEROES
minvalue 1
maxvalue 10000
start with 1
increment by 1
cache 20
order;

create sequence DOTA_ADMIN.SEQ_ITEMS
minvalue 1
maxvalue 10000
start with 1
increment by 1
cache 20
order;
  
create sequence DOTA_ADMIN.SEQ_ABILITIES
minvalue 1
maxvalue 10000
start with 1
increment by 1
cache 20
order;
  
  