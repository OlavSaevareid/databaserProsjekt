# Database prosjektoppgave
## TreningDB - hva prosjektet er 
Dette er et databaseprosjekt som håndterer treningsbookinger inspirert av SIT sine treningssystemer. Strukturen og databasen er basert på modellene og skjemaet som ble utviklet i del 1. Prosjektet implementerer et databasesystem for å administrere brukere, bookinger og gruppe timer.

Det er delt opp i 2 hoveddeler: 
- 'sql/' - som inneholder databaseskjema, testdata og SQL-spørringer. Databasen er implementert i SQLite 3
- 'python/' - som inneholder Python-kode (versjon 3) som oppretter databasen og kjører usecasene. 

## beskrivelse
-beskrivelse: systemet administrerer: brukere, gruppetimer og bookinger ..., forskjellige brukstilfeller som vi kan teste individuelt. 
Basert på skjemaet utviklet i del 1 
- oppretting av databasesystemet, fylles med data, kjøre SQL spørringer 

## struktur
prosjektet er satt opp og strukturert på følgende måte:
python/
- createDB
- resetDB
- usecase1.py #Initialiser treningsdata (opprette treningssentere, saler, brukere, trenere og treninger)
- usecase2.py #Booke gruppetime for en bruker
- usecase3.py #Registrere oppmøte
- usecase4.py #Ukeplan for gruppetimer
- usecase5.py #Personlig besøkshistorie for en bruker
- usecase6.py #Svartelisting 
- usecase7.py #Månedens mest aktive bruker
- usecase8.py #Finne treningspartnere
sql/
- schema.sql
- data.sql
- usecase1.sql #Initialiser treningsdata (opprette treningssentere, saler, brukere, trenere og treninger)
- usecase2.sql #Booke gruppetime for en bruker
- usecase3.sql #Registrere oppmøte
- usecase4.sql #Ukeplan for gruppetimer
- usecase5.sql ##Personlig besøkshistorie for en bruker
- usecase6.sql #Svartelisting 
- usecase7.sql #Månedens mest aktive bruker
- usecase8.sql #Finne treningspartnere
.gitignore
main.py
README.md
TreningDB.sqbpro


## hvilke filer som gjør hva 
python python/createDB.py --> oppretter SQLite-databasen 'treningDB' og tabeller og fyller inn med data (oppretter SQL databasen treningDB.db, leser og kjører schema.sql + data.sql)
main.py --> hovedprogrammet hvor bruker kan velge hvilket usecase som skal kjøres 
usecasene --> implementert i 'python/usecaseX.py' og bruker SQL-spørringene fra ‘sql/usecaseX.sql‘

## kjøring av programmet 
oppretting av programmet først: python python/createDB.py
python main.py --> hovedmeny med 1-8 usecases eller 0 avslutt, 9 reset
reset --> nullstiller databasen (sletter eksisterende databasefil, oppretter ny database og fyller den inn med testdata) Dette gjør at man kan sette databasen til en starttilstand som er kjent (utgangspunkt)

## merknader
generet database er ignorert siden den opprettes lokalt med createDB.py 
.sqbpro er ignorert siden det ikke er nødvendig for kjøring av prosjektet --Y prosjektfil fra eksternt verktøy

## gruppemedlemmer 
Olav Onstad Sævareid
Markus Mikalsen 
Caroline Willoch 
 