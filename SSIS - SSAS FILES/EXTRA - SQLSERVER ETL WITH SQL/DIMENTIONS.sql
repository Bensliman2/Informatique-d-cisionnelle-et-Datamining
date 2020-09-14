create table ANNEE_DIM(
	id int identity(1,1) primary key,
	ANNEE int
);

insert into ANNEE_DIM(ANNEE)(select distinct ANNEE from STAGE);

---------------------------------------------------------------------------
create table ANNEE_VALIDATION_DIM(
	id int identity(1,1) primary key,
	ANNEE_VALIDATION int
);

insert into ANNEE_VALIDATION_DIM(ANNEE_VALIDATION) select distinct [ANNEE VALIDATION] from STAGE;

----------------------------------------------------------------------------
create table ETUDIANT_DIM(
	id int identity(1,1) primary key,
	COD_ETU bigint,
	CNE bigint
);

insert into ETUDIANT_DIM(COD_ETU, CNE) select distinct [COD_ETU], [CNE] from STAGE;

----------------------------------------------------------------------------
create table FILIERE_DIM(
	id int identity(1,1) primary key,
	FILIERE nvarchar(4)
);

insert into FILIERE_DIM(FILIERE) select distinct [FILIERE]from STAGE;

-----------------------------------------------------------------------------
create table MODULE_DIM(
	id int identity(1,1) primary key,
	MODULE nvarchar(50)
);

insert into MODULE_DIM(MODULE) select distinct [MODULE] from STAGE;

----------------------------------------------------------------------------
create table RESULTAT_DIM(
	id int identity(1,1) primary key,
	RESULTAT nvarchar(3)
);

insert into RESULTAT_DIM(RESULTAT) select distinct RESULTAT from STAGE;

----------------------------------------------------------------------------
create table SEMESTRE_DIM(
	id int identity(1,1) primary key,
	SEMESTRE nvarchar(2)
);

insert into SEMESTRE_DIM(SEMESTRE) select distinct SEMESTRE from STAGE;

----------------------------------------------------------------------------
create table SESSION_DIM(
	id int identity(1,1) primary key,
	[SESSION] nvarchar(11)
);

insert into SESSION_DIM([SESSION]) select distinct [SESSION] from STAGE;

----------------------------------------------------------------------------
create table SEXE_DIM(
	id int identity(1,1) primary key,
	SEXE nvarchar(1)
);

insert into SEXE_DIM(SEXE) select distinct SEXE from STAGE;

----------------------------------------------------------------------------
create table VILLE_DIM(
	id int identity(1,1) primary key,
	VILLE nvarchar(24)
);

insert into VILLE_DIM(VILLE) select distinct VILLE from STAGE;

----------------------------------------------------------------------------
create table BAC_DIM(
	id int identity(1,1) primary key,
	[TYPE BAC] nvarchar(26)
);

insert into BAC_DIM([TYPE BAC]) select distinct BAC from STAGE;