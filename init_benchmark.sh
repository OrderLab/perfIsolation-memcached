#!/bin/bash

git clone git@github.com:leverich/mutilate.git
cp SConstruct mutilate
cd mutilate
scons
