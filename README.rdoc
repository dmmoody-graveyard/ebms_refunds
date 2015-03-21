EBMS Refund Request App
=======================

by <a href="http://duanemoody.io" target="_blank">Duane M. Moody</a>.

EBMS Refund Request App tracks all refund requests made by EBMS.

Installation
------------

Install EBMS Refund Request App by first cloning the repository.
```
$ git clone http://github.com/dmmoody/ebms_refunds.git
```

Install all of the required gems:
```
$ bundle install
```

Database Setup
--------------

This app uses PostreSQL.

Run the following in the command line:
```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Running the app
---------------

To run the app, ```\cd``` into the root folder for the app and start the webserver:
```
$ rails server
```

In your web browser, go to http://localhost:3000

Contribute
----------

- Issue Tracker: https://github.com/dmmoody/ebms_refunds/issues
- Source Code: https://github.com/dmmoody/ebms_refunds

Support
-------

If you are having issues, please let me know at: dmmoody@gmail.com

Bug reports
-----------

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as possible to help me fixing the possible bug. I also encourage you to help even more by forking and sending me a pull request.

https://github.com/dmmoody/ebms_refunds/issues

License
-------

MIT License. Copyright 2015 Duane M. Moody | <a href="http://moodyco.de">MoodyCode</a>
