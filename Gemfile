# A sample Gemfile
source "https://rubygems.org"

# gem "rails"
gem 'rails', '~>2.3'

group :production do
  gem 'pg'
  gem 'newrelic_rpm'
end

group :development do
  gem 'sqlite3'
  gem 'taps', :require => false
  gem 'jammit', :require => false
  gem 'annotate', :require => false
  gem 'hirb', :require => false
  gem 'wirble', :require => false
end

gem "paperclip", "~> 2.8"
gem "will_paginate", "~> 2.3"
gem "permalink_fu", "~> 1.0.0"
gem "simple_captcha", "~> 0.1.3"
gem "rmagick", "~> 2.13.2", :require => false
#gem 'aws-sdk' # for storing uploaded images on S3

gem 'thin'
