require 'capybara'
require 'cucumber'
require "capybara/cucumber"
require 'rspec'

require_relative '../../features/page_object/start_page.rb'

Capybara.default_driver = :selenium
Capybara.app_host = "http://pogoda.yandex.ru"