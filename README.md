[![Testspace](https://www.testspace.com/img/Testspace.png)](https://www.testspace.com)

***

## PHP/PHPUnit sample for demonstrating Testspace 

Sample demonstrates techniques for using Testspace with PHP code and the [PHPUnit test framework](https://phpunit.de/).

  * Using a Testspace Project that is `connected` with this GitHub Repo
  * Using 3 Online CI services for demonstration purposes only
  * Can review the Results at [testspace-samples:php.phpunit](https://samples.testspace.com/projects/testspace-samples:php.phpunit)  
  * Refer to our [Getting Started](https://help.testspace.com/getting-started) help articles for more information

***
Using Multiple Online CI Services:

[![Build Status](https://travis-ci.org/testspace-samples/php.phpunit.svg?branch=master)](https://travis-ci.org/testspace-samples/php.phpunit)
[![CircleCI](https://circleci.com/gh/testspace-samples/php.phpunit.svg?style=svg)](https://circleci.com/gh/testspace-samples/php.phpunit)
[![Run Status](https://api.shippable.com/projects/57029e282a8192902e1b8d56/badge?branch=master)](https://app.shippable.com/projects/57029e282a8192902e1b8d56)

***
Publishing **Test Content** using www.testspace.com.

[![Space Health](https://samples.testspace.com/spaces/788/badge?token=a5b5d2ad4ec3d1e2eefc87cbe8c994342047dad4)](https://samples.testspace.com/spaces/788 "Test Cases")
[![Space Metric](https://samples.testspace.com/spaces/788/metrics/728/badge?token=19e7e9c538ae12e6720cf1487ce7c67520613293)](https://samples.testspace.com/spaces/788/schema/Code%20Coverage "Code Coverage (statements)")
[![Space Metric](https://samples.testspace.com/spaces/788/metrics/729/badge?token=615ea7773881334762ac85f47402bf4f559d67ed)](https://samples.testspace.com/spaces/788/schema/Static%20Analysis "Static Analysis (issues)")

***

Download and configure the Testspace client 

<pre>
mkdir -p $HOME/bin
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | tar -zxvf- -C $HOME/bin
testspace config url samples.testspace.com
</pre>

In order to run this sample you will need a host workstation that supports the PHP.

Installation
<pre>
composer update
</pre>

Running Static Analysis: 

<pre>
vendor/bin/phpcs src tests --report-gitblame=analysis-sniffer-blame.txt --report-checkstyle=analysis-sniffer.xml
vendor/bin/phpmd src,tests xml codesize,naming,unusedcode --reportfile analysis-mess.xml
</pre>

Running Tests with Code Coverage
<pre>
vendor/bin/phpunit tests/unit --log-junit tests-results.xml --coverage-clover coverage.xml
</pre>

Pushing Content using **Testspace client**: 

Push Content using Testspace client 

<pre>
testspace @.testspace.txt 
</pre> 

