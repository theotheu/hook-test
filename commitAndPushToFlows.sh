#!/bin/bash
git checkout development

git commit -am "DEVELOPMENT: `date`"

git push origin development

git checkout test

#git fetch --all
#git reset --hard origin/test

git merge --no-edit development
git commit -am "MERGE: `date`"

if [ -f ./test/static-analyzer/error_log.txt ]; then
	echo "=~=~=~=~= ERRORS: No commit for branch 'test' was performed. =~=~=~=~=";
	echo "=~=~=~=~= Resolve the conflicts before contineing.           =~=~=~=~=";
	git checkout development
	exit 1
fi

#git merge --commit -m "MERGE: `date`" development

#git commit -am "TEST: `date`"

git push origin test

git checkout development
