import sqlite3
import os

def usecase1():
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase1.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
        query = queryRaw.read()

    cursor.execute(query)
    connection.commit()
    print("query utført")
    connection.close()

if __name__ == "__main__":
    usecase1()