[![Testspace](http://www.testspace.com/public/img/testspace_logo.png)](http://www.testspace.com)
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

[![Space Health](https://samples.testspace.com/projects/119/spaces/441/badge)](https://samples.testspace.com/projects/119/spaces/441 "Test Cases")
[![Space Metric](https://samples.testspace.com/projects/119/spaces/441/metrics/267/badge)](https://samples.testspace.com/spaces/441/schema/Code%20Coverage "Code Coverage (statements)")
[![Space Metric](https://samples.testspace.com/projects/119/spaces/441/metrics/266/badge)](https://samples.testspace.com/spaces/441/schema/Code%20Coverage "Code Coverage (methods)")
[![Space Metric](https://samples.testspace.com/projects/119/spaces/441/metrics/268/badge)](https://samples.testspace.com/spaces/441/schema/Static%20Analysis "Static Analysis (issues)")


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

Publishing Results using **Testspace**: (note, `.testspace` contains files to publish)

<pre>
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace @.testspace $TESTSPACE_TOKEN/$BRANCH_NAME
</pre> 


Checkout the [Space](https://samples.testspace.com/projects/php.phpunit). 

***

To replicate this sample: 
  - Account at www.testspace.com.
  - CI Environment Variable called **TESTSPACE_TOKEN** required:
    -  `TESTSPACE_TOKEN` = `credentials@my-org-name.testspace.com/my-project`
    - `credentials` set to `username:password` or your [access token](http://help.testspace.com/reference:client-reference#login-credentials).
    - `my-org-name.testspace.com/my-project` based on your *organization* (subdomain) and *project* names.  
