
# Git commands

Create a repository in the current directory
    
    git init
Create a local copy of a git repository

    git clone [user@domain:/path]
View the log

    git log
View log with ASCII graph

    git log --stat
View log with diffs

    git log -p
View branches
    
    git branch
View all branches
    
    git branch -a
Create a branch
    
    git branch [branch_name]
Delete branch
    
    git branch -d [branch_name]
Force delete a branch
    
    git branch -D [branch_name]
Create a tracking branch
    
    git branch --track [branch_name] [repo/branch]
Switch to a branch
    
    git checkout [branch_name]
Create and switch to a branch
    
    git checkout -b [branch_name]
Add all content to the index

    git add .
Add specific content to the index
    
    git add [file_name]
Save changes queued to the index

    git commit
Save all uncommitted changes

    git commit -a
Send git commits back to Subversion

    git-svn dcommit
Get changes from Subversion

    git-svn rebase
Commit and show diff of changes

    git commit -v
Quick commit message
    
    git commit -m "Message"
Restart branch with code in another branch

    git rebase [branch_name]
View the difference between branches
    
    git diff [branch1] [branch2]
Combine code from a branch into the current one
    
    git merge [branch_name]
Undo last commit or merge

    git reset --hard ORIG_HEAD
Save uncommitted changes

    git stash "Description"
Show stash
    
    git stash list
Merge the stash with working directory
    
    git stash apply
Delete stashed code
    
    git stash clear
Send commit objects to another repository
    
    git push
Send commits to a specific repo and branch
    
    git push [repository] [branch_name]
Fetch objects and merge with current branch
  
    git pull
Fetch and merge from a specific repo and branch

    git pull [repository] [branch_name]
Get objects from a repository
    
    git fetch [repository]

# Create a git repository based on a Subversion repo
git-svn clone [url]
