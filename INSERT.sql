INSERT INTO ADRESY VALUES (1, 'Lwowska', '15', NULL, '08-123', 'Siedlce');
INSERT INTO ADRESY VALUES (2, 'Katedralna', NULL, '7', '15-340', 'Białystok');
INSERT INTO ADRESY VALUES (3, 'Lipowa', '154', NULL, '26-680', 'Radom');
INSERT INTO ADRESY VALUES (4, 'Szkolna', NULL, '117', '20-209', 'Lublin');
INSERT INTO ADRESY VALUES (5, 'Nowa', '101', NULL, '54-113', 'Wrocław');
INSERT INTO ADRESY VALUES (6, 'Polna', NULL, '88', '61-543', 'Poznań');
INSERT INTO ADRESY VALUES (7, 'Warszawska', '68', NULL, '70-103', 'Szcecin');
INSERT INTO ADRESY VALUES (8, 'Wolności', NULL, '39', '81-321', 'Gdynia');
INSERT INTO ADRESY VALUES (9, 'Krótka', '158', NULL, '41-821', 'Zabrze');
INSERT INTO ADRESY VALUES (10, 'Akademicka', NULL, '276', '80-427', 'Gdańsk');
INSERT INTO ADRESY VALUES (11, 'Brzozowa', '38', NULL, '00-280', 'Warszawa');
INSERT INTO ADRESY VALUES (12, 'Towarowa', NULL, '60', '04-291', 'Warszawa');
INSERT INTO ADRESY VALUES (13, 'Brzeska', '9', NULL, '04-346', 'Warszawa');
INSERT INTO ADRESY VALUES (14, 'Leśna', NULL, '17', '40-111', 'Katowice');
INSERT INTO ADRESY VALUES (15, 'Stalowa', '33', NULL, '40-045', 'Katowice');
INSERT INTO ADRESY VALUES (16, 'Kwiatowa', NULL, '66', '30-343', 'Kraków');
INSERT INTO ADRESY VALUES (17, 'Fabryczna', '34', NULL, '31-672', 'Kraków');
INSERT INTO ADRESY VALUES (18, 'Północna', NULL, '184', '87-173', 'Toruń');
INSERT INTO ADRESY VALUES (19, 'Słoneczna', '222', NULL, '25-255', 'Kielce');
INSERT INTO ADRESY VALUES (20, 'Miodowa', NULL, '50', '10-500', 'Olsztyn');

INSERT INTO OSOBY VALUES (1, 'Adam', 'Nowak', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 1);
INSERT INTO OSOBY VALUES (2, 'Joanna', 'Robak', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 3);
INSERT INTO OSOBY VALUES (3, 'Michał', 'Kowalski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 5);
INSERT INTO OSOBY VALUES (4, 'Tomasz', 'Nowakowski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 7);
INSERT INTO OSOBY VALUES (5, 'Aneta', 'Szyba', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 9);
INSERT INTO OSOBY VALUES (6, 'Krzysztof', 'Drewno', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 11);
INSERT INTO OSOBY VALUES (7, 'Katarzyna', 'Mucha', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 13);
INSERT INTO OSOBY VALUES (8, 'Robert', 'Wawrzyn', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 15);
INSERT INTO OSOBY VALUES (9, 'Anna', 'Kowal', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 17);
INSERT INTO OSOBY VALUES (10, 'Bartosz', 'Walczuk', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 19);
INSERT INTO OSOBY VALUES (11, 'Barbara', 'Rabarbar', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 2);
INSERT INTO OSOBY VALUES (12, 'Szymon', 'Szymański', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 4);
INSERT INTO OSOBY VALUES (13, 'Cecylia', 'Gol', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 6);
INSERT INTO OSOBY VALUES (14, 'Jan', 'Krychowiak', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 8);
INSERT INTO OSOBY VALUES (15, 'Kacper', 'Blonski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 10);

INSERT INTO BIURO_AGENCJI VALUES (1, 'NieruchoPol', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual), 12);
INSERT INTO BIURO_AGENCJI VALUES (2, 'NieruchoMex', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual), 14);
INSERT INTO BIURO_AGENCJI VALUES (3, 'NieruchomościoPol', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual), 16);

INSERT INTO ROLE VALUES (1, 'Konsultant telefoniczny', 'Opis');
INSERT INTO ROLE VALUES (2, 'Doradca nieruchomości', 'Opis');
INSERT INTO ROLE VALUES (3, 'Kierownik działu', 'Opis');
INSERT INTO ROLE VALUES (4, 'Informatyk', 'Opis');
INSERT INTO ROLE VALUES (5, 'Administrator danych', 'Opis');
INSERT INTO ROLE VALUES (6, 'Przedstawiciel biura', 'Opis');
INSERT INTO ROLE VALUES (7, 'Negocjator', 'Opis');
INSERT INTO ROLE VALUES (8, 'Przezes biura', 'Opis');
INSERT INTO ROLE VALUES (9, 'Specjalista ds. nieruchomości', 'Opis');
INSERT INTO ROLE VALUES (10, 'Agent nieruchomości', 'Opis');
INSERT INTO ROLE VALUES (11, 'Recepcjonista', 'Opis');
INSERT INTO ROLE VALUES (12, 'Sekretarka', 'Opis');
INSERT INTO ROLE VALUES (13, 'Młodszy specjalista', 'Opis');
INSERT INTO ROLE VALUES (14, 'Handlowiec', 'Opis');
INSERT INTO ROLE VALUES (15, 'Doradca klienta', 'Opis');

INSERT INTO PRACOWNICY_AGENCJI VALUES (1, 1, 1, 1, (SELECT dbms_random.value(1, 10) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (2, 3, 1, 3, (SELECT dbms_random.value(1, 10) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (3, 5, 2, 5, (SELECT dbms_random.value(1, 10) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (4, 7, 2, 7, (SELECT dbms_random.value(1, 10) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (5, 9, 3, 9, (SELECT dbms_random.value(1, 10) as "staz" from dual));

INSERT INTO USLUGI VALUES (1, 'Doradztwo kupna', '500');
INSERT INTO USLUGI VALUES (2, 'Doradztwo sprzedaży', '500');
INSERT INTO USLUGI VALUES (3, 'Wycena nieruchomości', '2000');

INSERT INTO TYPY_NIERUCHOMOSCI VALUES (1, 'Blok');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (2, 'Apartament');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (3, 'Dom wolnostojący');

INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (1, 2);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (2, 4);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (3, 6);

INSERT INTO DANE_NIERUCHOMOSCI VALUES (1, 1, 2, 18, 1000, 10);
INSERT INTO DANE_NIERUCHOMOSCI VALUES (2, 3, 1, 20, 300, 1);

INSERT INTO OFERTA_AGENCJI VALUES (1, 1, 3, 1);
INSERT INTO OFERTA_AGENCJI VALUES (2, 2, 3, 2);

INSERT INTO KLIENT_AGENCJI VALUES (1, 8);
INSERT INTO KLIENT_AGENCJI VALUES (2, 10);
INSERT INTO KLIENT_AGENCJI VALUES (3, 12);
INSERT INTO KLIENT_AGENCJI VALUES (4, 14);
INSERT INTO KLIENT_AGENCJI VALUES (5, 15);

INSERT INTO TRANSAKCJE VALUES (1, (SELECT sysdate - round(dbms_random.value(1,10)) as "data" from dual), 1, 2, 3);
INSERT INTO TRANSAKCJE VALUES (2, (SELECT sysdate - round(dbms_random.value(1,10)) as "data" from dual), 2, 3, 4);



