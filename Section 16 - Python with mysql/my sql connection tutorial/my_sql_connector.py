# -*- coding: utf-8 -*-
"""
Created on Thu Jul 29 18:26:09 2021

@author: KVBA
"""

import pandas as pd
import mysql.connector
from mysql.connector import Error

## establish a connection to sql server
def connect_to_sql_server(hostname, user, password):
    
    '''
    Establish a connection between python script and MySQL server
    '''
    
    connection = None
    try:
        connection = mysql.connector.connect(
            host = hostname, 
            user = user, 
            passwd = password
        )
        print("MySQL server connection successfull")
    except Error as err: 
        print("Error in connection: ", err)
        
    return connection

## 1. Establishing connection with sql server
connection = connect_to_sql_server(
    hostname = "localhost",
    user = "root",
    password = "Bora@1992"    
)


## 2. Creating DATABASE in the server
print(connection.cursor)

def create_database(connection, db_name):
    cursor = connection.cursor()
    try:
        cursor.execute("CREATE DATABASE %s" % db_name)
        print("Query executed successfully")
    except Error as err:
        print("Error: %s" % err)
        
create_database(connection, "t")

