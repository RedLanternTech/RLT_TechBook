# Soltuions and notes for Over the Wire-Bandit

[Link to the Fun](https://overthewire.org/wargames/bandit/bandit0.html)

You are going to want to copy and past the passwords becasue, well they are crazy.  

- Level 0:  `ssh bandit0@bandit.labs.overthewire.org -p 2220`
- Level 0 -> 1: `cat readme` PWD: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
- Level 1 -> 2: `cat ./-`  PWD:  263JGJPfgU6LtdEvgfWU1XP5yac29mFx
- 2 -> 3: `cat "spaces in this filename"` PWD: MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
- 3 -> 4: Use `ls -la` to find hidden files, cd into the directory `cd inhere`, then `cat ...Hiding-From-You` pwd: 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
- 4 -> 5: Ran the command `file ./*-file*` then found it was file 07 as it will say ASCII text.  To read, I typed `cat ./-file07`.  I got an error but the password.  PWD: koReBOKuIDDepwhWk7jZC0RTdopnAYKh
- 5 -> 6:  This one was fun.  used `ls -Rla | grep 1033` to find which file is 1033 bytes.  Then went into the directory and just ran a cat on it. `cd maybehere07`, then `cat .file2`.  PWD:  4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw 
- 6 -> 7: I go this one quick but I did it in the dumbest way possible (in my opinion).  `cd /`, then `ls -Rla | grep bandit7`, looked for the file with 33 bytes.  I had the name but not the location.  Ran `find -name bandit7.password -print` to get the location. `cat /var/lib/dpkg/info/bandit7.password`.  PWD: HWasnPhtq9AVKe0dmk45nxy20cvUa6EG 
- 7 -> 8:
