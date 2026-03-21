INSERT INTO "Senter" (SenterID, Navn, Adresse) VALUES
('S0001', 'Oya', 'Vanglundsgate 2'),
('S0002', 'Dragvoll', 'Loholt alle 81');

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


INSERT INTO "Sykkel" (SykkelNr, HarBluetooth, SalID) VALUES --ikke lagt inn for øya
--Sykler Oya
('SYK001',0,'SAL10'),
('SYK002',1,'SAL10'),
('SYK003',1,'SAL10');

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
('B2011','Johnny', 'Bravo', 'johnny@stud.ntnu.no','91357926');

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


INSERT INTO "Aktivitetstype" (AktivitetstypeID, navn, Beskrivelse) VALUES 
('A0001', 'Spinning', 'Spin 4x4'),
('A0002', 'Spinning', 'Spin 8x3'),
('A0003', 'Spinning', 'Spin45'),
('A0004', 'Spinning', 'Spin60');


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

INSERT INTO "Aktivitetstype2Sal" (SalID, AktivitetstypeID) VALUES
('SAL1','A0001'),
('SAL1','A0002'),
('SAL1','A0003'),
('SAL1','A0004'),
('SAL10','A0001'),
('SAL10','A0002'),
('SAL10','A0003'),
('SAL10','A0004');

INSERT INTO "Gruppetime"
(GruppetimeID, StartTid, SluttTid, PublisertTid, InstruktorID, IdrettslagID, AktivitetstypeID, SalID)
VALUES
('G0001', '2026-03-16 07:00:00', '2026-03-16 07:45:00', '2026-03-14 07:00:00', '00007', NULL, 'A0001', 'SAL10'),
('G0002', '2026-03-16 16:30:00', '2026-03-16 17:15:00', '2026-03-14 16:30:00', '00008', NULL, 'A0001', 'SAL1'),
('G0003', '2026-03-16 16:30:00', '2026-03-16 17:15:00', '2026-03-14 16:30:00', '00010', NULL, 'A0003', 'SAL10'),
('G0004', '2026-03-16 17:40:00', '2026-03-16 18:35:00', '2026-03-14 17:40:00', '00007', NULL, 'A0002', 'SAL10'),
('G0005', '2026-03-16 19:00:00', '2026-03-16 20:00:00', '2026-03-14 19:00:00', '00008', NULL, 'A0004', 'SAL10'),

('G0006', '2026-03-17 07:00:00', '2026-03-17 07:55:00', '2026-03-15 07:00:00', '00010', NULL, 'A0002', 'SAL10'),
('G0007', '2026-03-17 18:30:00', '2026-03-17 19:30:00', '2026-03-15 18:30:00', '00008', NULL, 'A0004', 'SAL10'),
('G0008', '2026-03-17 19:45:00', '2026-03-17 20:30:00', '2026-03-15 19:45:00', '00010', NULL, 'A0003', 'SAL10'),

('G0009', '2026-03-18 16:15:00', '2026-03-18 17:15:00', '2026-03-16 16:15:00', '00007', NULL, 'A0004', 'SAL10'),
('G0010', '2026-03-18 16:30:00', '2026-03-18 17:15:00', '2026-03-16 16:30:00', '00010', NULL, 'A0003', 'SAL1'),
('G0011', '2026-03-18 17:30:00', '2026-03-18 18:15:00', '2026-03-16 17:30:00', '00008', NULL, 'A0001', 'SAL10'),
('G0012', '2026-03-18 18:30:00', '2026-03-18 19:15:00', '2026-03-16 18:30:00', '00008', NULL, 'A0003', 'SAL10'),
('G0013', '2026-03-18 19:30:00', '2026-03-18 20:25:00', '2026-03-16 19:30:00', '00007', NULL, 'A0002', 'SAL10'),

('G0090', '2026-01-10 17:00:00', '2026-01-10 18:00:00', '2026-01-08 17:00:00', '00008', NULL, 'A0004', 'SAL10'),
('G0091', '2026-01-22 18:30:00', '2026-01-22 19:15:00', '2026-01-20 18:30:00', '00010', NULL, 'A0003', 'SAL1'),
('G0092', '2026-02-14 16:00:00', '2026-02-14 16:45:00', '2026-02-12 16:00:00', '00007', NULL, 'A0001', 'SAL10'),
('G0093', '2026-03-05 19:00:00', '2026-03-05 19:55:00', '2026-03-03 19:00:00', '00008', NULL, 'A0002', 'SAL10');

INSERT INTO "Booking" (BookingID, BrukerID, GruppetimeID, Status, OppmoteTid) VALUES
('BK090', 'B2011', 'G0090', 'BOOKET', '2026-01-10 16:55:00'),
('BK091', 'B2011', 'G0091', 'BOOKET', '2026-01-22 18:25:00'),
('BK092', 'B2011', 'G0092', 'BOOKET', '2026-02-14 15:55:00'),
('BK093', 'B2011', 'G0093', 'BOOKET', '2026-03-05 18:55:00');

INSERT INTO "Fasilitet" (FasilitetID, Navn) VALUES
('F0001', 'Gruppetrening'),
('F0002', 'Egentrening'),
('F0003', 'Utholdenhet'),
('F0004', 'Styrke'),
('F0005', 'Yoga'),
('F0006', 'Klatring'),
('F0007', 'Spinning'),
('F0008', 'Hall'),
('F0009', 'Garderober'),
('F0010', 'Badstue'),
('F0011', 'Dusj'),
('F0012', 'Ubemannet treningssenter'),
('F0013', 'Tilgjengelighet');

INSERT INTO "Fasilitet2Senter" (FasilitetID, SenterID) VALUES
('F0001', 'S0001'),
('F0002', 'S0001'),
('F0003', 'S0001'),
('F0004', 'S0001'),
('F0005', 'S0001'),
('F0006', 'S0001'),
('F0007', 'S0001'),
('F0008', 'S0001'),
('F0009', 'S0001'),
('F0010', 'S0001'),
('F0011', 'S0001'),
('F0012', 'S0001'),
('F0013', 'S0001');