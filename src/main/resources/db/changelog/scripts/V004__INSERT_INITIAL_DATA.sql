--liquibase formatted sql

--changeset renanpelicari:6
INSERT INTO T_PERSON(FULLNAME, INSURANCE_NUMBER) VALUES ('Robert Plant', 'QQ1122334');
INSERT INTO T_PERSON(FULLNAME, INSURANCE_NUMBER) VALUES ('Jimmy Page', 'WW1122334');
INSERT INTO T_PERSON(FULLNAME, INSURANCE_NUMBER) VALUES ('Keith Moon', 'EE1122334');
INSERT INTO T_PERSON(FULLNAME, INSURANCE_NUMBER) VALUES ('Keith Richards', 'RR1122334');
INSERT INTO T_PERSON(FULLNAME, INSURANCE_NUMBER) VALUES ('Roger Waters', 'T1122334');
--rollback delete from T_PERSON where fullname in ('Robert Plant', 'Jimmy Page', 'Keith Moon', 'Keith Richards', 'Roger Waters');

--changeset renanpelicari:7
INSERT INTO T_ACCOUNT(PERSON_ID, ACCOUNT_NUMBER, CURRENT_AMOUNT)
SELECT P.ID, (100200300 + P.ID), 1500.0 FROM T_PERSON P;
-- rollback delete from T_ACCOUNT where PERSON_ID in (select PERSON_ID from t_person where fullname in ('Robert Plant', 'Jimmy Page', 'Keith Moon', 'Keith Richards', 'Roger Waters'));

