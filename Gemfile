source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

gem 'simple_form'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

group :test, :development do


  gem 'ruby-debug19', require: "ruby-debug" unless ENV['TRAVIS']

  gem 'rspec-rails'

  gem 'factory_girl_rails', '~> 1.2'
  gem 'ffaker'

  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'shoulda', '>= 3.0.0.beta'
  gem 'launchy'
end
