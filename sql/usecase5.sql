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
WHERE b.Status = 'mott' 
AND g.StartTid > :startdato
AND u.Epost = :epost
ORDER BY g.StartTid;

