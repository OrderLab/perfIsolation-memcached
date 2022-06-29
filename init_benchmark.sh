#!/bin/bash

sudo apt-get install -y scons libevent-dev gengetopt 
git clone git@github.com:leverich/mutilate.git
cd mutilate
scons
