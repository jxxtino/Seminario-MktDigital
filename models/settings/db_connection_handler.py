import sqlite3
from sqlite3 import Connection

class DbConnectionHandler:
    def __init__(self) -> None:
        self.__connection_string = "storage.db"
        self.__conn = None  

    def connect(self) -> None:
        conn = sqlite3.connect(self.__connection_string, check_same_thread=False)

        with open(r'init/schema.sql', 'r') as f:
            conn.executescript(f.read())

        self.__conn = conn
    
    def get_connection(self) -> Connection:
        return self.__conn
    
db_connection_handler = DbConnectionHandler()