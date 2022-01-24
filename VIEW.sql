1. Widok agregujący dane o klientach i miastach, w których mieszkają klienci, którzy zapłacili za usługi robiąc przelew.
2. Widok agregujący dane o najmniej opłacanej usłudze w ostatnich 3 tygodniach.
3. Widok zawierajcy dane o kliencie który wydał na usługi najmniej w ostatnich 2 tygodniach.
4. Widok zawierający informacje o biurze, który wygenerował największy zysk z transakcji w ostatnim tygodniu.
5. Widok zawierający informacje o typie nieruchomości, który był najczęściej używany w transakcjach.
6. Widok zawierający dane o średnim stazu pracownikow mieszkających w Radomiu.

1.
CREATE OR REPLACE VIEW WIDOK_1 AS 
SELECT o.imie, o.nazwisko, a.miasto, l.forma_platnosci FROM ADRESY a INNER JOIN OSOBY o ON o.adres_id = a.adres_id INNER JOIN KLIENT_AGENCJI k ON k.osoba_id = o.osoba_id INNER JOIN TRANSAKCJE t ON t.klient_id = k.klient_id INNER JOIN PLATNOSCI l ON l.platnosci_id = t.platnosci_id WHERE l.forma_platnosci = 'Przelew' GROUP BY(o.imie, o.nazwisko, a.miasto, l.forma_platnosci);

2. 
CREATE OR REPLACE VIEW WIDOK_2 AS 
SELECT t.usluga_id, u.nazwa_uslugi, u.cena_uslugi, SUM(u.cena_uslugi) ZYSK FROM TRANSAKCJE t INNER JOIN USLUGI u ON t.usluga_id = u.usluga_id WHERE t.data_transakcji BETWEEN(sysdate - 21) AND sysdate GROUP BY(t.usluga_id, u.nazwa_uslugi, u.cena_uslugi) ORDER BY SUM(u.cena_uslugi) ASC FETCH FIRST 1 ROW ONLY;

3.
CREATE OR REPLACE VIEW WIDOK_3 AS
SELECT k.klient_id, o.imie, o.nazwisko, o.telefon, o.pesel, a.miasto, a.ulica, Wydano FROM OSOBY o INNER JOIN ADRESY a ON a.adres_id = o.adres_id INNER JOIN KLIENT_AGENCJI k ON k.osoba_id = o.osoba_id INNER JOIN (SELECT t.klient_id, SUM(u.cena_uslugi) Wydano FROM TRANSAKCJE t INNER JOIN USLUGI u ON t.usluga_id = u.usluga_id WHERE t.data_transakcji BETWEEN(sysdate - 14) AND sysdate GROUP BY klient_id ORDER BY SUM(u.cena_uslugi) DESC FETCH FIRST 1 ROWS ONLY) temp ON temp.klient_id = k.klient_id;

4.
CREATE OR REPLACE VIEW WIDOK_4 AS
SELECT b.biuro_id, b.biuro_nazwa, b.rok_zalozenia, b.telefon, b.NIP, SUM(u.cena_uslugi) ZYSK FROM USLUGI u INNER JOIN TRANSAKCJE t ON t.usluga_id = u.usluga_id INNER JOIN PRACOWNICY_AGENCJI p ON p.pracownik_id = t.pracownik_id INNER JOIN BIURO_AGENCJI b ON b.biuro_id = p.biuro_id WHERE t.data_transakcji BETWEEN(sysdate - 7) AND sysdate GROUP BY(b.biuro_id, b.biuro_nazwa, b.rok_zalozenia, b.telefon, b.NIP) ORDER BY SUM(u.cena_uslugi) DESC FETCH FIRST 1 ROW ONLY;

5.
CREATE OR REPLACE VIEW WIDOK_5 AS
SELECT y.nazwa_typu AS TYP_NIERUCHOMOSCI, COUNT(y.typy_nieruchomosci_id) AS ILOSC FROM TYPY_NIERUCHOMOSCI y INNER JOIN DANE_NIERUCHOMOSCI d ON d.typy_nieruchomosci_id = y.typy_nieruchomosci_id INNER JOIN TRANSAKCJE t ON t.dane_nieruchomosci_id = d.dane_nieruchomosci_id GROUP BY (y.nazwa_typu, y.typy_nieruchomosci_id) ORDER BY COUNT(y.typy_nieruchomosci_id) DESC FETCH FIRST 1 ROW ONLY;

6. 
CREATE OR REPLACE VIEW WIDOK_6 AS
SELECT AVG(p.staz) AS Srednia FROM PRACOWNICY_AGENCJI p INNER JOIN OSOBY o ON o.osoba_id = p.osoba_id INNER JOIN ADRESY a ON a.adres_id = o.adres_id WHERE a.miasto = 'Radom';

