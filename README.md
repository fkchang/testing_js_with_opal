# Testing JavaScript w/opal-rspec

This is a simple example of a static html/compiled js project that
uses opal-rspec to test both opal and JavaScript code side by side

# Components

* Gemfile - include the necessary gems
* Rakefile - 3 tasks
  * opal-rspec task as the default
  * a build task to compile the opal code to js
  * a view tasks to build and popup the code in a browser

* app directory where you put your opal code
* index.html - the main page, suitable for use on a github page
* js directory - for javascript
* spec directory - for specs, includes opal and js classes being tested
