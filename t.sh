#!/bin/bash

git checkout development

echo "function fn`date +%Y%m%d%H%i%s`(){}" >> server/test.js
echo "// `date`" >> README.md

git commit -am "DEVELOPMENT: `date`"

git push origin development


exit 0

git checkout test

#git commit -am "MERGE: `date`"

#git merge --no-edit development

git merge --commit -m "MERGE: `date`" development

#git commit -am "TEST: `date`"

git push origin test

git checkout development
