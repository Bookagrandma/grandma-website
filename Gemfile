source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
### add by us
gem 'devise'
gem 'pundit'
gem 'omniauth'
gem 'kaminari'
gem 'mini_magick'
gem 'carrierwave'
gem 'gmaps4rails'
gem 'simple_form'
gem 'activeadmin'
gem 'pg'
gem "font-awesome-rails"
gem 'rails-jquery-autocomplete'
gem 'jquery-ui-rails'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'haml', '~> 5.0', '>= 5.0.4'
gem "figaro"
gem "bootstrap-datepicker-rails"


group :development, :test do

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  #gem 'spring'
  #gem 'spring-watcher-listen', '~> 2.0.0'

###add by us
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-byebug'
  gem 'faker'
  gem 'letter_opener'
end

###add by us
group :production do
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
