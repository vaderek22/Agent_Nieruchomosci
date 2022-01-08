CREATE TABLE ADRESY (
    adres_id		   NUMBER(6) CONSTRAINT adresy_pk PRIMARY KEY,
    ulica                  VARCHAR2(30),
    nr_budynku             NUMBER(4),
    nr_mieszkania          NUMBER(4),
    kod_pocztowy           VARCHAR2(6),
    miasto                 VARCHAR2(30)
);

CREATE TABLE OSOBY (
    osoba_id             NUMBER(6) CONSTRAINT osoby_pk PRIMARY KEY,
    imie                 VARCHAR2(30),
    nazwisko             VARCHAR2(30),
    PESEL		 NUMBER(11),
    telefon              NUMBER(9),
    adres_id             NUMBER(6) NOT NULL,
    CONSTRAINT os_adresy_fk FOREIGN KEY (adres_id) REFERENCES ADRESY(adres_id),
    UNIQUE(telefon),
    UNIQUE(PESEL)
);

CREATE TABLE BIURO_AGENCJI (
    biuro_id			   NUMBER(6) CONSTRAINT biuro_agencji_pk PRIMARY KEY,
    biuro_nazwa			   VARCHAR2(30),
    rok_zalozenia 		   NUMBER(4),
    telefon			   NUMBER(9),
    NIP				   NUMBER(10),
    adres_id 			   NUMBER(6) NOT NULL,
    CONSTRAINT ba_adresy_fk FOREIGN KEY (adres_id) REFERENCES ADRESY(adres_id),
    UNIQUE(NIP),
    UNIQUE(telefon)	
 );

CREATE TABLE ROLE (
    rola_id            NUMBER(6) CONSTRAINT role_pk PRIMARY KEY,
    nazwa_roli         VARCHAR2(30),
    opis               VARCHAR2(50) 
);

CREATE TABLE PRACOWNICY_AGENCJI (
    pracownik_id          NUMBER(6) CONSTRAINT pracownicy_agencji_pk PRIMARY KEY,
    osoba_id     	  NUMBER(6) NOT NULL,
    biuro_id              NUMBER(6) NOT NULL,
    rola_id               NUMBER(6) NOT NULL,
    staz                  NUMBER(4),
    CONSTRAINT pa_osoby_fk FOREIGN KEY (osoba_id) REFERENCES OSOBY(osoba_id),
    CONSTRAINT pa_biuro_agencji_fk FOREIGN KEY (biuro_id) REFERENCES BIURO_AGENCJI(biuro_id),
    CONSTRAINT pa_role_fk FOREIGN KEY (rola_id) REFERENCES ROLE(rola_id)
);

CREATE TABLE USLUGI (
    usluga_id            NUMBER(6) CONSTRAINT uslugi_pk PRIMARY KEY,
    nazwa_uslugi         VARCHAR2(30),
    cena_uslugi          NUMBER(6)
);

CREATE TABLE TYPY_NIERUCHOMOSCI (
    typy_nieruchomosci_id 	NUMBER(6) CONSTRAINT typy_nieruchomosci_pk PRIMARY KEY,
    nazwa_typu        		VARCHAR2(30)
);

CREATE TABLE WLASCICIEL_NIERUCHOMOSCI (
    wlasciciel_id          NUMBER(6) CONSTRAINT wlasciciel_nieruchomosci_pk PRIMARY KEY,
    osoba_id     	   NUMBER(6) NOT NULL,
    CONSTRAINT wn_osoby_fk FOREIGN KEY (osoba_id) REFERENCES OSOBY(osoba_id)
);

CREATE TABLE DANE_NIERUCHOMOSCI (
    dane_nieruchomosci_id          		NUMBER(6) CONSTRAINT dane_nieruchomosci_pk PRIMARY KEY,
    typy_nieruchomosci_id  			NUMBER(6) NOT NULL,
    wlasciciel_id   				NUMBER(6) NOT NULL,
    adres_id				        NUMBER(6) NOT NULL,
    metraz			                VARCHAR2(30),
    ilosc_pieter 				NUMBER(3),
    CONSTRAINT dn_typy_nieruchomosci_fk FOREIGN KEY (typy_nieruchomosci_id) REFERENCES TYPY_NIERUCHOMOSCI(typy_nieruchomosci_id),
    CONSTRAINT dn_wlasciciel_nieruchomosci_fk FOREIGN KEY (wlasciciel_id) REFERENCES WLASCICIEL_NIERUCHOMOSCI(wlasciciel_id),
    CONSTRAINT dn_adresy_fk FOREIGN KEY (adres_id) REFERENCES ADRESY(adres_id)
);

CREATE TABLE OFERTA_AGENCJI (
    oferta_id          		NUMBER(6) CONSTRAINT oferta_agencji_pk PRIMARY KEY,
    biuro_id     		NUMBER(6) NOT NULL,
    usluga_id                   NUMBER(6) NOT NULL,
    dane_nieruchomosci_id	NUMBER(6) NOT NULL,
    CONSTRAINT oa_biuro_fk FOREIGN KEY (biuro_id) REFERENCES BIURO_AGENCJI(biuro_id),
    CONSTRAINT oa_uslugi_fk FOREIGN KEY (usluga_id) REFERENCES USLUGI(usluga_id),
    CONSTRAINT oa_dane_nieruchomosci_fk FOREIGN KEY (dane_nieruchomosci_id) REFERENCES DANE_NIERUCHOMOSCI(dane_nieruchomosci_id)
);

CREATE TABLE KLIENT_AGENCJI (
    klient_id          		NUMBER(6) CONSTRAINT klient_agencji_pk PRIMARY KEY,
    osoba_id     		NUMBER(6) NOT NULL,
    CONSTRAINT ka_osoby_fk FOREIGN KEY (osoba_id) REFERENCES OSOBY(osoba_id)
);

CREATE TABLE TRANSAKCJE (
    transakcja_id          		NUMBER(6) CONSTRAINT transakcje_pk PRIMARY KEY,
    data_transakcji 			DATE,
    oferta_id   		        NUMBER(6) NOT NULL,
    pracownik_id			NUMBER(6) NOT NULL,
    klient_id			        NUMBER(6) NOT NULL,
    CONSTRAINT tr_oferta_agencji_fk FOREIGN KEY (oferta_id) REFERENCES OFERTA_AGENCJI(oferta_id),
    CONSTRAINT tr_pracownicy_agencji_fk FOREIGN KEY (pracownik_id) REFERENCES PRACOWNICY_AGENCJI(pracownik_id),
    CONSTRAINT tr_klient_agencji_fk FOREIGN KEY (klient_id) REFERENCES KLIENT_AGENCJI(klient_id)
);