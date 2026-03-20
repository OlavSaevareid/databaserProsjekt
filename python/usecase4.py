
import sqlite3
import os

def usecase4(startTid,sluttTid):
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase4.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
        query = queryRaw.read()

    cursor.execute(query, {
        "startTid": startTid,
        "slutttid": sluttTid
    })
    
    rows = cursor.fetchall()
    
    if rows:
        print("Ukeplan: ")
        for startTid, SluttTid, Sal, Aktivitet, instruktor in rows:
            print(f"{startTid} - {sluttTid} | {senter} | {sal} | {aktivitet} | {instruktor}")
    else:
        print("Fant ingen treninger")
        
    connection.close()
    
if __name__ == "__main__":
    usecase4("2026-03-16 00:00:00","2026-03-23 23:59:59")
