--db formatted sql

--changeset renanpelicari:1
CREATE TABLE T_PERSON (
    ID SERIAL PRIMARY KEY,
    FULLNAME VARCHAR(100) NOT NULL
)
--rollback drop table T_PERSON;
