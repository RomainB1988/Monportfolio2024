source "https://rubygems.org"

ruby "3.3.6"


gem "rails", "~> 7.2.1"
gem "sprockets-rails"

gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

group :development do
  gem "sqlite3", ">= 1.4" # SQLite est utilisé uniquement en développement
  gem "web-console"
end

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "dotenv-rails", "~> 3.1.1"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# Pour Windows si nécessaire
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

group :production do
  gem 'pg', '>= 1.1' # PostgreSQL pour Heroku
end

group :development, :production do
  gem 'dotenv-rails'
end
