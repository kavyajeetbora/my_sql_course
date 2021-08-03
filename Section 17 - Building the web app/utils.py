import mysql.connector
from mysql.connector import Error

## create a sql connection
def connect_to_database(hostname, user, password, db_name):
    connection = None
    try:
        connection = mysql.connector.connect(
            host = hostname,
            user = user,
            passwd = password,
            database = db_name
        )
        print("Connected to database succesfully")
    except Error as err:
        print("ERROR !\n%s"%err)
    return connection

def execute_query(connection, query, show_results=True):
    '''
    Executes a sql query and returns the results if set to True
    '''
    cursor = connection.cursor()
    results = None
    try:
        cursor.execute(query)
        if show_results:
            results = cursor.fetchall()

        warnings = cursor.fetchwarnings()
        rows = cursor.rowcount
        connection.commit()
        print('''Query successfully executed.
                warings: %s,
                rows: %d
        ''' % (warnings, rows))

    except Error as err:
        results = "ERROR:\n%s" % err

    return results
