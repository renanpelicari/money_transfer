--liquibase formatted sql

--changeset renanpelicari:4
INSERT INTO T_PERSON(FULLNAME) VALUES ('Robert Plant');
INSERT INTO T_PERSON(FULLNAME) VALUES ('Jimmy Page');
INSERT INTO T_PERSON(FULLNAME) VALUES ('Keith Moon');
INSERT INTO T_PERSON(FULLNAME) VALUES ('Keith Richards');
INSERT INTO T_PERSON(FULLNAME) VALUES ('Roger Waters');
--rollback delete from T_PERSON where fullname in ('Robert Plant', 'Jimmy Page', 'Keith Moon', 'Keith Richards', 'Roger Waters');

--changeset renanpelicari:5
INSERT INTO T_ACCOUNT(PERSON_ID, CURRENT_AMOUNT)
SELECT P.ID, 1500.0 FROM T_PERSON P;
-- rollback delete from T_ACCOUNT where PERSON_ID in (select PERSON_ID from t_person where fullname in ('Robert Plant', 'Jimmy Page', 'Keith Moon', 'Keith Richards', 'Roger Waters'));

