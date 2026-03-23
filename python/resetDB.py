import sqlite3
import os

def resetDB():
    baseDir = os.path.dirname(__file__)
    dbPath = os.path.join(baseDir, "..", "treningDB.db")

    print("Nullstiller databasen")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    try:
        cursor.execute("PRAGMA foreign_keys = OFF")

        cursor.execute("""
            SELECT name 
            FROM sqlite_master 
            WHERE type='table'
            AND name NOT LIKE 'sqlite_%'
        """)

        for table in cursor.fetchall():
            cursor.execute(f"DELETE FROM {table[0]}")

        cursor.execute("PRAGMA foreign_keys = ON")

        connection.commit()

        print("Databasen er nå tom")

    finally:
        connection.close()


if __name__ == "__main__":
    resetDB()