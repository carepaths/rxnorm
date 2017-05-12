create table rxnatomarchive
(
   rxaui             varchar(8) not null,
   aui               varchar(10),
   str               varchar(4000) not null,
   archive_timestamp varchar(280) not null,
   created_timestamp varchar(280) not null,
   updated_timestamp varchar(280) not null,
   code              varchar(50),
   is_brand          varchar(1),
   lat               varchar(3),
   last_released     varchar(30),
   saui              varchar(50),
   vsab              varchar(40),
   rxcui             varchar(8),
   sab               varchar(20),
   tty               varchar(20),
   merged_to_rxcui   varchar(8)
)
;

create table rxnconso
(
   rxcui             varchar(8) not null,
   lat               varchar (3) default 'eng' not null,
   ts                varchar (1),
   lui               varchar(8),
   stt               varchar (3),
   sui               varchar (8),
   ispref            varchar (1),
   rxaui             varchar(8) not null,
   saui              varchar (50),
   scui              varchar (50),
   sdui              varchar (50),
   sab               varchar (20) not null,
   tty               varchar (20) not null,
   code              varchar (50) not null,
   str               varchar  not null,
   srl               varchar (10),
   suppress          varchar (1),
   cvf               varchar(50)
)
;

create table rxnrel
(
   rxcui1    varchar(8) ,
   rxaui1    varchar(8),
   stype1    varchar(50),
   rel       varchar(4) ,
   rxcui2    varchar(8) ,
   rxaui2    varchar(8),
   stype2    varchar(50),
   rela      varchar(100) ,
   rui       varchar(10),
   srui      varchar(50),
   sab       varchar(20) not null,
   sl        varchar(1000),
   dir       varchar(1),
   rg        varchar(10),
   suppress  varchar(1),
   cvf       varchar(50)
)
;

create table rxnsab
(
   vcui           varchar (8),
   rcui           varchar (8),
   vsab           varchar (40),
   rsab           varchar (20) not null,
   son            varchar (3000),
   sf             varchar (20),
   sver           varchar (20),
   vstart         varchar (10),
   vend           varchar (10),
   imeta          varchar (10),
   rmeta          varchar (10),
   slc            varchar (1000),
   scc            varchar (1000),
   srl            varchar(100),
   tfr            varchar(100),
   cfr            varchar(100),
   cxty           varchar (50),
   ttyl           varchar (300),
   atnl           varchar (1000),
   lat            varchar (3),
   cenc           varchar (20),
   curver         varchar (1),
   sabin          varchar (1),
   ssn            varchar (3000),
   scit           varchar (4000)
)
;

create table rxnsat
(
   rxcui            varchar(8) ,
   lui              varchar(8),
   sui              varchar(8),
   rxaui            varchar(9),
   stype            varchar (50),
   code             varchar (50),
   atui             varchar(11),
   satui            varchar (50),
   atn              varchar (1000) not null,
   sab              varchar (20) not null,
   atv              varchar (4000),
   suppress         varchar (1),
   cvf              varchar (50)
)
;

create table rxnsty
(
   rxcui          varchar(8) not null,
   tui            varchar (4),
   stn            varchar (100),
   sty            varchar (50),
   atui           varchar (11),
   cvf            varchar (50)
)
;

create table rxndoc (
    dockey      varchar(50) not null,
    value       varchar(1000),
    type        varchar(50) not null,
    expl        varchar(1000)
)
;

create table rxncuichanges
(
      rxaui         varchar(8),
      code          varchar(50),
      sab           varchar(20),
      tty           varchar(20),
      str           varchar(3000),
      old_rxcui     varchar(8) not null,
      new_rxcui     varchar(8) not null
)
;

 create table rxncui (
 cui1 varchar(8),
 ver_start varchar(40),
 ver_end   varchar(40),
 cardinality varchar(8),
 cui2       varchar(8) 
)
;

