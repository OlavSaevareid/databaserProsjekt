import sqlite3
from pathlib import Path

#personlig besøkshistorie 
def usecase5(aktivitetstype, senter, startdato, starttid)
    baseDir = Path(__file__).resolve().parent
    dbPath = baseDir.parent / "treningDB.db"
    usecasePath = baseDir.parent / "sql" / "usecase5.sql"
        
    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()
    
        with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
        query = queryRaw.read()
        
         cursor.execute(query, {
        "startdato": startdato
    })
