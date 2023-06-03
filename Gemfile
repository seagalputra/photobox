source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', require: false
gem 'faker'
gem 'haml-rails'
gem 'html2haml'
gem 'image_processing', '>= 1.2'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pagy', '~> 6.0'
gem 'passenger', '>= 5.3.2', require: 'phusion_passenger/rack_handler'
gem 'rails', '~> 7.0.5'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'sqlite3', '~> 1.4'
gem 'stimulus-rails'
gem 'tailwindcss-rails', '~> 2.0'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'unsplash'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'annotate'
  gem 'awesome_print'
  gem 'rubocop', require: false
  gem 'rubocop-capybara'
  gem 'rubocop-rails'
  gem 'solargraph'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
