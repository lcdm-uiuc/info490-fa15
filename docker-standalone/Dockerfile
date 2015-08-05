FROM jupyter/notebook

MAINTAINER Edward J Kim <edward.junhyung.kim@gmail.com>

RUN apt-get update && \
    apt-get install -y -q \
    vim \
    wget \
    # need fortran compiler to install pymc
    gfortran \
    # fonts needed in seaborn 
    ttf-liberation \ 
    ttf-bitstream-vera 
 
RUN pip3 install traitlets

# jupyter is our user
RUN useradd -m -u 1000 -s /bin/bash data_scientist

USER data_scientist
ENV HOME /home/data_scientist
ENV SHELL /bin/bash
ENV USER data_scientist

WORKDIR /home/data_scientist/

EXPOSE 8888

# set colors for terminal prompt
RUN echo 'export PS1="\e[1;34m\u@\h:\w$ \e[0m"' >> /home/data_scientist/.bashrc

CMD ["jupyter", "notebook", "--no-browser", "--port=8888", "--ip=*", "--matplotlib=inline"]
