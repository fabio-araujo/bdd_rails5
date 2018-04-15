# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



rails g projeto -T -d postgresql

configurar database.yml

group :development do
  gem 'rspec-rails'
end
group :test do
  gem 'capybara'
end
bundle binstubs rspec
rails generate rspec:install

gem 'guard'
gem 'guard-rspec'
gem 'guard-cucumber'

bundle binstubs guard
guard init