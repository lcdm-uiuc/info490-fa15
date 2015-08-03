## An easier way to use the shared folder

Using the `-v` option seems to easier than creating a data container. 

### Windows

The Boot2Docker automatically mounts the `C:\Users` directory of
  your **Windows** machine onto the Boot2Docker VM. 

When you start Boot2Docker, you are in `/home/docker` folder.

```console
docker@boot2docker:~$ pwd
/home/docker
```

The shared folder is located at `/c/Users`. At the Boot2Docker prompt,

```console
$ ls /c/Users
```

You should see your users directories (your username) of the *Windows* machine.
  Create a sub-directory:

```console
$ mkdir /c/Users/<username>/info490
```

Obviously, you should replace `<username>` with your username.

Back up important files in the currently running notebook server container. 
  Stop and remove the container using `docker stop` and `docker rm`.
  Now, use the `-v` option to mount this volume onto the IPython notebook
  server container:

```console
$ docker run -d -p 8888:8888 -e "PASSWORD=YourPassword" -v /c/Users/<username>/info490:/notebooks/data lcdm/info490
```

Now you should be able to share files between the `c:\Users\<username>\info490`
  in Windows with the `/notebooks/data` directory
  in your notebook server container.
  Open a web browser in Windows, access the notebook server,
  and check if a sub-directory named `data` exists.
  Also, go to the corresponding directory in Windows and
  check if there is a directory named `info490`.
  Try transferring files via the shared folder.

To summarize,

1. Create a directory in Boot2Docker `/c/Users/<username>`.
2. Use the `-v` option when you create a notebook server container:
   `docker run -v /c/Users/<username>/<dirname>:/notebooks/info490`.

### Mac

If you are using a Mac, it's even easier than Windows. When you start
Boot2Docker, you are already in `/Users/<username>` directory.

```console
$ pwd
/Users/<username>
```

Create a sub-directory:

```console
$ mkdir info490
```

Back up important files in the currently running notebook server container.
  Stop and remove the container using `docker stop` and `docker rm`.
  Now, use the `-v` option to mount this volume onto the IPython notebook
  server container:

```console
$ docker run -d -p 8888:8888 -e "PASSWORD=YourPassword" -v /Users/<username>/info490:/notebooks/data lcdm/info490
```

Now you should be able to share files between the `/Users/<username>/info490`
  in OS X with the `/notebooks/data` directory
  in your notebook server container.
  Open a web browser in OS X, access the notebook server,
  and check if a sub-directory named `data` exists.
  Also, go to the corresponding directory in OS X and
  check if there is a directory named `info490`.
  Try transferring files via the shared folder.

To summarize,

1. Create a sub-directory in Boot2Docker.
2. Use the `-v` option when you create a notebook server container:
   `docker run -v /Users/<username>/<dirname>:/notebooks/data`.

### Linux

In Linux, you don't need Boot2Docker, so you can just do

```console
$ pwd
/home/docker
$ mkdir info490
$ docker run -d -p 8888:8888 -e "PASSWORD=YourPassword" -v
/home/<username>/info490:/notebooks/data lcdm/info490
```
