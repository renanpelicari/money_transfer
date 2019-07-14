--liquibase formatted sql

--changeset renanpelicari:2
CREATE TABLE T_ACCOUNT (
    ID SERIAL PRIMARY KEY,
    PERSON_ID INTEGER REFERENCES T_PERSON(id),
    CURRENT_AMOUNT NUMERIC NOT NULL
)
--rollback drop table T_ACCOUNT;

