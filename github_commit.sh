#!/bin/bash
git add .
read -p "commit desc" desc
git commit -m $desc
git push
