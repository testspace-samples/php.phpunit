[![Testspace](http://www.testspace.com/public/img/testspace_logo.png)](http://www.testspace.com)
***

## PHP/PHPUnit sample for demonstrating Testspace 

Sample demonstrates techniques for using Testspace with PHP code and the [PHPUnit test framework](https://phpunit.de/).

[![Build Status](https://travis-ci.org/testspace-samples/php.phpunit.svg?branch=master)](https://travis-ci.org/testspace-samples/php.phpunit)
[![Space Health](http://munderseth.stridespace.com/projects/260/spaces/799/badge)](http://munderseth.stridespace.com/projects/260/spaces/799 "Test Cases")
[![Space Metric](http://munderseth.stridespace.com/projects/260/spaces/799/metrics/164/badge)](http://munderseth.stridespace.com/projects/260/spaces/799/metrics#metric-164 "Line/Statement Coverage")

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

Checkout the [sample](http://munderseth.stridespace.com/projects/php/spaces/phpunit.example). 

***

To fork this example using Travis requires:
  - Account at www.testspace.com (use `Open`)
  - Travis Environment Variables:
    - The `TESTSPACE_USER_TOKEN` *Name* is set to the *Value* defined as your [Access token](http://help.testspace.com/using-your-organization:user-settings).
    - The `TESTSPACE_URL` *Name* is set to `my-org-name.testspace.com/my-project/my-space`. Refer [here](http://help.testspace.com/reference:runner-reference#config) for more details. This example uses `samples.testspace.com/php/phpunit.example`.
