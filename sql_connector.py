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


import mysql.connector

db = mysql.connector.connect(host='localhost', user='root', password="Naveen@SQL12", database="sample")

cusr = db.cursor()          
cusr.execute("CREATE DATABASE Sample")    #Creation of database
cusr.execute("CREATE TABLE sample1(id INT PRIMARY KEY, name VARCHAR(10), contact_no INT)")    #Creating table in database
print("Table successfully created")
a = "INSERT INTO sample1 VALUES(%s, %s, %s)"    #Inserting single row of data
b = (101, "Naveen", 8234567)
cusr.execute(a, b)
print("Values are successfully inserted")
a1 = "INSERT INTO sample1 VALUES(%s, %s, %s)"   #Inserting multiple values of data in table
b1 = [(102, "Karthik", 8214569), (103, "Suhail", 856794), (104, "Sahil", 9843234)]
cusr.executemany(a1, b1)
print("Many values are inserted into table") 
db.commit()             
cusr.close()
db.close()
