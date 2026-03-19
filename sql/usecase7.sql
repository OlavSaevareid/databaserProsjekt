SELECT b.BrukerID, u.Fornavn, u.Etternavn, COUNT(*) AS antall
FROM Booking AS b
JOIN Bruker AS u 
    ON u.BrukerID = b.BrukerID
JOIN Gruppetime AS g 
    ON g.GruppetimeID = b.GruppetimeID
WHERE b.Status = 'mott'
AND strftime('%m', g.StartTid) = :maaned
GROUP BY b.BrukerID, u.Fornavn, u.Etternavn
HAVING COUNT(*) = (
    SELECT MAX(antallGruppetimer)
    FROM (
        SELECT COUNT(*) AS antallGruppetimer
        FROM Booking AS b2
        JOIN Gruppetime AS g2 
            ON b2.GruppetimeID = g2.GruppetimeID
        WHERE b2.Status = 'mott'
        AND strftime('%m', g2.StartTid) = :maaned
        GROUP BY b2.BrukerID
    )
);