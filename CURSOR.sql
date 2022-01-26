1. Kursor, który policzy średnią cene usług z transakcji pracownika, który mieszka w Gdańsku.
2. Kursor, który zwiększy staż o rok dla pracowników, którzy przepracowali mniej niż 6 lat.
3. Kursor do zmniejszenia ceny najdroższej usługi o 5%.
4. Kursor, który zwiększa cene usług o identyfikatorze większym od 11.

1.
CREATE OR REPLACE FUNCTION KURSOR_1 RETURN NUMBER
IS
CURSOR pracownik_gdansk
IS 
SELECT * FROM ADRESY a INNER JOIN OSOBY o ON o.adres_id = a.adres_id INNER JOIN PRACOWNICY_AGENCJI p ON p.osoba_id = o.osoba_id INNER JOIN TRANSAKCJE t ON t.pracownik_id = p.pracownik_id INNER JOIN USLUGI u ON u.usluga_id = t.usluga_id WHERE a.miasto = 'Gdańsk';
ilosc NUMBER;
suma NUMBER;
BEGIN
ilosc := 0;
suma := 0;
FOR temp IN pracownik_gdansk
LOOP
    suma := suma + temp.cena_uslugi;
    ilosc := ilosc + 1;
END LOOP;
RETURN suma / ilosc;
END;
\
SELECT KURSOR_1 FROM DUAL;

2.
CREATE OR REPLACE PROCEDURE KURSOR_2
IS
CURSOR staze 
IS
SELECT * FROM (SELECT pracownik_id, staz FROM PRACOWNICY_AGENCJI) x;
CURSOR pracownicy
IS
SELECT * FROM PRACOWNICY_AGENCJI FOR UPDATE;
BEGIN
FOR x IN staze LOOP
    IF x.staz < 6 THEN
        FOR y IN pracownicy LOOP
            IF x.pracownik_id = y.pracownik_id THEN
                UPDATE PRACOWNICY_AGENCJI SET staz = staz + 1 WHERE CURRENT OF pracownicy;
            END IF;
        END LOOP;
    END IF;
END LOOP;
END;
\
EXEC KURSOR_2;

3.
CREATE OR REPLACE PROCEDURE KURSOR_3
IS
CURSOR uslugi 
IS
SELECT * FROM USLUGI FOR UPDATE;
najdrozsza_usluga NUMBER;
BEGIN
SELECT * INTO najdrozsza_usluga FROM (SELECT usluga_id FROM USLUGI ORDER BY cena_uslugi DESC FETCH FIRST 1 ROWS ONLY);
FOR x IN uslugi 
LOOP
    IF x.usluga_id = najdrozsza_usluga THEN
        UPDATE USLUGI SET cena_uslugi = cena_uslugi - cena_uslugi * 0.05 WHERE CURRENT OF uslugi;
    END IF;
END LOOP;
END;
\
EXEC KURSOR_3;

4.
CREATE OR REPLACE PROCEDURE KURSOR_4
IS
CURSOR uslugi
IS
SELECT * FROM USLUGI FOR UPDATE;
BEGIN
FOR x IN uslugi LOOP
    IF(x.usluga_id > 11) THEN
        UPDATE USLUGI SET cena_uslugi = cena_uslugi + 100 WHERE usluga_id = x.usluga_id;
    END IF;
END LOOP;
END;
\
EXEC KURSOR_4;
