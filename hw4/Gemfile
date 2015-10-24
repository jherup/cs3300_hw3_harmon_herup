ruby '2.2.3'
source 'http://rubygems.org'
gem 'rails', '4.2.4'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'thin'
end

group :test do
  gem 'simplecov'

  gem 'cucumber-rails'

  gem 'guard'
  gem 'guard-cucumber'
  gem 'guard-rspec'
end

group :production do
  gem 'pg'
  # Use unicorn as the web server removes lots of potential heroku issues.
  gem 'unicorn'
  gem 'rails_12factor'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'haml'

# Deploy with Capistrano
# gem 'capistrano'
