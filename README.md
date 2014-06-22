## Optisol Angular Rails [![Gem Version](https://badge.fury.io/rb/optisol-angular-rails.svg)](http://badge.fury.io/rb/optisol-angular-rails)

optisol-angular-rails wraps the [AngularJS 1.2.18](http://angularjs.org) library for use in [Rails 3.1](http://rubyonrails.org/) and above. This project is an application skeleton for a typical AngularJS web app. You can use it to quickly bootstrap your angular webapp projects.

## Installation

In your Gemfile, add this line:

	gem 'optisol-angular-rails'

Then run the following commands:

	bundle install
	rails g angular:install

## Directory structure

Running `rails g angular:install` will create the following directory structure under `app/assets/javascripts/angular`:
  
    |-- app_name.coffee
    |-- index.html
    |	|-- controllers/
    |		|-- app_name-controller.coffee
    |	|-- directives/
    |		|-- app_name-directive.coffee
    |	|-- filters/
    |		|-- app_name-filter.coffee
    |	|-- services
    |		|-- app_name-service.coffee
    |	|-- styles
    |	|-- views
    

Add's the following directive's to your JavaScript manifest file (application.js):

	//= require angular
	//= require angular/app_name

If you desire to require (optional) Angular files, you may include them as well in your JavaScript manifest file (application.js). For example:

	//= require angular-animate
	//= require angular-resource


If you want to Skip Git ignores and keeps

	rails g angular:install -G


## Contributing to Optisol Angular Rails
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.


## About us
[Optisol Business Solutions](http://www.optisolbusiness.com)


## Copyright

Copyright (c) 2014 Rajendran S. See LICENSE.txt for
further details.

