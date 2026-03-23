# Database prosjektoppgave
## TreningDB
Dette prosjektet implementerer en treningsdatabase inspirert av SiT sine treningssystemer. Databasestrukturen er basert på ER-modellen og relasjonsskjemaet utviklet i del 1 av prosjektet. 

Databasen håndterer blant annet:
- brukere
- bookinger 
- gruppetimer
- treningssentre

Prosjektet er delt opp i to hoveddeler: 
- `sql/` - inneholder databaseskjema og SQL-spørringer. Databasen er implementert i SQLite 3
- `python/` - inneholder Python-kode (Python 3) som oppretter databasen og kjører usecasene. 

Databasen initialiseres i to steg gjennom `main.py`, som fungerer som testmeny for prosjektet. Først så
opprettes databaseskjemaet fra `schema.sql`, deretter så fylles databasen med testdata fra `usecase1.sql`.

I tråd med kravene i oppgaven er databasefilen `treningDB.db` tom ved levering, slik at sensor kan kjøre initialiseringsprogrammene. 

---
## Struktur
Prosjektet er satt opp og strukturert på følgende måte:

python/
- createDB.py
- resetDB.py
- usecase1.py #Initialiser treningsdataen
- usecase2.py #Booke gruppetime for en bruker
- usecase3.py #Registrere oppmøte
- usecase4.py #Ukeplan for gruppetimer
- usecase5.py #Personlig besøkshistorie for en bruker
- usecase6.py #Svartelisting 
- usecase7.py #Månedens mest aktive bruker
- usecase8.py #Finne treningspartnere

sql/
- schema.sql
- usecase1.sql 
- usecase3.sql 
- usecase4.sql 
- usecase5.sql 
- usecase6.sql 
- usecase7.sql 
- usecase8.sql 

.gitignore

main.py

README.md

---
## Hvilke filer som gjør hva 
`python/createDB.py`
Oppretter SQLite-databasen 'treningDB' og lager databaseskjemaet ved å kjøre `schema.sql`. Den fyller ikke databasen med data. 

`python/usecase1.py`
Initaliserer databasen med testdata ved å kjøre SQL-spørringene i `sql/usecase1.sql`. Scriptet inneholder også en sikkerhetssjekk om databaseskjemaet eksisterer. 

`python/resetDB.py`
Brukes for å nullstille databasen ved at den sletter all data fra tabellene, uten at den sletter selve skjemaet. 

`main.py`
Hovedprogrammet hvor bruker kan velge hvilket usecase som skal kjøres. 
Usecasene kjører med forhåndsdefinerte parametere fra prosjektoppgaven,så den fungerer som en testmeny for prosjektet. 


usecasene
Er implementert i `python/usecaseX.py` og bruker SQL-spørringene fra `sql/usecaseX.sql`

---
## Oppretting og kjøring av programmet 
Programmet kjøres gjennom `main.py`.
Dette gjøres ved å navigere seg til prosjektmappen: 
```
cd databaserProsjekt
```

så starte programmet med  
```
python3 main.py 
```
Programmet viser hovedmenyen hvor man kan velge:
- `0` for å opprette databaseskjemaet
- `1` for å fylle databasen med testdata
- `2-8` for å kjøre ulike usecases 
- `9` for å nullstille databasen
- `10` for å avslutte programmet 

Viktig rekkefølge ved oppstart:
Før man kan teste usecasene så må man initialisere databasen.
1. kjør 0 for å opprette databaseskjemaet. 
2. kjør 1 for å fylle databasen med testdata 

Reset av databasen: 
Ved å velge `9` i hovedmenyen så nullstilles databasen. Dette gjør at man kan sette databasen til en kjent starttilstand under testing.

---
## gruppemedlemmer gruppe 153
Olav Onstad Sævareid

Markus Mikalsen 

Caroline Willoch 
 
