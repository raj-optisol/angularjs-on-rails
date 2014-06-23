# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "angularjs-on-rails"
  gem.homepage = "http://github.com/raj-optisol/angularjs-on-rails"
  gem.license = "MIT"
  gem.summary = "Easily setup and use AngularJS with Rails 3.1 and greater"
  gem.description = "AngularJS on Rails wraps the AngularJS 1.2.18 library for use in Rails 3.1 and above. This project is an application skeleton for a typical AngularJS web app. You can use it to quickly bootstrap your angular webapp projects"
  gem.email = "rajendran.s@optisolbusiness.com"
  gem.authors = ["Rajendran S"]
  gem.files = Dir["lib/**/*"] + Dir["app/**/*"] 
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['test'].execute
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "angularjs-on-rails #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
