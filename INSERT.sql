INSERT INTO ADRESY VALUES (1, 'Lwowska', '15', NULL, '08-123', 'Radom');
INSERT INTO ADRESY VALUES (2, 'Katedralna', '15', '7', '15-340', 'Białystok');
INSERT INTO ADRESY VALUES (3, 'Lipowa', '154', NULL, '26-680', 'Radom');
INSERT INTO ADRESY VALUES (4, 'Szkolna', '88', '117', '20-209', 'Lublin');
INSERT INTO ADRESY VALUES (5, 'Nowa', '101', NULL, '54-113', 'Wrocław');
INSERT INTO ADRESY VALUES (6, 'Polna', '104', '88', '61-543', 'Poznań');
INSERT INTO ADRESY VALUES (7, 'Warszawska', '68', NULL, '70-103', 'Szcecin');
INSERT INTO ADRESY VALUES (8, 'Wolności', '67', '39', '81-321', 'Gdynia');
INSERT INTO ADRESY VALUES (9, 'Krótka', '158', NULL, '41-821', 'Zabrze');
INSERT INTO ADRESY VALUES (10, 'Akademicka', '27', '276', '80-427', 'Gdańsk');
INSERT INTO ADRESY VALUES (11, 'Brzozowa', '38', NULL, '00-280', 'Warszawa');
INSERT INTO ADRESY VALUES (12, 'Towarowa', '22', '60', '04-291', 'Warszawa');
INSERT INTO ADRESY VALUES (13, 'Brzeska', '9', NULL, '04-346', 'Warszawa');
INSERT INTO ADRESY VALUES (14, 'Leśna', '89', '17', '40-111', 'Katowice');
INSERT INTO ADRESY VALUES (15, 'Stalowa', '33', NULL, '40-045', 'Katowice');
INSERT INTO ADRESY VALUES (16, 'Kwiatowa', '12', '66', '30-343', 'Kraków');
INSERT INTO ADRESY VALUES (17, 'Fabryczna', '34', NULL, '31-672', 'Kraków');
INSERT INTO ADRESY VALUES (18, 'Północna', '100', '184', '87-173', 'Toruń');
INSERT INTO ADRESY VALUES (19, 'Słoneczna', '222', NULL, '25-255', 'Kielce');
INSERT INTO ADRESY VALUES (20, 'Miodowa', '14', '50', '10-500', 'Olsztyn');
INSERT INTO ADRESY VALUES (21, 'Niska', '4', NULL, '29-093', 'Lublin');
INSERT INTO ADRESY VALUES (22, 'Nadrzeczna', '5', '12', '89-223', 'Katowice');
INSERT INTO ADRESY VALUES (23, 'Makowa', '44', NULL, '82-293', 'Skierniewice');
INSERT INTO ADRESY VALUES (24, 'Polna', '77', '3', '84', 'Pacanów');
INSERT INTO ADRESY VALUES (25, 'Wojska Polskiego', '91', '32', '87-283', 'Gdynia');
INSERT INTO ADRESY VALUES (26, 'Daleka', '542', NULL, '92-038', 'Starachowice');
INSERT INTO ADRESY VALUES (27, 'Wiejska', '13', '8', '30-234', 'Stalowa Wola');
INSERT INTO ADRESY VALUES (28, 'Miejska', '83', NULL, '82-384', 'Lublin');
INSERT INTO ADRESY VALUES (29, 'Karłowicza', '75', '19', '28-304', 'Kraków');
INSERT INTO ADRESY VALUES (30, 'Mała', '1', NULL, '82-203', 'Tarnobrzeg');
INSERT INTO ADRESY VALUES (31, 'Podchorążych', '87', '3', '98-203', 'Warszawa');
INSERT INTO ADRESY VALUES (32, 'Kielecka', '52', NULL, '82-304', 'Ostrowiec Świętokrzyski');
INSERT INTO ADRESY VALUES (33, 'Reymonta', '77', '12', '82-203', 'Suchedniów');
INSERT INTO ADRESY VALUES (34, 'Jaworowa', '12', NULL, '82-034', 'Ostrów Wielkopolski');
INSERT INTO ADRESY VALUES (35, 'Reja', '26', '15', '62-003', 'Wrocław');
INSERT INTO ADRESY VALUES (36, 'Wileńska', '22', NULL, '02-234', 'Kielce');
INSERT INTO ADRESY VALUES (37, 'Żniwna', '114', '82', '92-304', 'Gdynia');
INSERT INTO ADRESY VALUES (38, 'Legnicka', '234', NULL, '12-003', 'Starachowice');
INSERT INTO ADRESY VALUES (39, 'Poleska', '123', NULL, '02-345', 'Warszawa');
INSERT INTO ADRESY VALUES (40, 'Mazurska', '56', '12', '29-203', 'Kielce');


INSERT INTO OSOBY VALUES (1, 'Adam', 'Nowak', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 1);
INSERT INTO OSOBY VALUES (2, 'Joanna', 'Robak', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 2);
INSERT INTO OSOBY VALUES (3, 'Michał', 'Kowalski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 3);
INSERT INTO OSOBY VALUES (4, 'Tomasz', 'Nowakowski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 4);
INSERT INTO OSOBY VALUES (5, 'Aneta', 'Szyba', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 5);
INSERT INTO OSOBY VALUES (6, 'Krzysztof', 'Drewno', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 6);
INSERT INTO OSOBY VALUES (7, 'Katarzyna', 'Mucha', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 7);
INSERT INTO OSOBY VALUES (8, 'Robert', 'Wawrzyn', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 8);
INSERT INTO OSOBY VALUES (9, 'Anna', 'Kowal', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 9);
INSERT INTO OSOBY VALUES (10, 'Bartosz', 'Walczuk', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 10);
INSERT INTO OSOBY VALUES (11, 'Barbara', 'Rabarbar', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 11);
INSERT INTO OSOBY VALUES (12, 'Szymon', 'Szymański', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 12);
INSERT INTO OSOBY VALUES (13, 'Cecylia', 'Gol', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 13);
INSERT INTO OSOBY VALUES (14, 'Jan', 'Krychowiak', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 14);
INSERT INTO OSOBY VALUES (15, 'Kacper', 'Blonski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 15);
INSERT INTO OSOBY VALUES (16, 'Andżelika', 'Kołodziej', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 16);
INSERT INTO OSOBY VALUES (17, 'Bolesław', 'Witkowski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 17);
INSERT INTO OSOBY VALUES (18, 'Dagmara', 'Chmielewska', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 18);
INSERT INTO OSOBY VALUES (19, 'Ryszard', 'Macejewski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 19);
INSERT INTO OSOBY VALUES (20, 'Marzanna', 'Walczak', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 20);
INSERT INTO OSOBY VALUES (21, 'Bruno', 'Rutkowski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 21);
INSERT INTO OSOBY VALUES (22, 'Kaja', 'Bąk', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 22);
INSERT INTO OSOBY VALUES (23, 'Janusz', 'Kaźmerczak', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 23);
INSERT INTO OSOBY VALUES (24, 'Halina', 'Sokołowska', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 24);
INSERT INTO OSOBY VALUES (25, 'Ryszard', 'Cieślak', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 25);
INSERT INTO OSOBY VALUES (26, 'Amir', 'Kucharski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 26);
INSERT INTO OSOBY VALUES (27, 'Anastazy', 'Włodarski', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 27);
INSERT INTO OSOBY VALUES (28, 'Borys', 'Duda', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 28);
INSERT INTO OSOBY VALUES (29, 'Klaudiusz', 'Walczak', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 29);
INSERT INTO OSOBY VALUES (30, 'Miłosz', 'Zawadzki', (SELECT dbms_random.value(10000000000, 99999999999) as "pesel" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), 30);

INSERT INTO BIURO_AGENCJI VALUES (1, 'NieruchoPol', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual));
INSERT INTO BIURO_AGENCJI VALUES (2, 'NieruchoMex', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual));
INSERT INTO BIURO_AGENCJI VALUES (3, 'NieruchomościoPol', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual));
INSERT INTO BIURO_AGENCJI VALUES (4, 'Agencik', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual));
INSERT INTO BIURO_AGENCJI VALUES (5, 'Agentex', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual));
INSERT INTO BIURO_AGENCJI VALUES (6, 'Agentownia', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual));
INSERT INTO BIURO_AGENCJI VALUES (7, 'Hepal', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual));
INSERT INTO BIURO_AGENCJI VALUES (8, 'Greathouse', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual));
INSERT INTO BIURO_AGENCJI VALUES (9, 'Pololocum', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual));
INSERT INTO BIURO_AGENCJI VALUES (10, 'WKDom', (SELECT dbms_random.value(1990, 2021) as "rok" from dual), (SELECT dbms_random.value(100000000, 999999999) as "numer" from dual), (SELECT dbms_random.value(1000000000, 9999999999) as "nip" from dual));


INSERT INTO ROLE VALUES (1, 'Konsultant telefoniczny');
INSERT INTO ROLE VALUES (2, 'Doradca nieruchomości');
INSERT INTO ROLE VALUES (3, 'Kierownik działu');
INSERT INTO ROLE VALUES (4, 'Informatyk');
INSERT INTO ROLE VALUES (5, 'Administrator danych');
INSERT INTO ROLE VALUES (6, 'Przedstawiciel biura');
INSERT INTO ROLE VALUES (7, 'Negocjator');
INSERT INTO ROLE VALUES (8, 'Przezes biura');
INSERT INTO ROLE VALUES (9, 'Specjalista ds. nieruchomości');
INSERT INTO ROLE VALUES (10, 'Agent nieruchomości');
INSERT INTO ROLE VALUES (11, 'Recepcjonista');
INSERT INTO ROLE VALUES (12, 'Sekretarka');
INSERT INTO ROLE VALUES (13, 'Młodszy specjalista');
INSERT INTO ROLE VALUES (14, 'Handlowiec');
INSERT INTO ROLE VALUES (15, 'Doradca klienta');

INSERT INTO PRACOWNICY_AGENCJI VALUES (1, 1, 1, 10, (SELECT dbms_random.value(1, 15) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (2, 2, 1, 10, (SELECT dbms_random.value(1, 15) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (3, 3, 2, 3, (SELECT dbms_random.value(1, 15) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (4, 4, 2, 4, (SELECT dbms_random.value(1, 15) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (5, 5, 3, 5, (SELECT dbms_random.value(1, 15) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (6, 6, 3, 6, (SELECT dbms_random.value(1, 15) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (7, 7, 4, 7, (SELECT dbms_random.value(1, 15) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (8, 8, 9, 15, (SELECT dbms_random.value(1, 15) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (9, 9, 5, 9, (SELECT dbms_random.value(1, 15) as "staz" from dual));
INSERT INTO PRACOWNICY_AGENCJI VALUES (10, 10, 7, 10, (SELECT dbms_random.value(1, 15) as "staz" from dual));

INSERT INTO USLUGI VALUES (1, 'Sprzedaż mieszkania', '2500');
INSERT INTO USLUGI VALUES (2, 'Sprzedaż działki', '3000');
INSERT INTO USLUGI VALUES (3, 'Sprzedaż domu', '4000');
INSERT INTO USLUGI VALUES (4, 'Sprzedaż nieruchomości komercyjnej', '5500');
INSERT INTO USLUGI VALUES (5, 'Wynajem mieszkania', '600');
INSERT INTO USLUGI VALUES (6, 'Wynajem domu', '900');
INSERT INTO USLUGI VALUES (7, 'Wynajem działki', '800');
INSERT INTO USLUGI VALUES (8, 'Wynajem nieruchomości komercyjnej', '1200');
INSERT INTO USLUGI VALUES (9, 'Porada udzielana w siedzibie biura', '100');
INSERT INTO USLUGI VALUES (10, 'Porada udzielana telefonicznie', '55');
INSERT INTO USLUGI VALUES (11, 'Weryfikacja dokumentacji własnościowej', '200');
INSERT INTO USLUGI VALUES (12, 'Wycena nieruchomości komercyjnej', '800');
INSERT INTO USLUGI VALUES (13, 'Wycena działki', '600');
INSERT INTO USLUGI VALUES (14, 'Wycena mieszkania', '500');
INSERT INTO USLUGI VALUES (15, 'Wycena domu', '700');

INSERT INTO TYPY_NIERUCHOMOSCI VALUES (1, 'Blok');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (2, 'Apartamentowiec');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (3, 'Kamienica');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (4, 'Mieszkanie');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (5, 'Dom wolnostojący');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (6, 'Zabudowa bliźniacza');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (7, 'Zabudowa grupowa');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (8, 'Wieżowiec');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (9, 'Galeriowiec');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (10, 'Zabudowa szeregowa');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (11, 'Działka rolna');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (12, 'Działka rekreacyna');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (13, 'Działka leśna');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (14, 'Działka inwestycyjna');
INSERT INTO TYPY_NIERUCHOMOSCI VALUES (15, 'Nieruchomość komercyjna');

INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (1, 11);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (2, 12);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (3, 13);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (4, 14);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (5, 15);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (6, 16);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (7, 17);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (8, 18);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (9, 19);
INSERT INTO WLASCICIEL_NIERUCHOMOSCI VALUES (10, 20);

INSERT INTO DANE_NIERUCHOMOSCI VALUES (1, 1, 10, 31, 1500, 10);
INSERT INTO DANE_NIERUCHOMOSCI VALUES (2, 5, 8, 32, 100, 3);
INSERT INTO DANE_NIERUCHOMOSCI VALUES (3, 3, 9, 33, 1200, 5);
INSERT INTO DANE_NIERUCHOMOSCI VALUES (4, 4, 1, 34, 100, NULL);
INSERT INTO DANE_NIERUCHOMOSCI VALUES (5, 4, 7, 35, 200, NULL);
INSERT INTO DANE_NIERUCHOMOSCI VALUES (6, 7, 1, 36, 415, 3);
INSERT INTO DANE_NIERUCHOMOSCI VALUES (7, 8, 2, 37, 500, 2);
INSERT INTO DANE_NIERUCHOMOSCI VALUES (8, 9, 3, 38, 2000, 4);
INSERT INTO DANE_NIERUCHOMOSCI VALUES (9, 10, 4, 39, 130, 2);
INSERT INTO DANE_NIERUCHOMOSCI VALUES (10, 15, 5, 34, 500, 3);


INSERT INTO OFERTA_AGENCJI VALUES (1, 1, 5, 4);
INSERT INTO OFERTA_AGENCJI VALUES (2, 5, 5, 3);
INSERT INTO OFERTA_AGENCJI VALUES (3, 4, 5, 2);
INSERT INTO OFERTA_AGENCJI VALUES (4, 2, 5, 1);
INSERT INTO OFERTA_AGENCJI VALUES (5, 2, 5, 9);
INSERT INTO OFERTA_AGENCJI VALUES (6, 1, 1, 5);
INSERT INTO OFERTA_AGENCJI VALUES (7, 3, 4, 8);
INSERT INTO OFERTA_AGENCJI VALUES (8, 9, 9, NULL);
INSERT INTO OFERTA_AGENCJI VALUES (9, 3, 5, 9);
INSERT INTO OFERTA_AGENCJI VALUES (10, 7, 10, NULL);

INSERT INTO KLIENT_AGENCJI VALUES (1, 21);
INSERT INTO KLIENT_AGENCJI VALUES (2, 22);
INSERT INTO KLIENT_AGENCJI VALUES (3, 23);
INSERT INTO KLIENT_AGENCJI VALUES (4, 24);
INSERT INTO KLIENT_AGENCJI VALUES (5, 25);
INSERT INTO KLIENT_AGENCJI VALUES (6, 26);
INSERT INTO KLIENT_AGENCJI VALUES (7, 27);
INSERT INTO KLIENT_AGENCJI VALUES (8, 28);
INSERT INTO KLIENT_AGENCJI VALUES (9, 29);
INSERT INTO KLIENT_AGENCJI VALUES (10,30);

INSERT INTO TRANSAKCJE VALUES (1, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual), 1, 10, 5);
INSERT INTO TRANSAKCJE VALUES (2, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual), 2, 9, 4);
INSERT INTO TRANSAKCJE VALUES (3, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual), 4, 8, 3);
INSERT INTO TRANSAKCJE VALUES (4, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual), 3, 7, 2);
INSERT INTO TRANSAKCJE VALUE  (5, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual), 6, 1, 1);
INSERT INTO TRANSAKCJE VALUE  (6, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual), 6, 2, 1);
INSERT INTO TRANSAKCJE VALUE  (7, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual), 1, 6, 1);
INSERT INTO TRANSAKCJE VALUE  (8, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual), 1, 6, 1);
INSERT INTO TRANSAKCJE VALUE  (9, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual), 1, 8, 9);
INSERT INTO TRANSAKCJE VALUE  (10, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual),9, 5, 7);
INSERT INTO TRANSAKCJE VALUE  (11, (SELECT sysdate - round(dbms_random.value(1,21)) as "data" from dual),10, 10, 6);
