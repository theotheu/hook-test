#!/bin/bash

git checkout development

echo "// `date`" >> server/test.js
echo "// `date`" >> README.md

git commit -am "DEVELOPMENT: `date`"

git push origin development

git checkout test

#git commit -am "MERGE: `date`"

git merge development

#git commit -am "TEST: `date`"

git push origin test

git checkout development
