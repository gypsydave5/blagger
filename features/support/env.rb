ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Blagger

class BlaggerWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  BlaggerWorld.new
end
