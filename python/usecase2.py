import sqlite3
import os

def usecase2():
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase2.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
        query = queryRaw.read()

    paramteres = {
        "epost" : "johnny@stud.ntnu.no",
        "aktivitetstype" : "Spinning60",
        "tidspunkt" : ""
    }

    cursor.execute(query, paramteres)
    connection.commit()
    print("query utført")
    connection.close()

if __name__ == "__main__":
    usecase2()