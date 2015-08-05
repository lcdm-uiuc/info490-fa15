#!/bin/bash

# need a wrapper script
# https://github.com/ipython/ipython/issues/7062

jupyter notebook --no-browser --port=8888 --ip=* --matplotlib=inline
