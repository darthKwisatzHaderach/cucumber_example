#encoding: utf-8

class StartPage

  def search_query(search_query)
    Capybara.fill_in("request", :with => "#{search_query}")
  end

  def search
    Capybara.find(:xpath, "//input[@class = 'b-form-button__input' and @tabindex = '2']").click
  end

  def check_weather
    Capybara.find(:xpath, "//span[@class = 'b-navigation-city__city']").text
  end

end