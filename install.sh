#!/bin/bash

GYMDIR="/usr/local/anaconda3/lib/python3.6/site-packages/gym/envs"

echo "installing mdp_gridworld.py into ${GYMDIR}/toy_text"

cp envs/mdp_gridworld.py ${GYMDIR}/toy_text

echo "[TODO]"
echo "1) Read README and edit the following file"
echo "${GYMDIR}/__init__.py"
echo "2) Read README and edit the following file"
echo "${GYMDIR}/toy_text/__init__.py"