import mysql.connector
mydb=mysql.connector.connect(host='localhost',user='root',password='Naveen@SQL12',database="Naveen")
print(mydb.connection_id)
cur=mydb.cursor()
# cur.execute('create database NAVEEN')
t = ('create TABLE navin(emp_id INT, emp_name VARCHAR(20), salary INT)')
cur.execute(t)

"""
Terminal
show databases;
use databasename;
show tables
"""
