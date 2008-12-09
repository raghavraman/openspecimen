SET IMPLICIT_TRANSACTIONS ON

alter table DE_COLL_ATTR_RECORD_VALUES add constraint FK847DA57775255CA5 foreign key (COLLECTION_ATTR_RECORD_ID) references DYEXTN_ATTRIBUTE_RECORD (IDENTIFIER);
alter table DE_FILE_ATTR_RECORD_VALUES  add constraint FKE68334E74EB991B2 foreign key (RECORD_ID) references DYEXTN_ATTRIBUTE_RECORD (IDENTIFIER);
alter table DE_OBJECT_ATTR_RECORD_VALUES  add constraint FK504EADC44EB991B2 foreign key (RECORD_ID) references DYEXTN_ATTRIBUTE_RECORD (IDENTIFIER);
alter table DYEXTN_ABSTRACT_ENTITY  add constraint FKA4A164E3D3027A30 foreign key (id) references DYEXTN_ABSTRACT_METADATA (IDENTIFIER);
alter table DYEXTN_ABSTR_CONTAIN_CTR  add constraint FK9EB9020A40F198C2 foreign key (IDENTIFIER) references DYEXTN_CONTROL (IDENTIFIER);
alter table DYEXTN_ABSTR_CONTAIN_CTR  add constraint FK9EB9020A69935DD6 foreign key (CONTAINER_ID) references DYEXTN_CONTAINER (IDENTIFIER);
alter table DYEXTN_ASSOCIATION  add constraint FK1046842440738A50 foreign key (TARGET_ENTITY_ID) references DYEXTN_ENTITY (IDENTIFIER);
alter table DYEXTN_ASSOCIATION  add constraint FK104684246D19A21F foreign key (IDENTIFIER) references DYEXTN_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_ASSOCIATION  add constraint FK104684242BD842F0 foreign key (TARGET_ROLE_ID) references DYEXTN_ROLE (IDENTIFIER);
alter table DYEXTN_ASSOCIATION  add constraint FK1046842439780F7A foreign key (SOURCE_ROLE_ID) references DYEXTN_ROLE (IDENTIFIER);
alter table DYEXTN_ASSO_DISPLAY_ATTR  add constraint FKD12FD38235D6E973 foreign key (DISPLAY_ATTRIBUTE_ID) references DYEXTN_PRIMITIVE_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_ASSO_DISPLAY_ATTR  add constraint FKD12FD3827FD29CDD foreign key (SELECT_CONTROL_ID) references DYEXTN_SELECT_CONTROL (IDENTIFIER);
alter table DYEXTN_ATTRIBUTE  add constraint FK37F1E2FFF99EA906 foreign key (ENTIY_ID) references DYEXTN_ENTITY (IDENTIFIER);
alter table DYEXTN_ATTRIBUTE  add constraint FK37F1E2FF5CC8694E foreign key (IDENTIFIER) references DYEXTN_BASE_ABSTRACT_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_ATTRIBUTE_RECORD  add constraint FK9B20ED914AC41F7E foreign key (ENTITY_ID) references DYEXTN_ENTITY (IDENTIFIER);
alter table DYEXTN_ATTRIBUTE_RECORD  add constraint FK9B20ED914DC2CD16 foreign key (ATTRIBUTE_ID) references DYEXTN_PRIMITIVE_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_ATTRIBUTE_TYPE_INFO  add constraint FK62596D531333996E foreign key (PRIMITIVE_ATTRIBUTE_ID) references DYEXTN_PRIMITIVE_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_BARR_CONCEPT_VALUE  add constraint FK89D27DF74641D513 foreign key (IDENTIFIER) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);
alter table DYEXTN_BASE_ABSTRACT_ATTRIBUTE  add constraint FK14BA6610728B19BE foreign key (IDENTIFIER) references DYEXTN_ABSTRACT_METADATA (IDENTIFIER);
alter table DYEXTN_BOOLEAN_CONCEPT_VALUE  add constraint FK57B6C4A64641D513 foreign key (IDENTIFIER) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);
alter table DYEXTN_BOOLEAN_TYPE_INFO  add constraint FK28F1809FE5294FA3 foreign key (IDENTIFIER) references DYEXTN_ATTRIBUTE_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_BYTE_ARRAY_TYPE_INFO  add constraint FK18BDA73E5294FA3 foreign key (IDENTIFIER) references DYEXTN_ATTRIBUTE_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_CADSRDE  add constraint FK588A250953CC4A77 foreign key (IDENTIFIER) references DYEXTN_DATA_ELEMENT (IDENTIFIER);
alter table DYEXTN_CADSR_VALUE_DOMAIN_INFO  add constraint FK1C9AA3641333996E foreign key (PRIMITIVE_ATTRIBUTE_ID) references DYEXTN_PRIMITIVE_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_CATEGORY  add constraint FKD33DE81B854AC01B foreign key (CATEGORY_ENTITY_ID) references DYEXTN_CATEGORY_ENTITY (IDENTIFIER);
alter table DYEXTN_CATEGORY  add constraint FKD33DE81B728B19BE foreign key (IDENTIFIER) references DYEXTN_ABSTRACT_METADATA (IDENTIFIER);
alter table DYEXTN_CATEGORY  add constraint FKD33DE81B54A9F59D foreign key (ROOT_CATEGORY_ELEMENT) references DYEXTN_CATEGORY_ENTITY (IDENTIFIER);
alter table DYEXTN_CATEGORY_ASSOCIATION  add constraint FK1B7C663D854AC01B foreign key (CATEGORY_ENTITY_ID) references DYEXTN_CATEGORY_ENTITY (IDENTIFIER);
alter table DYEXTN_CATEGORY_ASSOCIATION  add constraint FK1B7C663DCAC769C5 foreign key (CATEGORY_ENTIY_ID) references DYEXTN_CATEGORY_ENTITY (IDENTIFIER);
alter table DYEXTN_CATEGORY_ASSOCIATION  add constraint FK1B7C663D5CC8694E foreign key (IDENTIFIER) references DYEXTN_BASE_ABSTRACT_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_CATEGORY_ATTRIBUTE  add constraint FKEF3B7758854AC01B foreign key (CATEGORY_ENTITY_ID) references DYEXTN_CATEGORY_ENTITY (IDENTIFIER);
alter table DYEXTN_CATEGORY_ATTRIBUTE  add constraint FKEF3B7758CAC769C5 foreign key (CATEGORY_ENTIY_ID) references DYEXTN_CATEGORY_ENTITY (IDENTIFIER);
alter table DYEXTN_CATEGORY_ATTRIBUTE  add constraint FKEF3B77584DC2CD16 foreign key (ABSTRACT_ATTRIBUTE_ID) references DYEXTN_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_CATEGORY_ATTRIBUTE  add constraint FKEF3B77585CC8694E foreign key (IDENTIFIER) references DYEXTN_BASE_ABSTRACT_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_CATEGORY_ENTITY  add constraint FK9F2DA8874AC41F7E foreign key (ENTITY_ID) references DYEXTN_ENTITY (IDENTIFIER);
alter table DYEXTN_CATEGORY_ENTITY  add constraint FK9F2DA887A8103C6F foreign key (TREE_PARENT_CATEGORY_ENTITY_ID) references DYEXTN_CATEGORY_ENTITY (IDENTIFIER);
alter table DYEXTN_CATEGORY_ENTITY  add constraint FK9F2DA887A52559D0 foreign key (PARENT_CATEGORY_ENTITY_ID) references DYEXTN_CATEGORY_ENTITY (IDENTIFIER);
alter table DYEXTN_CATEGORY_ENTITY  add constraint FK9F2DA887FB6EB979 foreign key (CATEGORY_ASSOCIATION_ID) references DYEXTN_CATEGORY_ASSOCIATION (IDENTIFIER);
alter table DYEXTN_CATEGORY_ENTITY  add constraint FK9F2DA887D06EE657 foreign key (OWN_PARENT_CATEGORY_ENTITY_ID) references DYEXTN_CATEGORY_ENTITY (IDENTIFIER);
alter table DYEXTN_CATEGORY_ENTITY  add constraint FK9F2DA887743AC3F2 foreign key (IDENTIFIER) references DYEXTN_ABSTRACT_ENTITY (id);
alter table DYEXTN_CATEGORY_ENTITY  add constraint FK9F2DA887F5A32608 foreign key (REL_ATTR_CAT_ENTITY_ID) references DYEXTN_CATEGORY (IDENTIFIER);
alter table DYEXTN_CAT_ASSO_CTL  add constraint FK281FAB50C45A8CFA foreign key (IDENTIFIER) references DYEXTN_ABSTR_CONTAIN_CTR (IDENTIFIER);
alter table DYEXTN_CHECK_BOX  add constraint FK4EFF925740F198C2 foreign key (IDENTIFIER) references DYEXTN_CONTROL (IDENTIFIER);
alter table DYEXTN_COLUMN_PROPERTIES  add constraint FK8FCE2B3F3AB6A1D3 foreign key (IDENTIFIER) references DYEXTN_DATABASE_PROPERTIES (IDENTIFIER);
alter table DYEXTN_COLUMN_PROPERTIES  add constraint FK8FCE2B3F1333996E foreign key (PRIMITIVE_ATTRIBUTE_ID) references DYEXTN_PRIMITIVE_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_COLUMN_PROPERTIES  add constraint FK8FCE2B3F67F8B59 foreign key (CATEGORY_ATTRIBUTE_ID) references DYEXTN_CATEGORY_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_COMBOBOX  add constraint FKABBC649ABF67AB26 foreign key (IDENTIFIER) references DYEXTN_SELECT_CONTROL (IDENTIFIER);
alter table DYEXTN_CONSTRAINT_PROPERTIES  add constraint FK82886CD87EE87FF6 foreign key (ASSOCIATION_ID) references DYEXTN_ASSOCIATION (IDENTIFIER);
alter table DYEXTN_CONSTRAINT_PROPERTIES  add constraint FK82886CD8FB6EB979 foreign key (CATEGORY_ASSOCIATION_ID) references DYEXTN_CATEGORY_ASSOCIATION (IDENTIFIER);
alter table DYEXTN_CONSTRAINT_PROPERTIES  add constraint FK82886CD83AB6A1D3 foreign key (IDENTIFIER) references DYEXTN_DATABASE_PROPERTIES (IDENTIFIER);
alter table DYEXTN_CONTAINER  add constraint FK1EAB84E4178865E foreign key (VIEW_ID) references DYEXTN_VIEW (IDENTIFIER);
alter table DYEXTN_CONTAINER  add constraint FK1EAB84E41DCC9E63 foreign key (ABSTRACT_ENTITY_ID) references DYEXTN_ABSTRACT_ENTITY (id);
alter table DYEXTN_CONTAINER  add constraint FK1EAB84E4BF901C84 foreign key (BASE_CONTAINER_ID) references DYEXTN_CONTAINER (IDENTIFIER);
alter table DYEXTN_CONTAINER  add constraint FK1EAB84E488C075EF foreign key (ENTITY_GROUP_ID) references DYEXTN_ENTITY_GROUP (IDENTIFIER);
alter table DYEXTN_CONTAINMENT_CONTROL  add constraint FK3F9D4AD3C45A8CFA foreign key (IDENTIFIER) references DYEXTN_ABSTR_CONTAIN_CTR (IDENTIFIER);
alter table DYEXTN_CONTROL  add constraint FK70FB5E807792A78F foreign key (BASE_ABST_ATR_ID) references DYEXTN_BASE_ABSTRACT_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_CONTROL  add constraint FK70FB5E8069935DD6 foreign key (CONTAINER_ID) references DYEXTN_CONTAINER (IDENTIFIER);
alter table DYEXTN_DATA_ELEMENT  add constraint FKB1153E4AA208204 foreign key (ATTRIBUTE_TYPE_INFO_ID) references DYEXTN_ATTRIBUTE_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_DATA_ELEMENT  add constraint FKB1153E467F8B59 foreign key (CATEGORY_ATTRIBUTE_ID) references DYEXTN_CATEGORY_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_DATA_GRID  add constraint FK233EB73E40F198C2 foreign key (IDENTIFIER) references DYEXTN_CONTROL (IDENTIFIER);
alter table DYEXTN_DATEPICKER  add constraint FKFEADD19940F198C2 foreign key (IDENTIFIER) references DYEXTN_CONTROL (IDENTIFIER);
alter table DYEXTN_DATE_CONCEPT_VALUE  add constraint FK45F598A64641D513 foreign key (IDENTIFIER) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);
alter table DYEXTN_DATE_TYPE_INFO  add constraint FKFBA549FE5294FA3 foreign key (IDENTIFIER) references DYEXTN_ATTRIBUTE_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_DOUBLE_CONCEPT_VALUE  add constraint FKB94E64494641D513 foreign key (IDENTIFIER) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);
alter table DYEXTN_DOUBLE_TYPE_INFO  add constraint FKC83869C2BA4AE008 foreign key (IDENTIFIER) references DYEXTN_NUMERIC_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_ENTITY  add constraint FK8B2436402264D629 foreign key (PARENT_ENTITY_ID) references DYEXTN_ENTITY (IDENTIFIER);
alter table DYEXTN_ENTITY  add constraint FK8B24364088C075EF foreign key (ENTITY_GROUP_ID) references DYEXTN_ENTITY_GROUP (IDENTIFIER);
alter table DYEXTN_ENTITY  add constraint FK8B243640743AC3F2 foreign key (IDENTIFIER) references DYEXTN_ABSTRACT_ENTITY (id);
alter table DYEXTN_ENTITY_GROUP  add constraint FK105DE7A0728B19BE foreign key (IDENTIFIER) references DYEXTN_ABSTRACT_METADATA (IDENTIFIER);
alter table DYEXTN_ENTITY_MAP_CONDNS  add constraint FK2A9D6029CFA08B13 foreign key (FORM_CONTEXT_ID) references DYEXTN_FORM_CONTEXT (IDENTIFIER);
alter table DYEXTN_ENTITY_MAP_RECORD  add constraint FK43A45013CFA08B13 foreign key (FORM_CONTEXT_ID) references DYEXTN_FORM_CONTEXT (IDENTIFIER);
alter table DYEXTN_FILE_EXTENSIONS  add constraint FKD49834FA56AF0834 foreign key (ATTRIBUTE_ID) references DYEXTN_FILE_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_FILE_TYPE_INFO  add constraint FKA00F0EDE5294FA3 foreign key (IDENTIFIER) references DYEXTN_ATTRIBUTE_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_FILE_UPLOAD  add constraint FK2FAD41E740F198C2 foreign key (IDENTIFIER) references DYEXTN_CONTROL (IDENTIFIER);
alter table DYEXTN_FLOAT_CONCEPT_VALUE  add constraint FK6785309A4641D513 foreign key (IDENTIFIER) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);
alter table DYEXTN_FLOAT_TYPE_INFO  add constraint FK7E1C0693BA4AE008 foreign key (IDENTIFIER) references DYEXTN_NUMERIC_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_FORM_CONTEXT  add constraint FKE56CCDB12B784475 foreign key (ENTITY_MAP_ID) references DYEXTN_ENTITY_MAP (IDENTIFIER);
alter table DYEXTN_INTEGER_CONCEPT_VALUE  add constraint FKFBA33B3C4641D513 foreign key (IDENTIFIER) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);
alter table DYEXTN_INTEGER_TYPE_INFO  add constraint FK5F9CB235BA4AE008 foreign key (IDENTIFIER) references DYEXTN_NUMERIC_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_LIST_BOX  add constraint FK208395A7BF67AB26 foreign key (IDENTIFIER) references DYEXTN_SELECT_CONTROL (IDENTIFIER);
alter table DYEXTN_LONG_CONCEPT_VALUE  add constraint FK3E1A6EF44641D513 foreign key (IDENTIFIER) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);
alter table DYEXTN_LONG_TYPE_INFO  add constraint FK257281EDBA4AE008 foreign key (IDENTIFIER) references DYEXTN_NUMERIC_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_NUMERIC_TYPE_INFO  add constraint FK4DEC9544E5294FA3 foreign key (IDENTIFIER) references DYEXTN_ATTRIBUTE_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_OBJECT_TYPE_INFO  add constraint FK74819FB0E5294FA3 foreign key (IDENTIFIER) references DYEXTN_ATTRIBUTE_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_PATH  add constraint FKC26ADC2854AC01B foreign key (CATEGORY_ENTITY_ID) references DYEXTN_CATEGORY_ENTITY (IDENTIFIER);
alter table DYEXTN_PATH_ASSO_REL  add constraint FK1E1260A57EE87FF6 foreign key (ASSOCIATION_ID) references DYEXTN_ASSOCIATION (IDENTIFIER);
alter table DYEXTN_PATH_ASSO_REL  add constraint FK1E1260A580C8F93E foreign key (PATH_ID) references DYEXTN_PATH (IDENTIFIER);
alter table DYEXTN_PERMISSIBLE_VALUE  add constraint FK136264E0AA208204 foreign key (ATTRIBUTE_TYPE_INFO_ID) references DYEXTN_ATTRIBUTE_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_PERMISSIBLE_VALUE  add constraint FK136264E067F8B59 foreign key (CATEGORY_ATTRIBUTE_ID) references DYEXTN_CATEGORY_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_PRIMITIVE_ATTRIBUTE  add constraint FKA9F765C76D19A21F foreign key (IDENTIFIER) references DYEXTN_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_RADIOBUTTON  add constraint FK16F5BA9040F198C2 foreign key (IDENTIFIER) references DYEXTN_CONTROL (IDENTIFIER);
alter table DYEXTN_RULE  add constraint FKC27E09990F96714 foreign key (ATTRIBUTE_ID) references DYEXTN_ATTRIBUTE (IDENTIFIER);
alter table DYEXTN_RULE_PARAMETER  add constraint FK2256736395D4A5AE foreign key (RULE_ID) references DYEXTN_RULE (IDENTIFIER);
alter table DYEXTN_SELECT_CONTROL  add constraint FKDFEBB65740F198C2 foreign key (IDENTIFIER) references DYEXTN_CONTROL (IDENTIFIER);
alter table DYEXTN_SEMANTIC_PROPERTY  add constraint FKD2A0B5B19AEB0CA3 foreign key (ABSTRACT_METADATA_ID) references DYEXTN_ABSTRACT_METADATA (IDENTIFIER);
alter table DYEXTN_SEMANTIC_PROPERTY  add constraint FKD2A0B5B15EB60E90 foreign key (ABSTRACT_VALUE_ID) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);
alter table DYEXTN_SHORT_CONCEPT_VALUE  add constraint FKC1945ABA4641D513 foreign key (IDENTIFIER) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);
alter table DYEXTN_SHORT_TYPE_INFO  add constraint FK99540B3BA4AE008 foreign key (IDENTIFIER) references DYEXTN_NUMERIC_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_STRING_CONCEPT_VALUE  add constraint FKADE7D8894641D513 foreign key (IDENTIFIER) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);
alter table DYEXTN_STRING_TYPE_INFO  add constraint FKDA35FE02E5294FA3 foreign key (IDENTIFIER) references DYEXTN_ATTRIBUTE_TYPE_INFO (IDENTIFIER);
alter table DYEXTN_TABLE_PROPERTIES  add constraint FKE608E0811DCC9E63 foreign key (ABSTRACT_ENTITY_ID) references DYEXTN_ABSTRACT_ENTITY (id);
alter table DYEXTN_TABLE_PROPERTIES  add constraint FKE608E0813AB6A1D3 foreign key (IDENTIFIER) references DYEXTN_DATABASE_PROPERTIES (IDENTIFIER);
alter table DYEXTN_TAGGED_VALUE  add constraint FKF79D055B9AEB0CA3 foreign key (ABSTRACT_METADATA_ID) references DYEXTN_ABSTRACT_METADATA (IDENTIFIER);
alter table DYEXTN_TEXTAREA  add constraint FK946EE25740F198C2 foreign key (IDENTIFIER) references DYEXTN_CONTROL (IDENTIFIER);
alter table DYEXTN_TEXTFIELD  add constraint FKF9AFC85040F198C2 foreign key (IDENTIFIER) references DYEXTN_CONTROL (IDENTIFIER);
alter table DYEXTN_USERDEFINED_DE  add constraint FK630761FF53CC4A77 foreign key (IDENTIFIER) references DYEXTN_DATA_ELEMENT (IDENTIFIER);
alter table DYEXTN_USERDEF_DE_VALUE_REL  add constraint FK3EE58DCF5521B106 foreign key (USER_DEF_DE_ID) references DYEXTN_USERDEFINED_DE (IDENTIFIER);
alter table DYEXTN_USERDEF_DE_VALUE_REL  add constraint FK3EE58DCF49BDD67 foreign key (PERMISSIBLE_VALUE_ID) references DYEXTN_PERMISSIBLE_VALUE (IDENTIFIER);

SET IMPLICIT_TRANSACTIONS OFF