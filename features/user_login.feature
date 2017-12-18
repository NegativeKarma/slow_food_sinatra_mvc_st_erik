Feature: Login Page
  As a visitor
  In order to access the page
  I would like to be able to login

  Background:
  Given the following users exist
    | name   | password |
    | Scott  | password |

  Scenario: Visitor writes correct information and presses login
    Given I visit the login page
    When I enter "Username" with "Scott"
    And I enter "Password" with "password"
    And I click "Login"
    Then I should be on the landing
    And I should see "Welcome Scott! You are logged in"
    And I should see "Logged in as: Scott"

  Scenario: Visitor writes incorrect information and presses logins
    Given I visit the login page
    When I enter "Username" with "Scott"
    And I enter "Password" with "buckinghamshire"
    And I click "Login"
    Then I should see "Incorrect username or password"

  Scenario: Visitor is finished and presses logout
    Given I visit the login page
    When I enter "Username" with "Scott"
    And I enter "Password" with "password"
    And I click "Login"
    And I click "Logout"
    Then I should be logged out
    And I should see "You have been logged out"
