import sqlite3
import os

from python.createDB import createDB
from python.usecase1 import usecase1
from python.usecase2 import usecase2
from python.usecase3 import usecase3
from python.usecase4 import usecase4
from python.usecase5 import usecase5
from python.usecase6 import usecase6
from python.usecase7 import usecase7
from python.usecase8 import usecase8
from python.resetDB import resetDB
from python.giPrikk import giPrikk


def get_db_path():
    base_dir = os.path.dirname(__file__)
    return os.path.join(base_dir, "treningDB.db")


def db_file_exists():
    return os.path.exists(get_db_path())


def schema_exists():
    db_path = get_db_path()

    if not os.path.exists(db_path):
        return False

    connection = sqlite3.connect(db_path)
    cursor = connection.cursor()

    try:
        cursor.execute("""
            SELECT name
            FROM sqlite_master
            WHERE type = 'table'
              AND name = 'Bruker'
        """)
        return cursor.fetchone() is not None
    finally:
        connection.close()


def testdata_exists():
    db_path = get_db_path()

    if not os.path.exists(db_path):
        return False

    connection = sqlite3.connect(db_path)
    cursor = connection.cursor()

    try:
        cursor.execute("""
            SELECT name
            FROM sqlite_master
            WHERE type = 'table'
              AND name = 'Bruker'
        """)
        if cursor.fetchone() is None:
            return False

        cursor.execute("SELECT COUNT(*) FROM Bruker")
        antall_brukere = cursor.fetchone()[0]
        return antall_brukere > 0

    except sqlite3.Error:
        return False

    finally:
        connection.close()


def require_schema():
    if not db_file_exists():
        print("Databasefilen finnes ikke. Kjør valg 0 først.")
        return False

    if not schema_exists():
        print("Skjema er ikke opprettet. Kjør valg 0 først.")
        return False

    return True


def require_testdata():
    if not require_schema():
        return False

    if not testdata_exists():
        print("Testdata mangler. Kjør valg 1 først.")
        return False

    return True


def print_menu():
    print("\n=== TreningDB ===")
    print("0 - Opprett database (lager tom database med skjema)")
    print("1 - Usecase 1 (initialiserer testdata)")
    print("2 - Usecase 2 (booke gruppetime for en bruker)")
    print("3 - Usecase 3 (registrere oppmøte)")
    print("4 - Usecase 4 (ukeplan for gruppetimer)")
    print("5 - Usecase 5 (personlig besøkshistorie)")
    print("6 - Usecase 6 (svartelisting)")
    print("7 - Usecase 7 (månedens mest aktive bruker)")
    print("8 - Usecase 8 (finne treningspartnere)")
    print("9 - Nullstill databasen (sletter all data)")
    print("10 - Avslutt")
    print("100 - Gi tre prikker til Johnny")


def main():
    while True:
        print_menu()
        valg = input("Skriv inn valg: ").strip()

        if valg == "0":
            createDB()

        elif valg == "1":
            if not require_schema():
                continue
            usecase1()

        elif valg == "2":
            if not require_testdata():
                continue
            usecase2("johnny@stud.ntnu.no", "Spin60", "2026-03-17 18:30:00")

        elif valg == "3":
            if not require_testdata():
                continue
            usecase3("johnny@stud.ntnu.no", "Spin60", "2026-03-17 18:30:00")

        elif valg == "4":
            if not require_testdata():
                continue
            usecase4("2026-03-16", 12)

        elif valg == "5":
            if not require_testdata():
                continue
            usecase5("2026-01-01 00:00:00", "johnny@stud.ntnu.no")

        elif valg == "6":
            if not require_testdata():
                continue
            usecase6("johnny@stud.ntnu.no", "2026-03-18 12:00:00")

        elif valg == "7":
            if not require_testdata():
                continue
            usecase7("03")

        elif valg == "8":
            if not require_testdata():
                continue
            usecase8()

        elif valg == "9":
            if not require_schema():
                continue
            resetDB()

        elif valg == "10":
            print("Programmet avsluttes.")
            break

        elif valg == "100":
            if not require_schema():
                continue
            giPrikk() 

        else:
            print("Ugyldig valg. Skriv et tall fra 0 til 10.")


if __name__ == "__main__":
    main()