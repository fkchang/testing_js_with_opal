# Testing JavaScript w/opal-rspec

This is a simple example of a static html/compiled js project that
uses opal-rspec to test both opal and JavaScript code side by side

# Components

* Gemfile - include the necessary gems
* Rakefile - 3 tasks
  * opal-rspec task as the default.  Can have several opal-rspec tests
    - set the load path here
    - set a custom index.html for the specs to load
  * a build task to compile the opal code to js in js/application.js
  * a view tasks to build the js and popup the code in a browser - OSX specific

* app directory where you put your opal code
* index.html - the main page, suitable for use on a github page
* js directory - for javascript, compiled or included
* spec directory - for specs, includes opal and js classes being tested
  * index.html - this file gets loaded by opal-rspec in the opal-rspec task
    - includes jquery because we are using opal-jquery
  * js-class-to-be-tested.js - a js file to be tested - lives here to be close to the spec
  * js-class-to-be-tested_spec.rb - a opal-rspec test for js-class-to-be-tested.js
  * opal_class_to_be_tested_spec.rb - a nominal spec for the opal equivalent of above
