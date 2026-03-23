import sqlite3
import os

def usecase1():
    baseDir = os.path.dirname(__file__)
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    dataPath = os.path.join(baseDir, "..", "sql", "usecase1.sql")

    if not os.path.exists(dbPath):
        print("Databasen finnes ikke. Kjør createDB først.")
        return

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    # Sjekk om skjema finnes
    cursor.execute("""
        SELECT name 
        FROM sqlite_master 
        WHERE type='table' AND name='Bruker'
    """)

    if not cursor.fetchone():
        print("Schema mangler. Kjør createDB først.")
        connection.close()
        return

    try:
        with open(dataPath, "r", encoding="utf-8") as dataRaw:
            data = dataRaw.read()
            cursor.executescript(data)

        connection.commit()
        print("Databasen er fylt inn med testdata")

    finally:
        connection.close()


if __name__ == "__main__":
    usecase1()