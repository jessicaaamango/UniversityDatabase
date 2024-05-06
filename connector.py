import mysql.connector

conn = mysql.connector.connect(
    host='localhost', 
    username='root', 
    password='12345678',
    database='university')
cursor = conn.cursor()

cursor.execute("")