Feature: User create account
  As a customer
  In order to store my data and be able to complete an order
  I would like to be able to create an account

  Scenario: When user enter all necessary data an account is created
    Given I visit the signup page
    When I enter "Name" with "Geronimo"
    And I enter "Password" with "qweqwe"
    And I enter "Password confirmation" with "qweqwe"
    And I click "Register"
    Then I should be on the landing
    And I should see "thank you for your registration Geronimo"
