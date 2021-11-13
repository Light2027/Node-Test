#!/bin/bash
echo "# Node-Test" >> README.md
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/Light2027/Node-Test.git
git push -u origin main