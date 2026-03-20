-- Sjekk at gruppetimen finnes
SELECT g.GruppetimeID, u.BrukerID
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
  AND s.Navn = 'Oya';

-- Lag ny booking for brukeren
INSERT INTO Booking
(BookingID, BrukerID, GruppetimeID, Status, OppmoteTid)
VALUES
(:bookingid, :brukerid, :gruppetimeid, 'BOOKET', NULL);