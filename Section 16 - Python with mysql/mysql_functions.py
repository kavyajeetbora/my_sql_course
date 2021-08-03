import mysql.connector
from mysql.connector import Error

## connect to database
def connect_to_database(host, user, password, database):

    '''
    Establish a connection with existing database
    '''
    connection = None
    try:
        connection = mysql.connector.connect(
            host = host,
            user = user,
            passwd = password,
            database = database
        )
        print("The connection successfully done")
    except Error as err:
        print("ERROR:\n%s" % err)
    return connection

def execute_query(connection, query, show_results=False):
    '''
    Executes a sql query and returns the results if set to True
    '''
    cursor = connection.cursor()
    results = None
    try:
        cursor.execute(query)
        print("Query successfully executed")
    except Error as err:
        print("ERROR:\n%s" % err)

    return results
