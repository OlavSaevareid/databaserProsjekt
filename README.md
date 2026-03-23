# Database prosjektoppgave
## TreningDB
Dette prosjektet implementerer en treningsdatabase inspirert av SiT sine treningssystemer. Databasestrukturen er basert på ER-modellen og relasjonsskjemaet utviklet i del 1 av prosjektet. 

Databasen håndterer blant annet:
- brukere
- bookinger 
- gruppetimer
- treningssentre

Prosjektet er delt opp i to hoveddeler: 
- `sql/` - inneholder databaseskjema, testdata og SQL-spørringer. Databasen er implementert i SQLite 3
- `python/` - inneholder Python-kode (Python 3) som oppretter databasen og kjører usecasene. 

Databasen opprettes fra bunnen gjennom Python-skriptet som oppretter tabellene fra `schema.sql` og fyller databasen med data fra `usecase1.sql`. 

---
## Struktur
Prosjektet er satt opp og strukturert på følgende måte:
python/
- createDB.py
- resetDB.py
- usecase1.py #Initialiser treningsdata (opprette treningssentre, saler, brukere, trenere og treninger)
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
- usecase1.sql #Initialiser treningsdata (opprette treningssentre, saler, brukere, trenere og treninger)
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

---
## Hvilke filer som gjør hva 
`python/createDB.py`
Oppretter SQLite-databasen 'treningDB'. Skriptet leser og kjører `schema.sql` for å opprette tabeller, og `data.sql` for å fylle databasen med data. 

`main.py`
Hovedprogrammet hvor bruker kan velge hvilket usecase som skal kjøres 

usecasene
Er implementert i `python/usecaseX.py` og bruker SQL-spørringene fra `sql/usecaseX.sql`

`python/resetDB.py`
Brukes for å nullstille databasen ved at den sletter eksisterende database, oppretter den på nytt, og fyller den med testdata.

---
## Oppretting og kjøring av programmet 
Før man kan kjøre programmet så må databasen opprettes. 
Dette gjøres ved å navigere seg til prosjektmappen: 
```
cd databaserProsjekt
```

så kjør: 
```
python3 python/createDB.py
```

Deretter starter man programmet med: 
```
python3 main.py 
```
Programmet viser hovedmenyen hvor man kan velge:
- `1-8` for å kjøre ulike usecases 
- `9` for å resette databasen
- `0` for å avslutte programmet 

Reset av databasen: 
Ved å velge `9` i hovedmenyen så nullstilles databasen. Dette gjør at man kan sette databasen til en kjent starttilstand under testing.

Kjøre usecase direkte: 
Man kan også kjøre usecasene direkte hvis ønsket. Dette gjøres ved å kjøre de tilhørende Python-filene `python/usecaseX.py`. Hvor X byttes ut med tallet til brukstilfellet. 

---
## gruppemedlemmer 
Olav Onstad Sævareid
Markus Mikalsen 
Caroline Willoch 
 
skal legge til: 
usecasene kjo7rer med forha7ndsdefinerte parametere fra oppgaveteksten --> fungerer som en testmeny/demomeny for prosjektet 
usecase 1 er ren sql 
