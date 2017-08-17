#!/bin/bash

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

# Download and configure the Testspace client
mkdir -p $HOME/bin
curl -fsSL https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | tar -zxvf- -C $HOME/bin
CI=true testspace config url samples.testspace.com

# Push content (refer to ".testspace.txt" for list of content)
testspace @.testspace.txt "#c9.Build" --repo git
