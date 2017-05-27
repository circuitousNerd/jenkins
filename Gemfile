source 'https://rubygems.org'

group :tests do
  gem 'puppetlabs_spec_helper', :require => false
  gem 'metadata-json-lint'
end

group :system_tests do
  gem 'beaker',                       :require => false
  gem 'beaker-rspec',                 :require => false
  gem 'beaker-puppet_install_helper', :require => false
end

gem 'puppet', ENV['PUPPET_GEM_VERSION']

# Only explicitly specify Facter/Hiera if a version has been specified.
# Otherwise it can lead to strange bundler behavior. If you are seeing weird
# gem resolution behavior, try setting `DEBUG_RESOLVER` environment variable
# to `1` and then run bundle install.
gem 'facter', ENV['FACTER_GEM_VERSION'] if ENV['FACTER_GEM_VERSION']
gem 'hiera', ENV['HIERA_GEM_VERSION'] if ENV['HIERA_GEM_VERSION']

gem 'safe_yaml', '~> 1.0.4'
# rspec must be v2 for ruby 1.8.7
if RUBY_VERSION >= '1.8.7' && RUBY_VERSION < '1.9'
  gem 'rspec', '~> 2.0'
  gem 'rake', '~> 10.0'
else
  # rubocop requires ruby >= 1.9
  gem 'rubocop'
end
