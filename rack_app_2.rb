require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'rack'
  gem 'puma'
end

require 'rack/handler/puma'
require './puma_rack_app.rb'


Rack::Handler::Puma.run(PumaRackApp.new, Port: 3000)