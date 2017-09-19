require "cucumber"
require "httparty"
require "faker"
require "yaml"
require "capybara"

api_configs = YAML.load_file('./config/api.yml')
$profile = ENV['PROFILE']
$api = api_configs[$profile]

# Ignore SSL certificate for API requests
HTTParty::Basement.default_options.update(verify: false)


Capybara.register_driver :selenium do |app|
  #Capybara::Selenium::Driver.new(app, :browser => :chrome)
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10

Capybara.configure do |config|
    config.app_host = 'https://the-internet.herokuapp.com/dynamic_controls'
end

