
# Section 2 Readme
Step 1: Installed docker and dbeaver

Step 2: Drafted out DDL statements to create tables for cardealership-db

Step 3: Created dockerfile to generate image of postgres, copied out the table creation sql file to automatically generate the schema
  
    To run on terminal:
    a. docker build .
    b. docker run -d --name cardealership-db -p 5432:5432 cardealership-db

Step 4: Created dummy data to test and run additional queries required

Step 5: Booted up DBeaver and initialized connection between container and DBeaver.

Step 6: Created a query to generate a transaction_invoice table to view for a single glance viewing pleasure.

Step 7: Created query to view customers and expenditures

Step 8: Created query to view top selling cars