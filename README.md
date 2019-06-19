# git-pivotal-tracker-hook
  Bash script as post-commit hook for pivotal integration

## Setup
  To set up:

##### 1. Put your pivotal tracker token into the git configuration
    git config pivotal.token {your-pivotal-tracker-token}

##### 2. Put the "post-commit" file into the ".git/hooks" folder of your project

## How to use
  At this point is possible to follow this format for the commit message in order to automatically add a comment to the related story on  pivotal:
  
      [#12345678] my commit
      
where #12345678 is the id of the story on pivotal
