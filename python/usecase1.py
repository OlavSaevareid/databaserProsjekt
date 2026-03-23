import sqlite3
import os

def usecase1():
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    dataPath = os.path.join(baseDir, "..", "sql", "usecase1.sql")

    if not os.path.exists(dbPath):
        print("Databasen finnes ikke. Kjør createDB først.")
        return

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    with open(dataPath, "r", encoding = "utf-8") as dataRaw:
        data = dataRaw.read()
        cursor.executescript(data)

    print("Fyller inn data")

    connection.commit()
    connection.close()

    print("Databasen er fyllt inn med testdata")


if __name__ == "__main__":
    usecase1()
