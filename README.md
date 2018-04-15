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

#Configurando RSPEC e Capybara

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

#Guardfile

watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { "spec/features" }
watch(%r{^app/models/(.+)\.rb$})  { "spec/features" }

Rails config changes
  watch(rails.spec_helper)     { rspec.spec_dir }
  watch(rails.routes)          {"spec"}#{ "#{rspec.spec_dir}/routing" }
  watch(rails.app_controller)  { "#{rspec.spec_dir}/controllers" }

Capybara features specs
  watch(rails.view_dirs)     { "spec/features"} #{ |m| rspec.spec.call("features/#{m[1]}") }
  watch(rails.layouts)       { |m| rspec.spec.call("features/#{m[1]}") }'
  
#Cucumber
cucumber --init