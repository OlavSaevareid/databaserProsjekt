import sqlite3
import os
from pathlib import Path

from python.usecase1 import usecase1
from python.usecase2 import usecase2
from python.usecase3 import usecase3
from python.usecase4 import usecase4
from python.usecase5 import usecase5
from python.usecase6 import usecase6
from python.usecase7 import usecase7
from python.usecase8 import usecase8
from python.reset_db import reset_database

def main():
    while True:
        print("\n=== TreningDB ===")
        print("1 - Usecase 1")
        print("2 - Usecase 2")
        print("3 - Usecase 3")
        print("4 - Usecase 4")
        print("5 - Usecase 5")
        print("6 - Usecase 6")
        print("7 - Usecase 7")
        print("8 - Usecase 8")
        print("0 - Avslutt")
        
        valg = input("Skriv inn valg: ").strip()

        if valg == "1":
            usecase1()
        elif valg == "2":
            usecase2()
        elif valg == "3":
            usecase3()
        elif valg == "4":
            usecase4()
        elif valg == "5":
            usecase5()
        elif valg == "6":
            usecase6()
        elif valg == "7":
            usecase7()
        elif valg == "8":
            usecase8()
        elif valg == "9":
            reset_database()
        elif valg == "0":
            print("Programmet avsluttes.")
            break
        else:
            print("Ugyldig valg. Skriv et tall fra 0 til 9.")

if __name__ == "__main__":
    main()
            

