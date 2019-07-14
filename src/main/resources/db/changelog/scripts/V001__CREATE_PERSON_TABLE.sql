--liquibase formatted sql

--changeset renanpelicari:1
CREATE TABLE T_PERSON (
    ID SERIAL PRIMARY KEY,
    INSURANCE_NUMBER VARCHAR(10) NOT NULL,
    FULLNAME VARCHAR(100) NOT NULL
);
--rollback drop table T_PERSON;

--changeset renanpelicari:2
CREATE UNIQUE INDEX IDX_INSURANCE_NUMBER ON T_PERSON (
    INSURANCE_NUMBER
);
--rollback drop index IDX_INSURANCE_NUMBER;
