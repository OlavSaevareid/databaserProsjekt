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