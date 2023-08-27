from main import mydb

#creating db with python

db_cusor = mydb.cursor()

db_name = 'db_with_python'
sql_commands = f'CREATE DATABASE {db_name}'

db_cusor.execute(sql_commands)