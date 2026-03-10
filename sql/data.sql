INSERT INTO "Senter" (SenterID, Navn, Adresse) VALUES
('S0001', 'Oya', 'Vanglundsgate 2'),
('S0002', 'Dragvoll', 'Loholt alle 81');


INSERT INTO "Aapningstider" (SenterID, Ukedag,Fra,Til) VALUES
('S0001', 'Mandag', '05:00:00', '23:59:59'),
('S0001', 'Tirsdag', '05:00:00', '23:59:59'),
('S0001', 'Onsdag', '05:00:00', '23:59:59'),
('S0001', 'Torsdag', '05:00:00', '23:59:59'),
('S0001', 'Fredag', '05:00:00', '23:59:59'),
('S0001', 'Lordag', '05:00:00', '23:59:59'),
('S0001', 'Sondag', '05:00:00', '23:59:59'),
('S0002', 'Mandag', '05:00:00', '23:59:59'),
('S0002', 'Tirsdag', '05:00:00', '23:59:59'),
('S0002', 'Onsdag', '05:00:00', '23:59:59'),
('S0002', 'Torsdag', '05:00:00', '23:59:59'),
('S0002', 'Fredag', '05:00:00', '23:59:59'),
('S0002', 'Lordag', '05:00:00', '23:59:59'),
('S0002', 'Sondag', '05:00:00', '23:59:59');


INSERT INTO "Aktivitetstype" (AktivitetstypeID, navn, Beskrivelse) VALUES 
('A0001', 'Spinning', 'Spin4x4'),
('A0002', 'Spinning', 'Spin8x3'),
('A0003', 'Spinning', 'Spinning45'),
('A0004', 'Spinning', 'Spinning60');


INSERT INTO "Bruker" (BrukerID, Fornavn, Etternavn, Epost, Mobil) VALUES
('B2001', 'Michael', 'Jordan', 'jumpman23@ntnu.no', '91234569'),
('B2002', 'LeBron', 'James', 'kingjames@ntnu.no', '92345678'),
('B2003', 'Kobe', 'Bryant', '1morethanshaq@ntnu.no', '93456789'),
('B2004', 'Shaquille', 'ONeal', 'diesel@ntnu.no', '94567890'),
('B2005', 'Magic', 'Johnson', 'magic@ntnu.no', '95678901'),
('B2006', 'Larry', 'Bird', 'bird33@ntnu.no', '96789012'),
('B2007', 'Kareem', 'AbdulJabbar', 'kareem@ntnu.no', '97890123'),
('B2008', 'Stephen', 'Curry', 'chef@ntnu.no', '98901234'),
('B2009', 'Tim', 'Duncan', 'fundamental@ntnu.no', '90123456'),
('B2010', 'Kevin', 'Durant', 'KD7@ntnu.no', '91357924'),
('B2011','Johnny', 'Bravo', 'WhoaMama@ntnu.no','91357926');

INSERT INTO "Fasilitet" (FasilitetID, navn) VALUES
('F0001', 'Egentrening'),
('F0003', 'Spinning'),
('F0005', 'Yoga'),
('F0006', 'Squash'),
('F0008', 'Hall'),
('F0009', 'Garderobe'),
('F0010', 'Badstue'),
('F0011', 'Dusj'),
('F0012', 'Bemannet resepsjon');


INSERT INTO "Idrettslag"(IdrettslagID, Navn) VALUES
('L0004','NTNUI Fotball'),
('L0005','NTNUI Haandball'),
('L0006','NTNUI Friidrett'),
('L0007','NTNUI Langrenn'),
('L0008','NTNUI Orientering'),
('L0009','NTNUI Svomming'),
('L0010','NTNUI Basketball'),
('L0011','NTNUI Innebandy'),
('L0012','NTNUI Klatring'),
('L0013','NTNUI Triatlon'),
('L0014','NTNUI Calisthenics'),
('L0015','NTNUI Roing'),
('L0016','NTNUI Rumpeldunk'),
('L0017','NTNUI Squash'),
('L0018','NTNUI Tennis'),
('L0019','NTNUI Badminton'),
('L0020','NTNUI Lommetennis');

INSERT INTO "Instruktor" (InstruktorID,Fornavn,Etternavn,Epost,Mobil) VALUES
('00007', 'Christiano', 'Ronaldo', 'RonaldoCR7@NTNU.no', '91234567'),
('00008', 'Toni', 'Kroos', 'ToniKroos@NTNU.no', '92345678'),
('00010', 'Kylian', 'Mbappe', 'Mbappe@NTNU.no', '93456789'),
('00011', 'Gareth', 'Bale', 'GarethWales@NTNU.no', '94567890'),
('00013', 'Ngolo', 'Kante', 'Kante@NTNU.no', '95678901'),
('00005', 'Magnus', 'Hetland', 'ILOVEALGDAT@NTNU.NO', '91851999'),
('00080','Eirin','Hansen','Eirin.hansen@NTNU.no','91851980'),
('00081','Jorunn','perti','Jorunn.perti@NTNU.no','91851981'),
('00082','Ramona','Relislava','Ramona.relislava.hansen@NTNU.no','91851982'),
('00083','Trine','Pettersen','Trine.pettersen@NTNU.no','91851983'),
('00084','Nora','Brattsberg','Nora.Brattsberg@NTNU.no','91851984'),
('00085','Haakon','Walle','Haakon.walle@NTNU.no','91851985'),
('00086','Hanne','Jandre','Hanne.jandre@NTNU.no','91851986'),
('00087','Amalie','Mortensrud','Amalie.mortensrud@NTNU.no','91851987'),
('00088','Kaja','Spetalen','Kaja.spetalen@NTNU.no','91851988'),
('00089','Sindre','Sannes','Sindre.sannes@NTNU.no','91851989');

INSERT INTO "Sal" (SALID, navn, plasser, SenterID) VALUES
('SAL1','SpinningSal',11,'S0002'),
('SAL2','YogaSal', 30 ,'S0002'),
('SAL3','GruppetreningSal',25,'S0002'),
('SAL4','StyrkeSal',20,'S0002'),
('SAL5','KlatreSal',15,'S0002'),
('SAL6','CrossfitSal',18,'S0002'),
('SAL10','Sykkelsal',38,'S0001'),
('SAL11','Gruppesal',30,'S0001'),
('SAL12','YogaSal',32,'S0002'),
('SAL13','FlerbruksSal1',15,'S0002'),
('SAL14','HIIT-Sal',26,'S0002'),
('SAL15','Functional fitness',16,'S0002'),
('SAL16','PT-rom',5,'S0002');


INSERT INTO "Sykkel" (SykkelNr, HarBluetooth, SalID) VALUES --ikke lagt inn for øya
--Sykler Dragvoll
('SYK1','1','SAL1'),
('SYK2','1','SAL1'),
('SYK3','1','SAL1'),
('SYK4','1','SAL1'),
('SYK5','1','SAL1'),
('SYK6','1','SAL1'),
('SYK7','1','SAL1'),
('SYK8','1','SAL1'),
('SYK9','1','SAL1'),
('SYK10','1','SAL1'),
('SYK11','1','SAL1'),
('SYK101','1','SAL10'),
('SYK102','1','SAL10'),
('SYK103','1','SAL10'),
('SYK104','1','SAL10'),
('SYK105','1','SAL10'),
('SYK106','1','SAL10'),
('SYK107','1','SAL10'),
('SYK108','1','SAL10'),
('SYK109','1','SAL10'),
('SYK110','1','SAL10'),
('SYK111','1','SAL10'),
('SYK112','1','SAL10'),
('SYK113','1','SAL10'),
('SYK114','1','SAL10'),
('SYK115','1','SAL10'),
('SYK116','1','SAL10'),
('SYK117','1','SAL10'),
('SYK118','1','SAL10'),
('SYK119','1','SAL10'),
('SYK120','1','SAL10'),
('SYK121','1','SAL10'),
('SYK122','1','SAL10'),
('SYK123','1','SAL10'),
('SYK124','1','SAL10'),
('SYK125','1','SAL10'),
('SYK126','1','SAL10'),
('SYK127','1','SAL10'),
('SYK128','1','SAL10'),
('SYK129','1','SAL10'),
('SYK130','1','SAL10'),
('SYK131','1','SAL10'),
('SYK132','1','SAL10'),
('SYK133','1','SAL10'),
('SYK134','1','SAL10'),
('SYK135','1','SAL10'),
('SYK136','1','SAL10'),
('SYK137','1','SAL10'),
('SYK138','1','SAL10');


INSERT INTO "Aktivitetstype2Sal" (SalID, AktivitetstypeID) VALUES
('SAL1','A0003'),
('SAL10','A0001'),
('SAL10','A0003'),
('SAL10','A0002'),
('SAL10','A0004');


INSERT INTO "BemannetPeriode" (SenterID, Ukedag, Fra, Til) VALUES
('S0002', 'Mandag', '08:00:00', '12:00:00'),
('S0002', 'Mandag', '15:00:00', '22:00:00'),
('S0002', 'Tirsdag', '15:00:00', '22:00:00'),
('S0002', 'Onsdag', '05:00:00', '12:00:00'),
('S0002', 'Onsdag', '15:00:00', '22:00:00'),
('S0002', 'Torsdag', '15:00:00', '22:00:00'),
('S0002', 'Fredag', '08:00:00', '12:00:00'),
('S0002', 'Fredag', '15:00:00', '22:00:00'),
('S0002', 'Lordag', '09:00:00', '20:00:00'),
('S0002', 'Sondag', '09:00:00', '20:00:00');
--Oya er aldri bemannet.

INSERT INTO "Gruppetime" (GruppetimeID, StartTid, SluttTid, PublisertTid, InstruktorID, IdrettslagID, AktivitetstypeID, SalID) VALUES
('G0001', '2026-03-05 16:30:00', '2026-03-05 17:15:00', '2026-03-03 16:30:00', '00007', 'L0014', 'A0001', 'SAL1'),
('G0002', '2026-03-16 07:30:00', '2026-03-16 07:45:00', '2026-03-14 07:30:00', '00080', 'L0009', 'A0001', 'SAL10'),
('G0003', '2026-03-16 16:30:00', '2026-03-16 17:15:00', '2026-03-14 16:30:00', '00081', 'L0014', 'A0003', 'SAL10'),
('G0004', '2026-03-16 17:40:00', '2026-03-16 18:35:00', '2026-03-14 17:40:00', '00082', 'L0014', 'A0002', 'SAL10'),
('G0005', '2026-03-16 19:00:00', '2026-03-16 20:00:00', '2026-03-14 19:00:00', '00083', 'L0014', 'A0004', 'SAL10'),
('G0006', '2026-03-16 07:00:00', '2026-03-16 07:55:00', '2026-03-14 07:00:00', '00084', 'L0010', 'A0002', 'SAL10'),
('G0007', '2026-03-16 18:30:00', '2026-03-16 19:30:00', '2026-03-14 18:30:00', '00085', 'L0010', 'A0004', 'SAL10'),
('G0008', '2026-03-16 19:45:00', '2026-03-16 20:30:00', '2026-03-14 19:45:00', '00086', 'L0010', 'A0004', 'SAL10'),
('G0009', '2026-03-16 16:15:00', '2026-03-16 17:15:00', '2026-03-14 16:15:00', '00084', 'L0012', 'A0004', 'SAL10'),
('G0010', '2026-03-16 17:30:00', '2026-03-16 18:15:00', '2026-03-14 17:30:00', '00089', 'L0012', 'A0001', 'SAL10'),
('G0011', '2026-03-16 18:30:00', '2026-03-16 19:15:00', '2026-03-14 18:30:00', '00088', 'L0012', 'A0003', 'SAL10'),
('G0012', '2026-03-16 19:30:00', '2026-03-16 20:25:00', '2026-03-14 19:30:00', '00087', 'L0012', 'A0002', 'SAL10');

INSERT INTO "Booking" (BookingID, BrukerID, GruppetimeID, Status, OppmoteTid) VALUES
('BK001', 'B2001', 'G0001', 'MOTTATT', '2026-03-05 16:30:00'),
('BK002', 'B2002', 'G0001', 'MOTTATT', '2026-03-05 16:30:00');


INSERT INTO "Idrettslag2Bruker" (IdrettslagID, BrukerID) VALUES
('L0004', 'B2011'),
('L0015', 'B2002'),
('L0010', 'B2003');

INSERT INTO "Reservasjon" (ReservasjonsID, IdrettslagID, SalID, Ukedag, Fra, Til) VALUES
('R0001', 'L0014', 'SAL3', 'Mandag', '2026-03-02 18:00:00', '2026-03-02 20:00:00');


-------------------------------------------------------------------------------------
--Usecase 2
INSERT INTO Booking (BookingID, BrukerID, GruppetimeID, Status, OppmoteTid)
SELECT :bookingid, u.BrukerID, g.GruppetimeID, :status, NULL
FROM Gruppetime AS g
JOIN Aktivitetstype AS a 
    ON a.AktivitetstypeID = g.AktivitetstypeID
JOIN Bruker AS u 
    ON u.Epost = :epost
JOIN Sal AS sal 
    ON sal.SalID = g.SalID
JOIN Senter AS s 
    ON s.SenterID = sal.SenterID
WHERE a.Beskrivelse = :aktivitetstype 
    AND g.StartTid = :starttid
    AND s.Navn IN ('Oya', 'DRAGVOLL');
--------------------------------------------------------------------------------------
--Usecase 3
UPDATE Booking
SET OppmoteTid = CURRENT_TIMESTAMP,
    Status = 'MOTTATT'
WHERE BrukerID = (
    SELECT u.BrukerID
    FROM Bruker AS u
    WHERE u.Epost = :epost
)
AND GruppetimeID = (
    SELECT g.GruppetimeID
    FROM Gruppetime AS g
    JOIN Aktivitetstype AS a
        ON a.AktivitetstypeID = g.AktivitetstypeID
    JOIN Sal AS sal
        ON sal.SalID = g.SalID
    JOIN Senter AS s
        ON s.SenterID = sal.SenterID
    WHERE a.Beskrivelse = :aktivitetstype
      AND g.StartTid = :starttid
      AND s.Navn IN ('Oya', 'DRAGVOLL')
);
    --------------------------------------------------------------------------------------
--Usecase 4 
SELECT DISTINCT g.StartTid, g.SluttTid, s.Navn AS Senter, sal.Navn AS Sal, a.Beskrivelse AS Aktivitet, i.Fornavn AS Instruktor
FROM Gruppetime AS g 
JOIN Aktivitetstype AS a 
    ON g.AktivitetstypeID = a.AktivitetstypeID
JOIN Sal AS sal 
    ON sal.SalID = g.SalID
JOIN Senter AS s 
    ON s.SenterID = sal.SenterID
JOIN Instruktor AS i 
    ON i.InstruktorID = g.InstruktorID
WHERE g.StartTid >= :startdato
    AND g.SluttTid < datetime(:startdato, '+7 day')
ORDER BY g.StartTid;


--------------------------------------------------------------------------------------
--Usecase 5 
SELECT DISTINCT a.Beskrivelse AS trening, s.Navn AS treningsenter, g.StartTid AS tidspunkt
FROM Bruker AS u
JOIN Booking AS b 
    ON u.BrukerID = b.BrukerID
JOIN Gruppetime AS g 
    ON b.GruppetimeID = g.GruppetimeID
JOIN Aktivitetstype AS a 
    ON g.AktivitetstypeID = a.AktivitetstypeID
JOIN Sal AS sal 
    ON g.SalID = sal.SalID
JOIN Senter AS s 
    ON sal.SenterID = s.SenterID
WHERE b.Status = 'MOTTATT' 
AND g.StartTid < :startdato
AND u.Epost = :epost
ORDER BY g.StartTid;

--------------------------------------------------------------------------------------
--Usecase 6 svartelisting 
WITH Prikkstatus AS (
    SELECT u.BrukerID, COUNT(*) AS AntallPrikker, MIN(p.Tid) AS ForstePrikk
    FROM Bruker AS u
    JOIN Prikk AS p 
        ON u.BrukerID = p.BrukerID
    WHERE u.Epost = :epost
      AND p.Tid >= date(:referansedato, '-30 day')
      AND p.Tid <= date(:referansedato)
    GROUP BY u.BrukerID
)
UPDATE Bruker AS u
SET UtestengtTil = (
    SELECT date(ForstePrikk, '+30 day')
    FROM Prikkstatus
    WHERE Prikkstatus.BrukerID = u.BrukerID
)
WHERE u.BrukerID IN (
    SELECT BrukerID
    FROM Prikkstatus
    WHERE AntallPrikker >= 3
);

--------------------------------------------------------------------------------------
--Usecase 7 
SELECT b.BrukerID, u.Fornavn, u.Etternavn, COUNT(*) AS antall
FROM Booking AS b
JOIN Bruker AS u 
    ON u.BrukerID = b.BrukerID
JOIN Gruppetime AS g 
    ON g.GruppetimeID = b.GruppetimeID
WHERE b.Status = 'MOTTATT'
AND strftime('%m', g.StartTid) = :maaned
GROUP BY b.BrukerID, u.Fornavn, u.Etternavn
HAVING COUNT(*) = (
    SELECT MAX(antallGruppetimer)
    FROM (
        SELECT COUNT(*) AS antallGruppetimer
        FROM Booking AS b2
        JOIN Gruppetime AS g2 
            ON b2.GruppetimeID = g2.GruppetimeID
        WHERE b2.Status = 'MOTTATT'
        AND strftime('%m', g2.StartTid) = :maaned
        GROUP BY b2.BrukerID
    )
);


--------------------------------------------------------------------------------------------
--Usecase 8
SELECT u1.Epost, u2.Epost, COUNT(*) AS antallFelles
FROM Booking AS b1
JOIN Booking AS b2 
    ON b1.GruppetimeID = b2.GruppetimeID
   AND b1.BrukerID > b2.BrukerID
JOIN Bruker AS u1 
    ON b1.BrukerID = u1.BrukerID
JOIN Bruker AS u2 
    ON b2.BrukerID = u2.BrukerID
WHERE b1.Status = 'MOTTATT'
  AND b2.Status = 'MOTTATT'
GROUP BY u1.Epost, u2.Epost
ORDER BY antallFelles DESC;