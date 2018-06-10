Determine which directory your R session is using as its current working directory using getwd()

List all the objects in your local workspace using ls().

List all the files in your working directory using list.files() or dir()

Use the args() function to determine the arguments to list.files().
e.g. args(list.files)

Use dir.create("testdir") to create a directory in the current working directory called "testdir".

Set your working directory to "testdir" with the setwd("testdir") command

Create a file in your working directory called "mytest.R" using the file.create("mytest.R") function.

Check to see if "mytest.R" exists in the working directory using the file.exists() function:
file.exists("mytest.R")

Access information about the file "mytest.R" by using file.info():
file.info("mytest.R")

Change the name of the file "mytest.R" to "mytest2.R" by using file.rename():
file.rename("mytest.R", "mytest2.R")

Make a copy of "mytest2.R" called "mytest3.R" using file.copy():
file.copy("mytest2.R", "mytest3.R")

Provide the relative path to the file "mytest3.R" by using file.path().
file.path("mytest3.R")

| Type ls() to see a list of the variables in your workspace. Then, type rm(list=ls()) to clear your
| workspace.
