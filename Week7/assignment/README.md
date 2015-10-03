# Week 7 Assignment

You must use the provided templates. Submit your completed assignment (**.ipynb** files) onto Moodle.

## Announcement

You must submit your assignment in two places:

1. Week 7 Assignment (Peer Assessment)

2. Week 7 Assignment (Instructors)

One is just for the peer assessment, and the other one is just for instructor's grades.

## Submission deadline: Saturday, October 10th, 2015, 6:00 PM

## Problem 7.1. Use template: [Trigonometric Functions](trig.ipynb)

## Problem 7.2. Use template: [Distance vs. Flight Time](distance_time.ipynb)

Don't forget that you have to submit in **two** places, one for peer assessment and the other one for instructor's grades.

### How to download the templates

You can download the template by updating your local course repository that you created in [Week 1 Lesson 2](https://github.com/UI-DataScience/info490-fa15/blob/master/Week1/lesson2.md), e.g. `/home/data_scientist/info490`. Open a terminal, either by using _New_ -> _Terminal_ in the IPython/Jupyter notebooks server, or by using the interactive terminal mode in Docker:

```shell
$ docker exec -it <container name> /bin/bash
```

You can find the container name by doing `docker ps`. At the Unix shell, go to the directory where the course repository is mounted,

```shell
$ cd /home/data_scientist/info490-fa15
```

Now, there are multiple ways to proceed.

1. If you don't care about the local changes and just want the local repository to exactly match the course repository:
 **WARNING: This will remove all your work. Back up your work before you do this.**
 ```shell
 $ git fetch --all
 $ git reset --hard origin/master
 ```

2. Or, if you care about the changes you have made, you can [stash](https://git-scm.com/book/en/v1/Git-Tools-Stashing), pull, and then pop the stash. The changes you have made in the `info490-fa15` directory are saved and temporarily hidden, and will appear again with `git stash pop` after you do `git pull`.
 ```shell
 $ git stash
 $ git pull
 $ git stash pop
 ```

3. But I think the best way is to fork the course repository and do proper version control of your own repository. The steps involved will be similar to step 1-6 in the [pull request guide](https://github.com/UI-DataScience/info490-fa15/blob/master/CONTRIBUTING.md), but you wouldn't submit a pull request at the end. If you have your own forked repository, you can [sync the fork](https://help.github.com/articles/syncing-a-fork/) by doing
 ```shell
 $ git fetch upstream
 $ git checkout master
 $ git merge upstream/master
 ```
