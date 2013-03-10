#encoding: utf-8

Given(/^I am visit yandex weather page$/) do
  visit("/")
end

When(/^I fill search query with "(.*?)"$/) do |city|
  @city = city
  @start_page = StartPage.new
  @start_page.search_query(@city)
end

When(/^I push search button$/) do
  @start_page.search
end

Then(/^I should see weather forecast for selected city$/) do
  (@start_page.check_weather == @city).should be true
end