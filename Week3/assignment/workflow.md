## Suggested Workflow

Since many of you are new to the concept of Virtual Machine (VM), Docker, and
Git, I will outline here how I would go about doing the assignments if I were running Boot2Docker on Windows or OS X. The problem here is that almost every assignment in this course will have an IPython notebook template on GitHub INFO490 repository, 

https://github.com/INFO490/spring2015

and you **must** use these templates in your notebook server. In the following,
I will describe how to use Git to download the templates and use them on your
IPython notebook server.

First, a disclaimer: I don't use Windows or OS X and run Linux exclusively for everyday use, and my suggestion described in the following may not be the optimal one. If you can think of a better way to use the IPython templates on the course repository, you may do it your way as long as you use the provided templates. But also note that you **must** use the course Docker image; installing and running IPython on Windows or OS X is **not** acceptable and may result in a zero for the assignment.

In the following, I will assume that you have [Folder Sharing](https://github.com/INFO490/spring2015/blob/master/week00/docker_folder_sharing.md) enabled and use [Problem 3.1](p1.md) as an example.

If your data volume named `my-data` is mounted at `/data`, run a terminal with
the data volume mounted in the container:

```console
$ docker run --rm -it --volumes-from my-data lcdm/info490 /bin/bash
```

Here, by specifying ``--rm`` argument the docker container is automatically
removed when you exit the container. This will give you a command prompt in container. Move to `/data` and run `git clone`:

```console
root@containerID:/notebooks# cd /data
root@containerID:/data# git clone https://github.com/INFO490/spring2015
root@containerID:/data# ls
spring2015
root@containerID:/data# exit
```

Now your data volume has a copy of the course repository. Note that you run `git clone` only once. Once you have cloned a repository, to update your local copy of the repository, go to the corresponding directory and run `git pull`:

```console
root@containerID:/notebooks# cd /data/spring2015
root@containerID:/data/spring2015# git pull
```

You should run `git pull` before beginning every assignment to make sure that
you have the latest copy of the course repository.

Now make sure that an IPython notebook server is running (see [Running Docker](https://github.com/INFO490/spring2015/blob/master/week00/docker_running_ipynb.md)) with your data volume mounted, and open up your web browser and go to http://192.168.59.103:8888 (the address of your notebook server may be different). Note that the notebook server only shows the notebooks in `/notebooks` folder, so you will have to move the template from `/data` to `/notebooks`. There are various ways to do this (launching a container and simply doing `cp /data/spring2015/week03/hello.ipynb /notebooks/.` is not one of them because containers are isolated). I'll show you one way to do this by demonstrating the use of [cell magics in IPython](http://nbviewer.ipython.org/github/FRidh/ipython/blob/1.x/examples/notebooks/Cell%20Magics.ipynb) at the same time.

Create a new notebook by clicking on `New Notebook`. In the notebook cell, type

```console
%%bash
cp /data/spring2015/week03/hello.ipynb /notebooks/.
```

and press <kbd>shift</kbd> + <kbd>enter</kbd>. With the `%%script` line (where
`script` in this case is `bash`), the rest of the cell will be run by that
script. Now a notebook named `hello` should appear in the list of notebooks in your *IPython Dashboard*.

Now that you know how to run shell commands from IPython notebook, you can
probably do `git pull` from the notebook as well. Alternatively, you can run
`git clone` or `git pull` in the data volume, and since this data volume is
accessible from your host machine, simply drag and drop the file onto the
notebook server dashboard from your host machine. 

When you are done writing your code, go to *FIle* > *Download as*, and download
your code **both** as `.ipynb` and `.py`. The IPython notebooks format will be
used for peer grading, and the regular Python format will be used for
instructor grading and for importing your existing codes as modules (more on
this later). You should upload both formats onto Moodle.
