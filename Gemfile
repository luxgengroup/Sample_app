source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'gravatar_image_tag'
gem 'will_paginate', '~> 3.0'
gem 'faker', :require => false
gem 'factory_girl_rails'

group :development do
  gem 'rspec-rails', '2.10.0'
  gem 'annotate'
  gem 'guard-livereload'
end

gem 'sqlite3', :group => [:development, :test]

group :production do
  gem 'thin'
  gem 'pg'

end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.4'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'

group :test do
  gem 'capybara', '1.1.2'
  gem 'spork'
  gem 'autotest'
  gem 'autotest-fsevent'                                                
  gem 'autotest-growl'
  gem "ZenTest"
  gem "autotest-rails-pure"
  gem 'rspec-rails', '2.10.0'
  gem 'webrat'
end


