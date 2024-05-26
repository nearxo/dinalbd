/*==============================================================*/
/* DBMS name:      ORACLE Version 12c                           */
/* Created on:     21/05/2024 11:17:15 p.�m.                    */
/*==============================================================*/


alter table CANDIDATO
   drop constraint FK_CANDIDAT_33_TIPODOC;

alter table CARGO
   drop constraint FK_CARGO_6_EMPLEADO;

alter table CARGO
   drop constraint FK_CARGO_7_TIPOCARG;

alter table CONTACTOCANDIDATO
   drop constraint FK_CONTACTO_31_TIPOCONT;

alter table CONTACTOCANDIDATO
   drop constraint FK_CONTACTO_32_CANDIDAT;

alter table CONTACTOCLIENTE
   drop constraint FK_CONTACTO_1_CLIENTE;

alter table CONTACTOCLIENTE
   drop constraint FK_CONTACTO_22_TIPOCARG;

alter table CONTACTOCLIENTE
   drop constraint FK_CONTACTO_4_TIPOCONT;

alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__3_FACTURA;

alter table FACTURA
   drop constraint FK_FACTURA_2_CLIENTE;

alter table FACTURA
   drop constraint FK_FACTURA_5_EMPLEADO;

alter table FASECARGO
   drop constraint FK_FASECARG_8_TIPOCARG;

alter table FASECARGO
   drop constraint FK_FASECARG_9_FASE;

alter table HV
   drop constraint FK_HV_34_CANDIDAT;

alter table HV
   drop constraint FK_HV_35_INSTITUC;

alter table HV
   drop constraint FK_HV_36_TIPOITEM;

alter table ITEMPEREFIL
   drop constraint FK_ITEMPERE_13_PERFIL;

alter table ITEMPEREFIL
   drop constraint FK_ITEMPERE_20_TIPOITEM;

alter table PERFIL
   drop constraint FK_PERFIL_12_DICIPLIN;

alter table PERFILFASE
   drop constraint FK_PERFILFA_10_FASE;

alter table PERFILFASE
   drop constraint FK_PERFILFA_11_PERFIL;

alter table PREGUNTA
   drop constraint FK_PREGUNTA_15_PRUEBA;

alter table PREGUNTA
   drop constraint FK_PREGUNTA_30_TIPOPREG;

alter table PREGUNTACANDIDATO
   drop constraint FK_PREGUNTA_24_PRUEBACA;

alter table PREGUNTACANDIDATO
   drop constraint FK_PREGUNTA_25_PREGUNTA;

alter table PROCESOCANDIDATO
   drop constraint FK_PROCESOC_210_PROCESOR;

alter table PROCESOCANDIDATO
   drop constraint FK_PROCESOC_37_CANDIDAT;

alter table PROCESOREQUERIMIENTO
   drop constraint FK_PROCESOR_28_PRUEBA;

alter table PROCESOREQUERIMIENTO
   drop constraint FK_PROCESOR_38_EMPLEADO;

alter table PROCESOREQUERIMIENTO
   drop constraint FK_PROCESOR_41_REQUERIM;

alter table PRUEBA
   drop constraint FK_PRUEBA_14_DICIPLIN;

alter table PRUEBA
   drop constraint FK_PRUEBA_19_TIPOPRUE;

alter table PRUEBA
   drop constraint FK_PRUEBA_21_FASE;

alter table PRUEBA
   drop constraint FK_PRUEBA_27_PROCESOR;

alter table PRUEBACANDIDATO
   drop constraint FK_PRUEBACA_26_PROCESOR;

alter table REQUERIMIENTO
   drop constraint FK_REQUERIM_39_EMPLEADO;

alter table REQUERIMIENTO
   drop constraint FK_REQUERIM_40_EMPLEADO;

alter table RESPUESTA
   drop constraint FK_RESPUEST_17_PREGUNTA;

drop index "33_FK";

drop table CANDIDATO cascade constraints;

drop index "7_FK";

drop index "6_FK";

drop table CARGO cascade constraints;

drop table CLIENTE cascade constraints;

drop index "32_FK";

drop index "31_FK";

drop table CONTACTOCANDIDATO cascade constraints;

drop index "22_FK";

drop index "4_FK";

drop index "1_FK";

drop table CONTACTOCLIENTE cascade constraints;

drop index "3_FK";

drop table DETALLE_FACTURA cascade constraints;

drop table DICIPLINA cascade constraints;

drop table EMPLEADO cascade constraints;

drop index "5_FK";

drop index "2_FK";

drop table FACTURA cascade constraints;

drop table FASE cascade constraints;

drop index "9_FK";

drop index "8_FK";

drop table FASECARGO cascade constraints;

drop index "36_FK";

drop index "35_FK";

drop index "34_FK";

drop table HV cascade constraints;

drop table INSTITUCION cascade constraints;

drop index "20_FK";

drop index "13_FK";

drop table ITEMPEREFIL cascade constraints;

drop index "12_FK";

drop table PERFIL cascade constraints;

drop index "11_FK";

drop index "10_FK";

drop table PERFILFASE cascade constraints;

drop index "30_FK";

drop index "15_FK";

drop table PREGUNTA cascade constraints;

drop index "25_FK";

drop index "24_FK";

drop table PREGUNTACANDIDATO cascade constraints;

drop index "37_FK";

drop index "210_FK";

drop table PROCESOCANDIDATO cascade constraints;

drop index "41_FK";

drop index "38_FK";

drop index "28_FK";

drop table PROCESOREQUERIMIENTO cascade constraints;

drop index "27_FK";

drop index "21_FK";

drop index "19_FK";

drop index "14_FK";

drop table PRUEBA cascade constraints;

drop index "26_FK";

drop table PRUEBACANDIDATO cascade constraints;

drop index "40_FK";

drop index "39_FK";

drop table REQUERIMIENTO cascade constraints;

drop index "17_FK";

drop table RESPUESTA cascade constraints;

drop table RESPUESTACANDIDATO cascade constraints;

drop table TIPOCARGO cascade constraints;

drop table TIPOCONTACTO cascade constraints;

drop table TIPOCONTACTO2 cascade constraints;

drop table TIPODOC cascade constraints;

drop table TIPOITEMPERFIL cascade constraints;

drop table TIPOITEMPERFIL2 cascade constraints;

drop table TIPOPREGUNTA cascade constraints;

drop table TIPOPRUEBA cascade constraints;

/*==============================================================*/
/* Table: CANDIDATO                                             */
/*==============================================================*/
create table CANDIDATO (
   USUARIO              VARCHAR2(30)          not null,
   IDTIPODOC            VARCHAR2(3),
   NOMBRE               VARCHAR2(30)          not null,
   APELLIDO             VARCHAR2(30)          not null,
   FECHANAC             DATE                  not null,
   NDOC                 NUMBER(15)            not null,
   constraint PK_CANDIDATO primary key (USUARIO)
);

/*==============================================================*/
/* Index: "33_FK"                                               */
/*==============================================================*/
create index "33_FK" on CANDIDATO (
   IDTIPODOC ASC
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   CONSECARGO           NUMBER(4)             not null,
   IDTIPOCARGO          VARCHAR2(3),
   CODEMPLEADO          VARCHAR2(5),
   FECHAINICIOCARGO     DATE                  not null,
   FECHAFINCARGO        DATE,
   DESCCARGO            VARCHAR2(30)          not null,
   constraint PK_CARGO primary key (CONSECARGO)
);

/*==============================================================*/
/* Index: "6_FK"                                                */
/*==============================================================*/
create index "6_FK" on CARGO (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Index: "7_FK"                                                */
/*==============================================================*/
create index "7_FK" on CARGO (
   IDTIPOCARGO ASC
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   NIT                  NUMBER(12)            not null,
   RAZONSOCIAL          VARCHAR2(40)          not null,
   URL                  VARCHAR2(30),
   constraint PK_CLIENTE primary key (NIT)
);

/*==============================================================*/
/* Table: CONTACTOCANDIDATO                                     */
/*==============================================================*/
create table CONTACTOCANDIDATO (
   CONECCONSTCANDI      NUMBER(4)             not null,
   IDTIPOCONTACTO2      VARCHAR2(3),
   USUARIO              VARCHAR2(30),
   constraint PK_CONTACTOCANDIDATO primary key (CONECCONSTCANDI)
);

/*==============================================================*/
/* Index: "31_FK"                                               */
/*==============================================================*/
create index "31_FK" on CONTACTOCANDIDATO (
   IDTIPOCONTACTO2 ASC
);

/*==============================================================*/
/* Index: "32_FK"                                               */
/*==============================================================*/
create index "32_FK" on CONTACTOCANDIDATO (
   USUARIO ASC
);

/*==============================================================*/
/* Table: CONTACTOCLIENTE                                       */
/*==============================================================*/
create table CONTACTOCLIENTE (
   CONSECONTACLIENTE    NUMBER(3)             not null,
   IDTIPOCARGO          VARCHAR2(3),
   IDTIPOCONTACTO       VARCHAR2(3),
   NIT                  NUMBER(12),
   NOMBREAPELLIDOCLIEN  VARCHAR2(30)          not null,
   ACTIVOCONTACLIENTE   SMALLINT              not null,
   constraint PK_CONTACTOCLIENTE primary key (CONSECONTACLIENTE)
);

/*==============================================================*/
/* Index: "1_FK"                                                */
/*==============================================================*/
create index "1_FK" on CONTACTOCLIENTE (
   NIT ASC
);

/*==============================================================*/
/* Index: "4_FK"                                                */
/*==============================================================*/
create index "4_FK" on CONTACTOCLIENTE (
   IDTIPOCONTACTO ASC
);

/*==============================================================*/
/* Index: "22_FK"                                               */
/*==============================================================*/
create index "22_FK" on CONTACTOCLIENTE (
   IDTIPOCARGO ASC
);

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA (
   ITEM                 NUMBER(4)             not null,
   NFACTURA             VARCHAR2(6),
   constraint PK_DETALLE_FACTURA primary key (ITEM)
);

/*==============================================================*/
/* Index: "3_FK"                                                */
/*==============================================================*/
create index "3_FK" on DETALLE_FACTURA (
   NFACTURA ASC
);

/*==============================================================*/
/* Table: DICIPLINA                                             */
/*==============================================================*/
create table DICIPLINA (
   IDDICIPLINA          VARCHAR2(4)           not null,
   DESCDICIPLINA        VARCHAR2(30)          not null,
   constraint PK_DICIPLINA primary key (IDDICIPLINA)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   CODEMPLEADO          VARCHAR2(5)           not null,
   NOMEMPLEADO          VARCHAR2(30)          not null,
   APELLLIDOEMPLEADO    VARCHAR2(30)          not null,
   FECHANAC             DATE                  not null,
   FECHAINGRE           DATE                  not null,
   FECHAEGRESO          DATE,
   CORREO               VARCHAR2(30)          not null,
   constraint PK_EMPLEADO primary key (CODEMPLEADO)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   NFACTURA             VARCHAR2(6)           not null,
   CODEMPLEADO          VARCHAR2(5),
   NIT                  NUMBER(12),
   FECHAFACTURA         DATE                  not null,
   constraint PK_FACTURA primary key (NFACTURA)
);

/*==============================================================*/
/* Index: "2_FK"                                                */
/*==============================================================*/
create index "2_FK" on FACTURA (
   NIT ASC
);

/*==============================================================*/
/* Index: "5_FK"                                                */
/*==============================================================*/
create index "5_FK" on FACTURA (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Table: FASE                                                  */
/*==============================================================*/
create table FASE (
   IDFASE               VARCHAR2(4)           not null,
   DESFASE              VARCHAR2(25)          not null,
   constraint PK_FASE primary key (IDFASE)
);

/*==============================================================*/
/* Table: FASECARGO                                             */
/*==============================================================*/
create table FASECARGO (
   CONSEFASECARGO       NUMBER(4)             not null,
   IDFASE               VARCHAR2(4),
   IDTIPOCARGO          VARCHAR2(3),
   constraint PK_FASECARGO primary key (CONSEFASECARGO)
);

/*==============================================================*/
/* Index: "8_FK"                                                */
/*==============================================================*/
create index "8_FK" on FASECARGO (
   IDTIPOCARGO ASC
);

/*==============================================================*/
/* Index: "9_FK"                                                */
/*==============================================================*/
create index "9_FK" on FASECARGO (
   IDFASE ASC
);

/*==============================================================*/
/* Table: HV                                                    */
/*==============================================================*/
create table HV (
   CONSECHV             NUMBER(3)             not null,
   USUARIO              VARCHAR2(30),
   IDTIPOITEMPERFIL2    VARCHAR2(4),
   CONSCINSTITUCION     NUMBER(5),
   FECHAINIACT          DATE                  not null,
   FECHAFINACT          DATE,
   DESCACTIVIDAD        VARCHAR2(50)          not null,
   FUNCIONACTIVIDAD     VARCHAR2(50),
   constraint PK_HV primary key (CONSECHV)
);

/*==============================================================*/
/* Index: "34_FK"                                               */
/*==============================================================*/
create index "34_FK" on HV (
   USUARIO ASC
);

/*==============================================================*/
/* Index: "35_FK"                                               */
/*==============================================================*/
create index "35_FK" on HV (
   CONSCINSTITUCION ASC
);

/*==============================================================*/
/* Index: "36_FK"                                               */
/*==============================================================*/
create index "36_FK" on HV (
   IDTIPOITEMPERFIL2 ASC
);

/*==============================================================*/
/* Table: INSTITUCION                                           */
/*==============================================================*/
create table INSTITUCION (
   CONSCINSTITUCION     NUMBER(5)             not null,
   NOMINSTITUCION       VARCHAR2(40)          not null,
   constraint PK_INSTITUCION primary key (CONSCINSTITUCION)
);

/*==============================================================*/
/* Table: ITEMPEREFIL                                           */
/*==============================================================*/
create table ITEMPEREFIL (
   IDITEM               NUMBER(4)             not null,
   IDTIPOITEMPERFIL     VARCHAR2(4),
   IDPERFIL             VARCHAR2(4),
   DESCITEM             VARCHAR2(30)          not null,
   constraint PK_ITEMPEREFIL primary key (IDITEM)
);

/*==============================================================*/
/* Index: "13_FK"                                               */
/*==============================================================*/
create index "13_FK" on ITEMPEREFIL (
   IDPERFIL ASC
);

/*==============================================================*/
/* Index: "20_FK"                                               */
/*==============================================================*/
create index "20_FK" on ITEMPEREFIL (
   IDTIPOITEMPERFIL ASC
);

/*==============================================================*/
/* Table: PERFIL                                                */
/*==============================================================*/
create table PERFIL (
   IDPERFIL             VARCHAR2(4)           not null,
   IDDICIPLINA          VARCHAR2(4),
   DESCPERFIL            VARCHAR2(50)          not null,
   constraint PK_PERFIL primary key (IDPERFIL)
);

/*==============================================================*/
/* Index: "12_FK"                                               */
/*==============================================================*/
create index "12_FK" on PERFIL (
   IDDICIPLINA ASC
);

/*==============================================================*/
/* Table: PERFILFASE                                            */
/*==============================================================*/
create table PERFILFASE (
   IDFASE               VARCHAR2(4),
   IDPERFIL             VARCHAR2(4)
);

/*==============================================================*/
/* Index: "10_FK"                                               */
/*==============================================================*/
create index "10_FK" on PERFILFASE (
   IDFASE ASC
);

/*==============================================================*/
/* Index: "11_FK"                                               */
/*==============================================================*/
create index "11_FK" on PERFILFASE (
   IDPERFIL ASC
);

/*==============================================================*/
/* Table: PREGUNTA                                              */
/*==============================================================*/
create table PREGUNTA (
   CONSECPREGUNTA       NUMBER(5)             not null,
   IDTIPOPREGUNTA       VARCHAR2(4),
   IDPRUEBA             VARCHAR2(5),
   DESCPREGUNTA         VARCHAR2(30)          not null,
   constraint PK_PREGUNTA primary key (CONSECPREGUNTA)
);

/*==============================================================*/
/* Index: "15_FK"                                               */
/*==============================================================*/
create index "15_FK" on PREGUNTA (
   IDPRUEBA ASC
);

/*==============================================================*/
/* Index: "30_FK"                                               */
/*==============================================================*/
create index "30_FK" on PREGUNTA (
   IDTIPOPREGUNTA ASC
);

/*==============================================================*/
/* Table: PREGUNTACANDIDATO                                     */
/*==============================================================*/
create table PREGUNTACANDIDATO (
   CONSECPREGUNTA       NUMBER(5),
   CONSECPRUEBACANDI    NUMBER(5)
);

/*==============================================================*/
/* Index: "24_FK"                                               */
/*==============================================================*/
create index "24_FK" on PREGUNTACANDIDATO (
   CONSECPRUEBACANDI ASC
);

/*==============================================================*/
/* Index: "25_FK"                                               */
/*==============================================================*/
create index "25_FK" on PREGUNTACANDIDATO (
   CONSECPREGUNTA ASC
);

/*==============================================================*/
/* Table: PROCESOCANDIDATO                                      */
/*==============================================================*/
create table PROCESOCANDIDATO (
   FECHAPRESENTACION    DATE                  not null,
   CONSECPROCESO        NUMBER(5,0),
   USUARIO              VARCHAR2(30),
   ANALISIS             VARCHAR2(50),
   OBSERVACION          VARCHAR2(50),
   constraint PK_PROCESOCANDIDATO primary key (FECHAPRESENTACION)
);

/*==============================================================*/
/* Index: "210_FK"                                              */
/*==============================================================*/
create index "210_FK" on PROCESOCANDIDATO (
   CONSECPROCESO ASC
);

/*==============================================================*/
/* Index: "37_FK"                                               */
/*==============================================================*/
create index "37_FK" on PROCESOCANDIDATO (
   USUARIO ASC
);

/*==============================================================*/
/* Table: PROCESOREQUERIMIENTO                                  */
/*==============================================================*/
create table PROCESOREQUERIMIENTO (
   CONSECPROCESO        NUMBER(5,0)           not null,
   CONSECREQUE          NUMBER(5),
   IDPRUEBA             VARCHAR2(5),
   CODEMPLEADO          VARCHAR2(5),
   FECHAINICIO          DATE,
   FECHAFIN             DATE,
   CONVOCATORIA         VARCHAR2(200),
   INVITACION           VARCHAR2(200),
   constraint PK_PROCESOREQUERIMIENTO primary key (CONSECPROCESO)
);

/*==============================================================*/
/* Index: "28_FK"                                               */
/*==============================================================*/
create index "28_FK" on PROCESOREQUERIMIENTO (
   IDPRUEBA ASC
);

/*==============================================================*/
/* Index: "38_FK"                                               */
/*==============================================================*/
create index "38_FK" on PROCESOREQUERIMIENTO (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Index: "41_FK"                                               */
/*==============================================================*/
create index "41_FK" on PROCESOREQUERIMIENTO (
   CONSECREQUE ASC
);

/*==============================================================*/
/* Table: PRUEBA                                                */
/*==============================================================*/
create table PRUEBA (
   IDPRUEBA             VARCHAR2(5)           not null,
   IDFASE               VARCHAR2(4),
   IDDICIPLINA          VARCHAR2(4),
   CONSECPROCESO        NUMBER(5,0),
   IDTIPOPRUEBA         VARCHAR2(2),
   DESCPRUEBA           VARCHAR2(30)          not null,
   PRUEBAACTIVA         SMALLINT              not null,
   FECHACREADA          DATE,
   constraint PK_PRUEBA primary key (IDPRUEBA)
);

/*==============================================================*/
/* Index: "14_FK"                                               */
/*==============================================================*/
create index "14_FK" on PRUEBA (
   IDDICIPLINA ASC
);

/*==============================================================*/
/* Index: "19_FK"                                               */
/*==============================================================*/
create index "19_FK" on PRUEBA (
   IDTIPOPRUEBA ASC
);

/*==============================================================*/
/* Index: "21_FK"                                               */
/*==============================================================*/
create index "21_FK" on PRUEBA (
   IDFASE ASC
);

/*==============================================================*/
/* Index: "27_FK"                                               */
/*==============================================================*/
create index "27_FK" on PRUEBA (
   CONSECPROCESO ASC
);

/*==============================================================*/
/* Table: PRUEBACANDIDATO                                       */
/*==============================================================*/
create table PRUEBACANDIDATO (
   CONSECPRUEBACANDI    NUMBER(5)             not null,
   CONSECPROCESO        NUMBER(5,0),
   FECHAPRES            DATE                  not null,
   CALIFICACION         NUMBER(3,1),
   constraint PK_PRUEBACANDIDATO primary key (CONSECPRUEBACANDI)
);

/*==============================================================*/
/* Index: "26_FK"                                               */
/*==============================================================*/
create index "26_FK" on PRUEBACANDIDATO (
   CONSECPROCESO ASC
);

/*==============================================================*/
/* Table: REQUERIMIENTO                                         */
/*==============================================================*/
create table REQUERIMIENTO (
   CONSECREQUE          NUMBER(5)             not null,
   CODEMPLEADO          VARCHAR2(5),
   EMP_CODEMPLEADO      VARCHAR2(5),
   FECHAREQUE           DATE                  not null,
   SALARIOMAX           NUMBER(6)             not null,
   SALARIOMIN           NUMBER(6),
   DESFUNCION           VARCHAR2(50)          not null,
   DESCARRERAS          VARCHAR2(50)          not null,
   NVACANTE             NUMBER(2)             not null,
   constraint PK_REQUERIMIENTO primary key (CONSECREQUE)
);

/*==============================================================*/
/* Index: "39_FK"                                               */
/*==============================================================*/
create index "39_FK" on REQUERIMIENTO (
   EMP_CODEMPLEADO ASC
);

/*==============================================================*/
/* Index: "40_FK"                                               */
/*==============================================================*/
create index "40_FK" on REQUERIMIENTO (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Table: RESPUESTA                                             */
/*==============================================================*/
create table RESPUESTA (
   CONSECRESPUESTA      NUMBER(3)             not null,
   CONSECPREGUNTA       NUMBER(5),
   RESPUESTA            VARCHAR2(30)          not null,
   constraint PK_RESPUESTA primary key (CONSECRESPUESTA)
);

/*==============================================================*/
/* Index: "17_FK"                                               */
/*==============================================================*/
create index "17_FK" on RESPUESTA (
   CONSECPREGUNTA ASC
);

/*==============================================================*/
/* Table: RESPUESTACANDIDATO                                    */
/*==============================================================*/
create table RESPUESTACANDIDATO (
   CONSECRESCANDI       NUMBER(4)             not null,
   RESCANDI             VARCHAR2(40)          not null,
   constraint PK_RESPUESTACANDIDATO primary key (CONSECRESCANDI)
);

/*==============================================================*/
/* Table: TIPOCARGO                                             */
/*==============================================================*/
create table TIPOCARGO (
   IDTIPOCARGO          VARCHAR2(3)           not null,
   DESCTIPOCARGO        VARCHAR2(20)          not null,
   constraint PK_TIPOCARGO primary key (IDTIPOCARGO)
);

/*==============================================================*/
/* Table: TIPOCONTACTO                                          */
/*==============================================================*/
create table TIPOCONTACTO (
   IDTIPOCONTACTO       VARCHAR2(3)           not null,
   DESCTIPOCONTACTO     VARCHAR2(20)          not null,
   constraint PK_TIPOCONTACTO primary key (IDTIPOCONTACTO)
);

/*==============================================================*/
/* Table: TIPOCONTACTO2                                         */
/*==============================================================*/
create table TIPOCONTACTO2 (
   IDTIPOCONTACTO2      VARCHAR2(3)           not null,
   DESCTIPOCONTACTO     VARCHAR2(20)          not null,
   constraint PK_TIPOCONTACTO2 primary key (IDTIPOCONTACTO2)
);

/*==============================================================*/
/* Table: TIPODOC                                               */
/*==============================================================*/
create table TIPODOC (
   IDTIPODOC            VARCHAR2(3)           not null,
   DESCTIPODOC          VARCHAR2(20)          not null,
   constraint PK_TIPODOC primary key (IDTIPODOC)
);

/*==============================================================*/
/* Table: TIPOITEMPERFIL                                        */
/*==============================================================*/
create table TIPOITEMPERFIL (
   IDTIPOITEMPERFIL     VARCHAR2(4)           not null,
   DESCTIPOITEMPERFIL   VARCHAR2(30)          not null,
   constraint PK_TIPOITEMPERFIL primary key (IDTIPOITEMPERFIL)
);

/*==============================================================*/
/* Table: TIPOITEMPERFIL2                                       */
/*==============================================================*/
create table TIPOITEMPERFIL2 (
   IDTIPOITEMPERFIL2    VARCHAR2(4)           not null,
   DESCTIPOITEMPERFIL   VARCHAR2(30)          not null,
   constraint PK_TIPOITEMPERFIL2 primary key (IDTIPOITEMPERFIL2)
);

/*==============================================================*/
/* Table: TIPOPREGUNTA                                          */
/*==============================================================*/
create table TIPOPREGUNTA (
   IDTIPOPREGUNTA       VARCHAR2(4)           not null,
   DESCTIPOPREGUNTA     VARCHAR2(30)          not null,
   constraint PK_TIPOPREGUNTA primary key (IDTIPOPREGUNTA)
);

/*==============================================================*/
/* Table: TIPOPRUEBA                                            */
/*==============================================================*/
create table TIPOPRUEBA (
   IDTIPOPRUEBA         VARCHAR2(2)           not null,
   DESCTIPOPRUEBA       VARCHAR2(30)          not null,
   constraint PK_TIPOPRUEBA primary key (IDTIPOPRUEBA)
);

alter table CANDIDATO
   add constraint FK_CANDIDAT_33_TIPODOC foreign key (IDTIPODOC)
      references TIPODOC (IDTIPODOC);

alter table CARGO
   add constraint FK_CARGO_6_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table CARGO
   add constraint FK_CARGO_7_TIPOCARG foreign key (IDTIPOCARGO)
      references TIPOCARGO (IDTIPOCARGO);

alter table CONTACTOCANDIDATO
   add constraint FK_CONTACTO_31_TIPOCONT foreign key (IDTIPOCONTACTO2)
      references TIPOCONTACTO2 (IDTIPOCONTACTO2);

alter table CONTACTOCANDIDATO
   add constraint FK_CONTACTO_32_CANDIDAT foreign key (USUARIO)
      references CANDIDATO (USUARIO);

alter table CONTACTOCLIENTE
   add constraint FK_CONTACTO_1_CLIENTE foreign key (NIT)
      references CLIENTE (NIT);

alter table CONTACTOCLIENTE
   add constraint FK_CONTACTO_22_TIPOCARG foreign key (IDTIPOCARGO)
      references TIPOCARGO (IDTIPOCARGO);

alter table CONTACTOCLIENTE
   add constraint FK_CONTACTO_4_TIPOCONT foreign key (IDTIPOCONTACTO)
      references TIPOCONTACTO (IDTIPOCONTACTO);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__3_FACTURA foreign key (NFACTURA)
      references FACTURA (NFACTURA);

alter table FACTURA
   add constraint FK_FACTURA_2_CLIENTE foreign key (NIT)
      references CLIENTE (NIT);

alter table FACTURA
   add constraint FK_FACTURA_5_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table FASECARGO
   add constraint FK_FASECARG_8_TIPOCARG foreign key (IDTIPOCARGO)
      references TIPOCARGO (IDTIPOCARGO);

alter table FASECARGO
   add constraint FK_FASECARG_9_FASE foreign key (IDFASE)
      references FASE (IDFASE);

alter table HV
   add constraint FK_HV_34_CANDIDAT foreign key (USUARIO)
      references CANDIDATO (USUARIO);

alter table HV
   add constraint FK_HV_35_INSTITUC foreign key (CONSCINSTITUCION)
      references INSTITUCION (CONSCINSTITUCION);

alter table HV
   add constraint FK_HV_36_TIPOITEM foreign key (IDTIPOITEMPERFIL2)
      references TIPOITEMPERFIL2 (IDTIPOITEMPERFIL2);

alter table ITEMPEREFIL
   add constraint FK_ITEMPERE_13_PERFIL foreign key (IDPERFIL)
      references PERFIL (IDPERFIL);

alter table ITEMPEREFIL
   add constraint FK_ITEMPERE_20_TIPOITEM foreign key (IDTIPOITEMPERFIL)
      references TIPOITEMPERFIL (IDTIPOITEMPERFIL);

alter table PERFIL
   add constraint FK_PERFIL_12_DICIPLIN foreign key (IDDICIPLINA)
      references DICIPLINA (IDDICIPLINA);

alter table PERFILFASE
   add constraint FK_PERFILFA_10_FASE foreign key (IDFASE)
      references FASE (IDFASE);

alter table PERFILFASE
   add constraint FK_PERFILFA_11_PERFIL foreign key (IDPERFIL)
      references PERFIL (IDPERFIL);

alter table PREGUNTA
   add constraint FK_PREGUNTA_15_PRUEBA foreign key (IDPRUEBA)
      references PRUEBA (IDPRUEBA);

alter table PREGUNTA
   add constraint FK_PREGUNTA_30_TIPOPREG foreign key (IDTIPOPREGUNTA)
      references TIPOPREGUNTA (IDTIPOPREGUNTA);

alter table PREGUNTACANDIDATO
   add constraint FK_PREGUNTA_24_PRUEBACA foreign key (CONSECPRUEBACANDI)
      references PRUEBACANDIDATO (CONSECPRUEBACANDI);

alter table PREGUNTACANDIDATO
   add constraint FK_PREGUNTA_25_PREGUNTA foreign key (CONSECPREGUNTA)
      references PREGUNTA (CONSECPREGUNTA);

alter table PROCESOCANDIDATO
   add constraint FK_PROCESOC_210_PROCESOR foreign key (CONSECPROCESO)
      references PROCESOREQUERIMIENTO (CONSECPROCESO);

alter table PROCESOCANDIDATO
   add constraint FK_PROCESOC_37_CANDIDAT foreign key (USUARIO)
      references CANDIDATO (USUARIO);

alter table PROCESOREQUERIMIENTO
   add constraint FK_PROCESOR_28_PRUEBA foreign key (IDPRUEBA)
      references PRUEBA (IDPRUEBA);

alter table PROCESOREQUERIMIENTO
   add constraint FK_PROCESOR_38_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table PROCESOREQUERIMIENTO
   add constraint FK_PROCESOR_41_REQUERIM foreign key (CONSECREQUE)
      references REQUERIMIENTO (CONSECREQUE);

alter table PRUEBA
   add constraint FK_PRUEBA_14_DICIPLIN foreign key (IDDICIPLINA)
      references DICIPLINA (IDDICIPLINA);

alter table PRUEBA
   add constraint FK_PRUEBA_19_TIPOPRUE foreign key (IDTIPOPRUEBA)
      references TIPOPRUEBA (IDTIPOPRUEBA);

alter table PRUEBA
   add constraint FK_PRUEBA_21_FASE foreign key (IDFASE)
      references FASE (IDFASE);

alter table PRUEBA
   add constraint FK_PRUEBA_27_PROCESOR foreign key (CONSECPROCESO)
      references PROCESOREQUERIMIENTO (CONSECPROCESO);

alter table PRUEBACANDIDATO
   add constraint FK_PRUEBACA_26_PROCESOR foreign key (CONSECPROCESO)
      references PROCESOREQUERIMIENTO (CONSECPROCESO);

alter table REQUERIMIENTO
   add constraint FK_REQUERIM_39_EMPLEADO foreign key (EMP_CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table REQUERIMIENTO
   add constraint FK_REQUERIM_40_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table RESPUESTA
   add constraint FK_RESPUEST_17_PREGUNTA foreign key (CONSECPREGUNTA)
      references PREGUNTA (CONSECPREGUNTA);

