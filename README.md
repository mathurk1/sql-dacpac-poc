# Using DacPac to version control database and automate deployments

This is a project to explore Dacpacs. I have used Visual Studio on windows to create and manage the Database Project.

### Steps to follow:
1. Create a new VSCode Database project (using Visual Studio or Azure Data Studio)
2. Import an existing database (or create a blank one)
3. Commit the project to version control
4. Setup CI/CD pipelines to deploy changes

### Adding/Deleting/Altering database objects:

* There is a need to rebuild the solution when adding database objects. Otherwise build will be successful but database objects will not be deployed
* No need to rebuild the solution when altering/deleting existing database objects


### Other notes:
* ensure you check the target version of the database (right click and open properties file -> project settings -> Traget platform)
* to drop existing objects, ensure you have set `'/p:DropObjectsNotInSource=true'` in the sqlcmd run (in the CD pipeline)

