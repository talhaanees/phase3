67272 Creamery Project: Phase 3 Starter
===

This is the starter code for Phase 3 of the [67-272 Creamery Project](http://67272.cmuis.net/projects).  This starter code includes all models needed for this phase and passing unit tests for those models.

In addition, this starter code includes functional tests for the controllers and [cucumber tests](https://cucumber.io/) for acceptance testing.  In this phase you will write controllers and views so that these tests all pass (and the unit tests still pass and have 100 percent test coverage). Passing all these tests is not totally sufficient for a top-rate application, but you will earn the vast majority of the points for the project by just passing these tests.

You will need to run `bundle install` to get the needed testing gems.  The installers for `cucumber` and `simple_form` have already been run when we created our solution and they have been left intact for your convenience. Do not modify anything in the features directory or in the test/controllers directory, but even if you do, know that we will be replacing your contents with ours before grading in part to be sure no one is trying to pull a fast one with a revised test suite that always passes.

You can populate the development database with realistic data by first running `rake db:migrate` and then `rake dp:populate`. This will give you five stores with over 200 employees (some active, some inactive), each having one or more assignments.

As always, should you or any of your I.M. Force be caught or killed, the Secretary will disavow any knowledge of your actions.  This message will self-destruct in five seconds. Good luck.

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'


# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'faker'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'quiet_assets'
  gem 'hirb'
  gem 'wirble'
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Other gems used
gem 'time_date_helpers'
gem 'validates_timeliness'
gem 'cancancan'
gem 'simple_form'
gem 'will_paginate'
gem 'foundation-rails'
gem 'font-awesome-sass-rails'



group :test do
  gem 'shoulda'
  gem 'shoulda-matchers'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'mocha'
  gem 'cucumber'
  gem 'cucumber-rails', require: false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'email_spec'
  gem 'nokogiri'
  gem 'simplecov'
  gem 'single_test'
end


