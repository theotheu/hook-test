#!/bin/bash

git commit -am "DEVELOPMENT: change to push 1) to development, 2) merge to test, 3) push to test"

git push origin development

git checkout test

git commit -am "MERGE: change to push 1) to development, 2) merge to test, 3) push to test"

git merge development

git commit -am "TEST: change to push 1) to development, 2) merge to test, 3) push to test"

git push origin test

git checkout development
