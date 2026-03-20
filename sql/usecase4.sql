--Ukeplan for treninger i uke 12
SELECT DISTINCT g.StartTid, 
                g.SluttTid,
                s.Navn AS Senter,
                sal.Navn AS Sal,
                a.Beskrivelse AS Aktivitet,
                i.Fornavn AS Instruktor

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
    AND g.StartTid < date(:startdato, '+7 day')
ORDER BY g.StartTid;
