PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS "Booking";
DROP TABLE IF EXISTS "Gruppetime";
DROP TABLE IF EXISTS "Fasilitet2Senter";
DROP TABLE IF EXISTS "Aktivitetstype2Sal";
DROP TABLE IF EXISTS "Idrettslag2Bruker";
DROP TABLE IF EXISTS "Prikk";
DROP TABLE IF EXISTS "Reservasjon";
DROP TABLE IF EXISTS "Sykkel";
DROP TABLE IF EXISTS "Tredemolle";
DROP TABLE IF EXISTS "Sal";
DROP TABLE IF EXISTS "Aapningstider";
DROP TABLE IF EXISTS "BemannetPeriode";
DROP TABLE IF EXISTS "Portscan";
DROP TABLE IF EXISTS "Instruktor";
DROP TABLE IF EXISTS "Aktivitetstype";
DROP TABLE IF EXISTS "Fasilitet";
DROP TABLE IF EXISTS "Idrettslag";
DROP TABLE IF EXISTS "Bruker";
DROP TABLE IF EXISTS "Senter";


CREATE TABLE "Senter" (
    SenterID char(5) NOT NULL,
    Navn varchar(20) NOT NULL,
    Adresse varchar(50) NOT NULL,
    PRIMARY KEY (SenterID)
);

CREATE TABLE "Aapningstider" (
    Ukedag varchar(20) NOT NULL,
    Fra TIME NOT NULL,
    Til TIME NOT NULL,
    SenterID char(5) NOT NULL,
    PRIMARY KEY (SenterID, Ukedag),
    FOREIGN KEY (SenterID) REFERENCES "Senter"(SenterID),
    CHECK(Til > Fra)
    CHECK(Ukedag IN ("Mandag", "Tirsdag", "Onsdag", "Torsdag", "Fredag", "Lordag", "Sondag"))
);


CREATE TABLE "Aktivitetstype" (
    AktivitetstypeID char(5) NOT NULL,
    Navn varchar(50) NOT NULL,
    Beskrivelse varchar(300) NOT NULL,
    PRIMARY KEY (AktivitetstypeID)
);


CREATE TABLE "Bruker" (
    BrukerID char(5) NOT NULL,
    Fornavn varchar(20) NOT NULL,
    Etternavn varchar(20) NOT NULL,
    Epost varchar(50) NOT NULL,
    Mobil varchar(8) NOT NULL,
    UtestengtTil DATETIME,
    PRIMARY KEY(BrukerID),
    UNIQUE (Epost),
    UNIQUE (Mobil),
    CHECK (length(Mobil) = 8)
);

CREATE TABLE "Fasilitet" (
    FasilitetID char(5) NOT NULL,
    Navn varchar(50) NOT NULL,
    PRIMARY KEY (FasilitetID)
);

CREATE TABLE "Idrettslag" (
    IdrettslagID char(5) NOT NULL,
    Navn varchar(20) NOT NULL,
    PRIMARY KEY(IdrettslagID) );

CREATE TABLE "Instruktor"(
    InstruktorID char(5) NOT NULL,
    Fornavn varchar(20) NOT NULL,
    Etternavn varchar(20) NOT NULL,
    Epost varchar(50) NOT NULL,
    Mobil varchar(8) NOT NULL,
    PRIMARY KEY(InstruktorID),
    UNIQUE (Epost),
    UNIQUE (Mobil),
    CHECK (length(Mobil) = 8)
);


CREATE TABLE "Sal" (
    SalID char(5) NOT NULL,
    Navn varchar(20) NOT NULL,
    Plasser INT NOT NULL,
    SenterID char(5) NOT NULL,
    PRIMARY KEY (SalID),
    FOREIGN KEY (SenterID) REFERENCES "Senter"(SenterID),
    CHECK(Plasser >=0)
);

CREATE TABLE "Sykkel" (
    SykkelNr char(5) NOT NULL,
    HarBluetooth BOOLEAN NOT NULL,
    SalID char(5) NOT NULL,
    PRIMARY KEY(SykkelNr, SalID),
    FOREIGN KEY (SalID) REFERENCES "Sal"(SalID),
    CHECK (HarBluetooth IN (0,1))
);


CREATE TABLE "Tredemolle" (
    TredemolleNr char(5) NOT NULL,
    SalID char(5) NOT NULL,
    Produsent varchar(50) NOT NULL,
    MaksHastighet INT NOT NULL,
    MaksStigning INT NOT NULL,
    PRIMARY KEY(TredemolleNr,SalID),
    FOREIGN KEY (SalID) REFERENCES "Sal"(SalID),
    CHECK(MaksHastighet > 0),
    CHECK(MaksStigning >= 0)
);


CREATE TABLE "Aktivitetstype2Sal" (
    SalID char(5) NOT NULL,
    AktivitetstypeID char(5) NOT NULL,
    PRIMARY KEY(SalID, AktivitetstypeID),
    FOREIGN KEY(AktivitetstypeID) REFERENCES "Aktivitetstype"(AktivitetstypeID),
    FOREIGN KEY(SalID) REFERENCES "Sal"(SalID)
);


CREATE TABLE "BemannetPeriode" (
    Ukedag varchar(20) NOT NULL,
    Fra TIME NOT NULL,
    Til TIME NOT NULL,
    SenterID char(5) NOT NULL,
    PRIMARY KEY (SenterID, Ukedag, Fra),
    FOREIGN KEY (SenterID) REFERENCES "Senter"(SenterID),
    CHECK(Til > Fra)
    CHECK(Ukedag IN ("Mandag", "Tirsdag", "Onsdag", "Torsdag", "Fredag", "Lordag", "Sondag"))
);


CREATE TABLE "Fasilitet2Senter" (
    FasilitetID char(5) NOT NULL,
    SenterID char(5) NOT NULL,
    PRIMARY KEY(FasilitetID,SenterID),
    FOREIGN KEY(FasilitetID) REFERENCES "Fasilitet"(FasilitetID),
    FOREIGN KEY(SenterID) REFERENCES "Senter"(SenterID)
);


CREATE TABLE "Gruppetime" (
    GruppetimeID char(5) NOT NULL,
    StartTid DATETIME NOT NULL,
    SluttTid DATETIME NOT NULL,
    PublisertTid DATETIME NOT NULL,
    InstruktorID char(5) NOT NULL,
    IdrettslagID char(5),
    AktivitetstypeID char(5) NOT NULL,
    SalID char(5) NOT NULL,
    PRIMARY KEY (GruppetimeID),
    FOREIGN KEY (InstruktorID) REFERENCES "Instruktor"(InstruktorID),
    FOREIGN KEY (IdrettslagID) REFERENCES "Idrettslag"(IdrettslagID),
    FOREIGN KEY (AktivitetstypeID) REFERENCES "Aktivitetstype"(AktivitetstypeID),
    FOREIGN KEY (SalID) REFERENCES "Sal"(SalID),
    CHECK (SluttTid > StartTid)
);


CREATE TABLE "Idrettslag2Bruker" (
    IdrettslagID char(5) NOT NULL,
    BrukerID char(5) NOT NULL,
    PRIMARY KEY(IdrettslagID, BrukerID),
    FOREIGN KEY(IdrettslagID) REFERENCES "Idrettslag"(IdrettslagID),
    FOREIGN KEY(BrukerID) REFERENCES "Bruker"(BrukerID)
);

CREATE TABLE "Portscan"(
    PortscanID char(5) NOT NULL,
    Tid DATETIME NOT NULL,
    BrukerID char(5) NOT NULL,
    SenterID char(5) NOT NULL,
    PRIMARY KEY(PortscanID),
    FOREIGN KEY (BrukerID) REFERENCES "Bruker"(BrukerID),
    FOREIGN KEY (SenterID) REFERENCES "Senter"(SenterID)
);


CREATE TABLE "Prikk" (
    PrikkID char(5) NOT NULL,
    Tid DATETIME NOT NULL,
    BrukerID char(5) NOT NULL,
    PRIMARY KEY(PrikkID),
    FOREIGN KEY (BrukerID) REFERENCES "Bruker"(BrukerID)
);


CREATE TABLE "Booking" (
    BookingID char(5) NOT NULL,
    BrukerID char(5) NOT NULL,
    GruppetimeID char(5) NOT NULL,
    Status varchar(20) NOT NULL,
    OppmoteTid DATETIME,
    PRIMARY KEY (BookingID),
    FOREIGN KEY (BrukerID) REFERENCES "Bruker"(BrukerID),
    FOREIGN KEY (GruppetimeID) REFERENCES "Gruppetime"(GruppetimeID),
    UNIQUE(BrukerID, GruppetimeID),
    CHECK (Status IN ('BOOKET', 'AVBESTILT', 'MOTTATT'))
);


CREATE TABLE "Reservasjon"(
    ReservasjonsID char(5) NOT NULL,
    IdrettslagID char(5) NOT NULL,
    SalID char(5) NOT NULL,
    Ukedag varchar(20) NOT NULL,
    Fra TIME NOT NULL,
    Til TIME NOT NULL,
    PRIMARY KEY(ReservasjonsID),
    FOREIGN KEY(IdrettslagID) REFERENCES "Idrettslag"(IdrettslagID),
    FOREIGN KEY(SalID) REFERENCES "Sal"(SalID),
    CHECK (Til > Fra)
    CHECK(Ukedag IN ("Mandag", "Tirsdag", "Onsdag", "Torsdag", "Fredag", "Lordag", "Sondag"))
);