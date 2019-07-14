--liquibase formatted sql

--changeset renanpelicari:3
CREATE TABLE T_ACCOUNT (
    ID SERIAL PRIMARY KEY,
    ACCOUNT_NUMBER DOUBLE PRECISION NOT NULL,
    PERSON_ID INTEGER REFERENCES T_PERSON(ID),
    CURRENT_AMOUNT NUMERIC NOT NULL
);
--rollback drop table T_ACCOUNT;

--changeset renanpelicari:4
CREATE UNIQUE INDEX IDX_ACCOUNT_NUMBER ON T_ACCOUNT (
    ACCOUNT_NUMBER
);
--rollback drop index IDX_ACCOUNT_NUMBER;
