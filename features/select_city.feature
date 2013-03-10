Feature: Select city using search

  Scenario Outline: :
    Given I am visit yandex weather page
    When I fill search query with <city>
    And I push search button
    Then I should see weather forecast for selected city

    Examples:
      |    city    |
      |"Бора-Бора" |
      |"Каракас"   |
      |"Эль-Кувейт"|
      |"Дубай"     |
      |"Эр-Рияд"   |