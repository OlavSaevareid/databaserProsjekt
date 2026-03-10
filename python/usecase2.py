import sqlite3
import os

def usecase2(epost, aktivitet, tidspunkt):
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    SqlAsString = '''

    '''
    cursor.execute(SqlAsString)
    connection.commit()
    print("query utført")
    connection.close()

if __name__ == "__main__":
    usecase2()