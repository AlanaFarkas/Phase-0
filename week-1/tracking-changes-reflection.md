-How does tracking and adding changes make developers' lives easier?
Tracking and adding changes are key components behind version control and make developer's lives easier by maintaining a detailed record of changes made to a file along the way.  

-What is a commit?
A commit works as sort of a 'snapshot' of your files at any given time and committed files get added to the repository. 

-What are the best practices for commit messages?
Commit messages should be short and written in present tense. Commit messages should explain what was changed and why.

-What does the HEAD^ argument mean?
The HEAD^ command is to 'unstage' the file you were just working on for commitment. 

-What are the 3 stages of a git change and how do you move a file from 
one stage to the other?
First you modify the file, then stage the file to be added to the repository, then write a commit message to accompany the file.

-Write a handy cheatsheet of the commands you need to commit your changes?
git add [file] --> git commit -m ["commit message"] --> git push

-What is a pull request and how do you create and merge one?
After you commit your file, you can create a pull request. A pull request announces that you've added or modified files that you'd like compared to the master files in the repository. You can create a pull request from GitHub which allows a user to compare the modified files to the original. If the changes are deemed good, the file can be merged to the master.

-Why are pull requests preferred when working with teams?
Pull requests are preferred when working in teams because a pull request is sort of like a staging area for files to be reviewd before being merged to the master branch.  