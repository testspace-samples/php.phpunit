#!/bin/bash

# Clean
# Clean
echo "removing files"
rm analysis-sniffer.xml
rm analysis-sniffer-blame.txt
rm analysis-mess.xml
rm tests-results.xml
rm coverage.xml

# Build
composer update

# Analysis Code
vendor/bin/phpcs src tests --report-gitblame=analysis-sniffer-blame.txt --report-checkstyle=analysis-sniffer.xml
vendor/bin/phpmd src,tests xml codesize,naming,unusedcode --reportfile analysis-mess.xml

# Test Code
vendor/bin/phpunit tests/unit --log-junit tests-results.xml --coverage-clover coverage.xml


# Publish

## Requires TESTSPACE_TOKEN = $ACCESS_TOKEN:@samples.testspace.com. 

BRANCH_NAME=`git symbolic-ref --short HEAD`
GIT_URL=`git remote show origin -n | grep Fetch\ URL: | sed 's/.*URL: //'`
REPO_SLUG=`echo ${GIT_URL#*github.com?} | sed 's/.git//'`

curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace @.testspace.txt $TESTSPACE_TOKEN/${REPO_SLUG/\//:}/${BRANCH_NAME}#c9.Build