# Installs necessary packages for UIUC INFO 490 course

FROM ubuntu:14.04

MAINTAINER Edward Kim <jkim575@illinois.edu>

# Not essential, but wise to set the language environment
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y -q \
    language-pack-en
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

# Python binary dependencies, developer tools, and vim
RUN apt-get install -y -q \
    build-essential \
    make \
    gcc \
    git \
    python3 \
    python3-dev \
    python3-setuptools \
    python3-pip \
    libatlas-dev \
    libatlas3gf-base \
    sqlite3 \
    libsqlite3-dev \
    vim

RUN apt-get install -y -q \
    python3-numpy \
    python3-scipy \
    python3-matplotlib \
    python3-pandas \
    python3-bs4 \
    wget

# scikit-learn cannot be installed with apt-get
RUN pip3 install scikit-learn
# install seaborn
RUN pip3 install seaborn

# pip install has more recent version of ipython
# install ipython notebook and dependencies
RUN pip3 install ipython pyzmq jinja2 pygments bokeh
RUN pip3 install statsmodels
RUN apt-get install -y -q ttf-liberation

# Extremely basic test of install
RUN python3 -c "import requests, bs4, sqlite3, \
    matplotlib, scipy, numpy, pandas, sklearn, IPython, \
    seaborn"

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888
# You can mount your own SSL certs as necessary here
ENV PEM_FILE /key.pem
# $PASSWORD will get `unset` within notebook.sh, turned into an IPython style
# hash
ENV PASSWORD MakeAPassword
ENV USE_HTTP 1

ADD notebook.sh /
RUN chmod u+x /notebook.sh

CMD ["/notebook.sh"]
