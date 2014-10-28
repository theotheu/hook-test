#!/bin/bash

git checkout development

echo "function fn`date +%Y%m%d%H%i%s`(){}" >> server/test.js

git commit -am "DEVELOPMENT: `date`"

git push origin development

git checkout test

git fetch --all
git reset --hard origin/test

git merge --no-edit development
git commit -am "MERGE: `date`"

#git merge --commit -m "MERGE: `date`" development

git commit -am "TEST: `date`"

git push origin test

git checkout development
