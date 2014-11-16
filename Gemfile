ruby '2.1.2'
source 'https://rubygems.org'

gem 'rails', '3.2.19'

gem 'pg'
gem 'puma', '~> 2.9.2'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass', '~> 3.3.0'
  gem 'uglifier', '>= 1.0.3'
end

gem "jquery-rails", "< 3.0.0"

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'better_errors'
end

group :development, :test do
  gem 'factory_girl_rails', "~> 4.5"
  gem 'pry-rails'
  gem "rspec-rails", "~> 2.0"
  gem "capybara", "~> 2.0"
  gem "poltergeist"
  gem "database_cleaner"
end
