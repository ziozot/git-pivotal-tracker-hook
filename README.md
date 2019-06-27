# git-pivotal-tracker-hook
Bash script as post-commit hook for Pivotal Tracker integration.
It push your commit's messages under the Pivotal Tracker's stories you're working on!

If the story id is configured it also add to the story a label containing the application name taken from the git repository.
This can be useful in a maintenance project where there are many applications to maintain, with the labels is easy on pivotal to do queries based on application involved.

## Setup
  To set up:
##### 1. Take your Pivotal Tracker token from Pivotal itself!
- Login into Pivotal Tracker
- Click on your name in the right corner
- Click on *Profile* and scroll down until *API TOKEN*

##### 2. Put your pivotal tracker token into the git configuration
    git config --global pivotal.token {your-pivotal-tracker-token}

ps. without brackets!

##### 3. Put the project id into the git configuration
If you work on one single project is possible to configure it globally

    git config --global pivotal.project.id {project-id-on-pivotal}

otherwise is better to configure it locally

    git config pivotal.project.id {project-id-on-pivotal}
    
ps. without brackets!

##### 4. Put the "post-commit" file into the ".git/hooks" folder of your project
Repeate this last point for every project you want to add this feature

## How to use
At this point is possible to follow this format for the commit message in order to automatically add a comment to the related story on  pivotal:
  
      [#12345678] my commit
      
where *#12345678* is the id of the story on Pivotal.

## Todo

 - Take id of Pivotal stories from feature-branches name, if there're
 - Eventually integrate with other Pivotal's API

## Credits
The idea of a post-commit integration with Pivotal Tracker API came from [banesto/git-pivotal-tracker-hooks](https://github.com/banesto/git-pivotal-tracker-hooks)
