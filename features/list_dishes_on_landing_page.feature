Feature: List dishes on landing page
  As a customer/visitor
  In order to decide on what dish to order
  I would like to see a list of available dishes the moment the site displays

  Scenario: Visitor sees a list of dishes grouped by category on the page
    Given there is a dish called "Hot Dog" with a price of "20" with description of "Great Hot Dog" and category of "Starter" in the system
    And there is a dish called "Hamburger" with a price of "30" with description of "Great Hamburger" and category of "Main" in the system
    And there is a dish called "Grilled Cheese" with a price of "50" with description of "Great Grilled Cheese" and category of "Dessert" in the system
    When I visit the site
    Then I would like to see "Hot Dog" with the price of "20 kr"
