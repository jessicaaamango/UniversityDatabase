import sqlite3
import mysql.connector


# Function to connect to the SQLite database
def connect_to_database(): # if you want to keep the input file for database then use connector.py and remmove lines 8-12.
    # change this to your connection
    conn = mysql.connector.connect(
        host='localhost', 
        username='root', 
        password='12345678',
        database='university')
    try:
        conn = sqlite3.connect() #this line may cause issues, change this if needed
        print("Connected to SQLite database")
        return conn
    except sqlite3.Error as e:
        print(e)
    return conn

# Function to query universities based on user preferences
def query_universities(conn, major, state):
    try:
        cursor = conn.cursor()
        cursor.execute("""
            SELECT uni_name
            FROM university
            WHERE state = ? AND uni_id IN (
                SELECT uni_id
                FROM Major
                WHERE major = ?
            )
        """, (state, major))
        rows = cursor.fetchall()
        if len(rows) == 0:
            print("No universities found matching your criteria.")
        else:
            print("Universities matching your criteria:")
            for row in rows:
                print(row[0])
                
    except sqlite3.Error as e:
        print(e)

# Main function to ask user questions and call the query function
def main():
    conn = connect_to_database()
    if conn is not None:
        major = input("What major are you interested in? ")
        state = input("What state are you interested in living?")

        query_universities(conn, major, state)
        conn.close()
    else:
        print("Error: Could not connect to database.")

if __name__ == '__main__':
    main()

