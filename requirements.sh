#!/bin/bash

# UPDATE #
echo "Updating package list"
sudo apt-get -y update >/dev/null 2>&1

# INSTALLING FUNCTIONS #
function apt_install {
	for p in $@; do
		echo "installing $p"
    	sudo apt-get -y install $p >/dev/null 2>&1
	done
}

function pip_install {
	for p in $@; do
		echo "installing $p"
    	sudo pip install $p >/dev/null 2>&1
	done
}

# MODULES #

# Basics an dependencies
apt_install python-pip libpq-dev python-dev build-essential python-setuptools
apt_install python-nose g++ git libatlas3gf-base libatlas-dev pyyaml cython unixodbc-dev
apt_install python-numpy python-pandas
pip_install ipython jupyter

# Scipy
apt_install python-scipy 

# Visualization
apt_install matplotlib
pip_install seaborn bokeh

# Scikit-learn
pip_install scikit-learn

# Cvxpy
pip_install cvxpy

# rpy2
pip_install rpy2

printf '*** SETUP FINISHED! ***'

