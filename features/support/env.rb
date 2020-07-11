require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'selenium-webdriver'
require 'site_prism'
require 'yaml'
require 'httparty'
require 'json'
require 'jsonpath'
require 'json-schema'
require 'rspec'
require 'savon'

BROWSER ||= ENV['BROWSER'].to_sym

URL = "https://www.arezzo.com.br/content/zzvendas/#/rodrigo"

puts "URL: #{URL}"

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: %w[
      --no-sandbox
      --ignore-ssl-errors
      --ignore-certificate-errors
      --disable-popup-blocking
      --disable-gpu
      --disable-translate
      --start-maximized
      --incognito
      --acceptInsecureCerts=true
    ]
  )
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 90
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options, http_client: client)
end

Capybara.configure do |config|
  config.default_driver = BROWSER
  config.app_host = URL
end

Capybara.default_max_wait_time = 30

$project_root = File.expand_path(File.join(File.dirname(__FILE__), '/../..'))