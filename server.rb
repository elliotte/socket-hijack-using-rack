require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'rack'
  gem 'puma'
end

require 'rack/handler/puma'
require './rack_app.rb'


Rack::Handler::Puma.run(PumaRackApp.new, Port: 3000)



## OLD ATTEMPTS
# require 'bundler/inline'

# gemfile do
#   source 'https://rubygems.org'
#   gem 'puma'
# end

# require 'puma/configuration'

# # app = Proc.new do |env|
# #     ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
# # end
# # Rack::Handler::Puma

# app = ->(env) { ['200', {'Content-Type' => 'text/html'}, ['Hello, World!']] }


# config = Puma::Configuration.new({}) do |user_config, _|
#   user_config.app(app)
#   user_config.port(3000)
# end

# Puma::Launcher.new(config).run