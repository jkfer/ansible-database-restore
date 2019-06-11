# Restoring DB to a remote host and providing specific user defined access

## Files:


#### mysql_handle.yml
- Define variables 'db_name', 'restore_db' and 'client' in the variable section.
- DB is restored as root user and all permissions for the db is provided to user joseph


#### birdwatchers.sql
- This is the sample backup database that is going to be restored. 


## Assumptions:
- Remote host does not have mysql installed or configured.
