source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass', branch: '3'
gem 'devise', '~> 3.1.1'
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"
gem 'thumbs_up'
# Allow for attr_accessor in Models while using Devise Gem in Rails 4.0 due to Strong Parameters
gem 'protected_attributes'
# Allow heroku to upload images through amazon s3 server
gem 'aws-sdk', '~> 1.20.0' 
# Rails Forem Dependencies
gem 'forem', :github => "radar/forem", :branch => "rails4"
gem 'friendly_id', github: "FriendlyId/friendly_id"
gem 'cancan', git: "https://github.com/nukturnal/cancan.git"
gem "will_paginate", '3.0.4'
# Worker Tests
gem "resque", :require => "resque/server"

group :doc do
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '2.13.1'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

