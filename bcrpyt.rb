require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

my_password = BCrypt::Password.create("my password")

puts my_password
puts my_password.version
puts my_password.cost
puts my_password == "my password"
puts my_password == "not my password"

