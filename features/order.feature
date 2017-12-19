Feature: User can add dish to order
  As a customer
  In order to buy a dish I like
  I would like to be able to add a dish to an order

  Background:
    Given the following products exist
      | name   | price | description | category |
      | Kebab  | 50    | Good        | Starter  |
      | Cheese | 20    | Great       | Main     |
      | Cake   | 30    | Super       | Dessert  |

      Scenario: User clicks "Order" on a dish an creates an order
        Given I visit the page
        And I click "Order" on "Kebab"
        Then there should be an order made for me
        And "Kebab" should be in the Order
        And I should be notified "Kebab has been added to your order"
