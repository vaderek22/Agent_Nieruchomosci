1. Utworzenie kopii tabeli OSOBY. Na kopii powinny być automatycznie wykonywane wszystkie polecenia dotyczące tabeli podstawowej.
2. Ograniczenie liczby ról dla pracowników do 15, przy próbie dodania kolejnej należy obsłużyć takie zdarzenie.
3. Wyzwalacz sprawdzający czy nie ma przerw w numeracji transakcji.

1.
CREATE OR REPLACE PROCEDURE Kopiowanie(instrukcja IN VARCHAR2) 
AS 
BEGIN 
EXECUTE IMMEDIATE instrukcja; 
END; 
/
EXEC Kopiowanie('CREATE TABLE OSOBY_KOPIA AS (SELECT * FROM OSOBY)');
CREATE OR REPLACE TRIGGER WYZWALACZ_1 
BEFORE INSERT OR UPDATE OR DELETE ON OSOBY
FOR EACH ROW 
BEGIN
CASE 
WHEN INSERTING THEN 
INSERT INTO OSOBY_KOPIA VALUES(:NEW.osoba_id, :NEW.imie, :NEW.nazwisko, :NEW.pesel, :NEW.telefon, :NEW.adres_id); 
WHEN UPDATING THEN UPDATE OSOBY_KOPIA SET osoba_id = :NEW.osoba_id; 
WHEN DELETING THEN DELETE FROM OSOBY_KOPIA WHERE osoba_id = :NEW.osoba_id; 
END CASE; 
END; 

2.
CREATE OR REPLACE TRIGGER WYZWALACZ_2
BEFORE INSERT ON ROLE FOR EACH ROW
WHEN(NEW.rola_id > 15)
BEGIN
    RAISE_APPLICATION_ERROR(-20000, 'Rola musi być z zakresu od 1 do 15!');
END;

3.
CREATE OR REPLACE TRIGGER WYZWALACZ_3
AFTER UPDATE OR INSERT OR DELETE ON TRANSAKCJE
DECLARE
max_value NUMBER(6); min_value NUMBER(6); count_value NUMBER(6);
BEGIN
SELECT MAX(transakcja_id), MIN(transakcja_id), COUNT(transakcja_id)
INTO max_value, min_value, count_value FROM TRANSAKCJE;
IF(min_value IS NOT NULL AND max_value IS NOT NULL) THEN
    IF(max_value - min_value) <> (count_value - 1) THEN
        RAISE_APPLICATION_ERROR(-20000, 'Zla numeracja');
    END IF;
END IF;
END;