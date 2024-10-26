pass

[0m[0mStore and read passwords or other sensitive data.
All data is GPG-encrypted, and managed with a Git repository.
More information: https://www.passwordstore.org.

 - [0m[32;23;22;24;25mInitialize (or re-encrypt) the storage using one or more GPG IDs:
   [33;23;22;24;25mpass init [0mgpg_id_1[33;23;22;24;25m [0mgpg_id_2
[0m
 - [0m[32;23;22;24;25mSave a new password and additional information (press Ctrl + D on a new line to complete):
   [33;23;22;24;25mpass insert --multiline [0mpath/to/data
[0m
 - [0m[32;23;22;24;25mEdit an entry:
   [33;23;22;24;25mpass edit [0mpath/to/data
[0m
 - [0m[32;23;22;24;25mCopy a password (first line of the data file) to the clipboard:
   [33;23;22;24;25mpass -c [0mpath/to/data
[0m
 - [0m[32;23;22;24;25mList the whole store tree:
   [33;23;22;24;25mpass[0m
[0m
 - [0m[32;23;22;24;25mGenerate a new random password with a given length, and copy it to the clipboard:
   [33;23;22;24;25mpass generate -c [0mpath/to/data[33;23;22;24;25m [0mnum
[0m
 - [0m[32;23;22;24;25mInitialize a new Git repository (any changes done by pass will be committed automatically):
   [33;23;22;24;25mpass git init[0m
[0m
 - [0m[32;23;22;24;25mRun a Git command on behalf of the password storage:
   [33;23;22;24;25mpass git [0mcommand
[0m[0m