#!/bin/bash


git add .
read -p "hey say something: " something
git commit -m "${something}"
git push
