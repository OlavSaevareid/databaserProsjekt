UPDATE Booking
SET Oppmote = CURRENT_TIMESTAMP
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
      AND s.Navn = 'Oya'
);