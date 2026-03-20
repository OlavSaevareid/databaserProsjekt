--studenter som trener sammen 
SELECT u1.Epost, u2.Epost, COUNT(*) AS antallFelles
FROM Booking AS b1
JOIN Booking AS b2 
    ON b1.GruppetimeID = b2.GruppetimeID
   AND b1.BrukerID > b2.BrukerID
JOIN Bruker AS u1 
    ON b1.BrukerID = u1.BrukerID
JOIN Bruker AS u2 
    ON b2.BrukerID = u2.BrukerID
WHERE b1.Status = 'mott'
  AND b2.Status = 'mott'
GROUP BY u1.Epost, u2.Epost
ORDER BY antallFelles DESC;