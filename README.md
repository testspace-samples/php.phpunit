[![Testspace](http://www.testspace.com/img/Testspace.png)](http://www.testspace.com)

***

## PHP/PHPUnit sample for demonstrating Testspace 

Sample demonstrates techniques for using Testspace with PHP code and the [PHPUnit test framework](https://phpunit.de/).

***
Using Multiple Online CI Services:

[![Build Status](https://travis-ci.org/testspace-samples/php.phpunit.svg?branch=master)](https://travis-ci.org/testspace-samples/php.phpunit)
[![CircleCI](https://circleci.com/gh/testspace-samples/php.phpunit.svg?style=svg)](https://circleci.com/gh/testspace-samples/php.phpunit)
[![Run Status](https://api.shippable.com/projects/57029e282a8192902e1b8d56/badge?branch=master)](https://app.shippable.com/projects/57029e282a8192902e1b8d56)

***
Publishing **Test Content** using www.testspace.com.

[![Space Health](https://samples.testspace.com/spaces/788/badge)](https://samples.testspace.com/spaces/788 "Test Cases")
[![Space Metric](https://samples.testspace.com/spaces/788/metrics/727/badge)](https://samples.testspace.com/spaces/788/schema/Code%20Coverage "Code Coverage (methods)")
[![Space Metric](https://samples.testspace.com/spaces/788/metrics/728/badge)](https://samples.testspace.com/spaces/788/schema/Code%20Coverage "Code Coverage (statements)")
[![Space Metric](https://samples.testspace.com/spaces/788/metrics/729/badge)](https://samples.testspace.com/spaces/788/schema/Static%20Analysis "Static Analysis (issues)")


***

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

<pre>
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace @.testspace.txt $TESTSPACE_TOKEN/$GITHUB_ORG:$REPO_NAME/$BRANCH_NAME#$BUILD_NUMBER
</pre> 

Checkout the published [Test Content](https://samples.testspace.com/projects/testspace-samples:php.phpunit). Note that the `.testspace.txt` file contains the [set of files](http://help.testspace.com/how-to:publish-content#publishing-via-content-list-file) to publish. 

***

To replicate this sample: 
  - Setup account at www.testspace.com.
  - Create a Environment variable called `TESTSPACE_TOKEN`
     - `TESTSPACE_TOKEN` = `credentials@Your-Org-Name.testspace.com`
     - `credentials` set to `username:password` or your [access token](http://help.testspace.com/reference:client-reference#login-credentials)
     - To [use Testspace with a CI system](http://help.testspace.com/how-to:add-to-ci-workflow), store `TESTSPACE_TOKEN` as a secure environment variable
     
