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
    And I should see "Thank you for signing up Geronimo"

  Scenario: When a user fails to submit a username an error message is displayed
    Given I visit the signup page
    When I enter "Name" with ""
    And I enter "Password" with "qweqwe"
    And I enter "Password confirmation" with "qweqwe"
    And I click "Register"
    Then I should be on the registration page
    And I should see "You need to add a name"