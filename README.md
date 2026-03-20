# TreningDB
# hva prosjektet er 
Dette er et databaseprosjekt som håndterer treningsbookinger basert på SIT treningsbookinger. Det er delt opp i 2 hoveddeler: 
- 'sql/' --> databaseskjema, testdata og SQL-spørringer. bruker sqlite 3
-'python/' --> python kode som oppretter databasen og kjører usecasene. python versjon (3)

-beskrivelse: systemet administrerer: brukere, gruppetimer og bookinger ..., forskjellige brukstilfeller som vi kan teste individuelt. 
Basert på skjemaet utviklet i del 1 
- oppretting av databasesystemet, fylles med data, kjøre SQL spørringer 



# hvilke filer som gjør hva --> struktur 
python python/createDB.py --> opprette databasen og tabeller og fyller inn med data (oppretter SQL databasen treningDB.db, leser og kjører schema.sql + data.sql)
main.py --> hovedprogrammet hvor bruker kan velge hvilket usecase som skal kjøres 

# kjøring av programmet 
python main.py --> 1-8 usecases eller 0 avslutt --> kanskje legge inn en reset (fordi gjør vi dette)

# merknader
generet database er ignorert siden den opprettes lokalt med createDB.py 
.sqbpro er ignorert siden det ikke er nødvendig for kjøring av prosjektet 

# gruppemedlemmer 
Olav Onstad Sævareid
Markus Mikalsen 
Caroline Willoch 
 