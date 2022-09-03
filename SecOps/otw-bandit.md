# Soltuions and notes for Over the Wire-Bandit

[Link to the Fun](https://overthewire.org/wargames/bandit/bandit0.html)

You are going to want to copy and past the passwords becasue, well they are crazy.  

- Level 0:  `ssh bandit0@bandit.labs.overthewire.org -p 2220`
- Level 0 -> 1: `cat readme` PWD: boJ9jbbUNNfktd78OOpsqOltutMc3MY1
- Level 1 -> 2: `cat ./-`  PWD:  CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
- 2 -> 3: `cat "spaces in this filename"` PWD: UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
- 3 -> 4: Use `ls -la` to find hidden files, cd into the directory `cd inhere`, then `cat .hidden` pwd: pIwrPrtPN36QITSp3EQaw936yaFoFgAB 
-4 -> 5: Ran the command `file ./*-file*` then found it was file 07 as it will say ASCII text.  To read, I typed `cat 2020 ./-file07`.  I got an error but the password.  PWD: koReBOKuIDDepwhWk7jZC0RTdopnAYKh
5 -> 6:  This one was fun.  used `ls -Rla` to find which file is 1033 bytes.  Then went into the directory and just ran a cat on it. `cd maybehere07`, then `cat .file2`.  PWD:  DXjZPULLxYr17uwoI01bNLQbtFemEgo7  
6 -> 7: I go this one quick but I did it in the dumbest way possible (in my opinion).  `cd /`, then `ls -Rla | grep bandit7`, looked for the file with 33 bytes.  I had the name but not the location.  Ran `find -name bandit7.password -print` to get the location. `cat /var/lib/dpkg/info/bandit7.password`.  PWD: HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs 
7 -> 8:
