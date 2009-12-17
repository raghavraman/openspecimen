/* Adding WUSTLKey column in CATISSUE_USER table */
ALTER TABLE CATISSUE_USER ADD WUSTLKEY varchar2(100) UNIQUE;

/**  Bug 13225 -  Clinical Diagnosis subset at CP definition level 
 */
create table CATISSUE_CLINICAL_DIAGNOSIS (
   IDENTIFIER number(19,0) not null ,
   CLINICAL_DIAGNOSIS varchar(255),
   COLLECTION_PROTOCOL_ID number(19,0),
   primary key (IDENTIFIER),
   CONSTRAINT FK_CD_COLPROT FOREIGN KEY (COLLECTION_PROTOCOL_ID) REFERENCES CATISSUE_COLLECTION_PROTOCOL
);
create sequence CATISSUE_CLINICAL_DIAG_SEQ;

/*Bulk Operations from UI*/
CREATE SEQUENCE CATISSUE_BULK_OPERATION_SEQ MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
create table catissue_bulk_operation 
(
	IDENTIFIER number(19,0) not null,
	OPERATION VARCHAR(255) not null unique,
	CSV_TEMPLATE VARCHAR(2000) not null,
	XML_TEMPALTE CLOB not null,
	DROPDOWN_NAME VARCHAR(100) not null unique,
	CONSTRAINT CATISSUE_BULK_OPERATION_SEQ PRIMARY KEY (IDENTIFIER)
);

create table CATISSUE_STOR_CONT_SPEC_TYPE
(
   STORAGE_CONTAINER_ID number(19,0) not null,
   SPECIMEN_TYPE varchar(50)
);
alter table CATISSUE_STOR_CONT_SPEC_TYPE  add constraint FK_SPECIMEN_TYPE_ST_ID foreign key (STORAGE_CONTAINER_ID) references CATISSUE_STORAGE_CONTAINER;

create table CATISSUE_STOR_TYPE_SPEC_TYPE
(
   STORAGE_TYPE_ID number(19,0) not null,
   SPECIMEN_TYPE varchar(50)
);
alter table CATISSUE_STOR_TYPE_SPEC_TYPE add constraint FK_STORAGE_TYPE_ID foreign key (STORAGE_TYPE_ID) references CATISSUE_STORAGE_TYPE;

CREATE INDEX INDX_STOR_TYPE_SPEC ON catissue_stor_type_spec_type(STORAGE_TYPE_ID);

CREATE INDEX INDX_STOR_CONT_SPEC ON catissue_stor_cont_spec_type (STORAGE_CONTAINER_ID);

/**
 * Populate catissue_stor_type_spec_type
 */
insert into catissue_stor_type_spec_type
select STORAGE_TYPE_ID, t.typevalue from catissue_stor_type_spec_class sp,(select p.value, c.value typevalue from catissue_permissible_value p,catissue_permissible_value c
where c.parent_identifier = p.identifier and p.value in ('Molecular','Cell','Fluid','Tissue')) t
where t.value = sp.SPECIMEN_CLASS;

/**
 * Populate catissue_stor_cont_spec_type
 */
insert into catissue_stor_cont_spec_type
select STORAGE_CONTAINER_ID, t.typevalue from catissue_stor_cont_spec_class sp,(select p.value, c.value typevalue from catissue_permissible_value p,catissue_permissible_value c
where c.parent_identifier = p.identifier and p.value in ('Molecular','Cell','Fluid','Tissue')) t
where t.value = sp.SPECIMEN_CLASS;

commit;