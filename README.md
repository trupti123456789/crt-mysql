# How to use MySQL in Copado Robotic Testing
This example shows how to connect to a database and add and remove data using MySQL protocol in
Copado Robotic Testing.

## Dependencies (check requirements.txt file)
- robotframework-databaselibrary
- pymysql

## Variables
Define the following variables in suite or robot level in your CRT project:
- **dbname** - name of your database
- **dbuser** - username
- **dbpass** - password
- **dbhost** - address to the host server (example: my.database.server.com)