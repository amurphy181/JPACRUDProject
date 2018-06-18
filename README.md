# README

## Overview

In a nutshell, this dynamic web site tracks job applications from the user's input and stores it on a database. The user can then search for previous applications by id number or, preferably, the listing method which links to all of the items in the database. After finding the desired job application record, the user can update or delete said record from the database.

## Topics

### Persistence
The main name of the game in this program and web service is to allow for persistence across time. Otherwise, the user would put in a job application record, see it for that period of time, then never be able to access it again. Persistence allows for that data to be able to be stored longer-term in a MySQL database so that records may last.

### Forms
The spring forms used in this application allow for records to be shuttled between JSP pages, allowing for information from one part of the site to transfer to another. This is necessary for updating and deleting records: without persistent information, the back-end program has no idea what to update or delete and throws exceptions. Many a null pointer exception was thrown on the way to solving these issues.

### Databases
For this project, a simple, one-table database was created in MySQL Workbench and connected to application through the Gradle build. Any information to be stored on this database is manipulated through JPQL code, bringing us back to a world where counting starts with "0".

## Future Changes

- Add to the search bar so that a job can be found by keyword, and if there are no records for that search parameter, return a message saying so.
- Change the delete function so that the user is warned that they are about to perform an irrevocable action.
- In an ideal situation, having a login would allow for users to access their own applications without being overrun with the records from other users.
