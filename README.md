[![Testspace](http://www.testspace.com/public/img/testspace_logo.png)](http://www.testspace.com)
***

## PHP/PHPUnit sample for demonstrating Testspace 

Sample demonstrates techniques for using Testspace with PHP code and the [PHPUnit test framework](https://phpunit.de/).

[![Build Status](https://travis-ci.org/testspace-samples/php.phpunit.svg?branch=master)](https://travis-ci.org/testspace-samples/php.phpunit)
[![Space Health](https://samples.testspace.com/projects/86/spaces/290/badge)](https://samples.testspace.com/projects/86/spaces/290 "Test Cases")
[![Space Metric](https://samples.testspace.com/projects/86/spaces/290/metrics/185/badge)](https://samples.testspace.com/projects/86/spaces/290/metrics#metric-185 "Line/Statement Coverage")


***

In order to run this sample you will need a host workstation that supports the PHP.

<pre>
composer install
vendor/bin/phpunit tests/unit --log-junit tests-results.xml --coverage-clover coverage.xml
</pre>

Publishing results example: 

<pre>
testspace publish [Tests]tests-results.xml{tests/unit} coverage.xml
</pre> 

Checkout the [Space](https://samples.testspace.com/projects/php/spaces/phpunit). 

***

To fork this example using Travis requires:
  - Create an account at www.testspace.com
  - Travis Environment Variables:
    - `TESTSPACE_USER_TOKEN` set to the `value` defined as your [Access token](http://help.testspace.com/using-your-organization:user-settings).
    - `TESTSPACE_URL` set to `my-org-name.testspace.com/my-project/my-space`. Refer [here](http://help.testspace.com/reference:runner-reference#config) for more details. This example uses `samples.testspace.com/php/phpunit`.
