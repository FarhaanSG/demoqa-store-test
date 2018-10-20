
Feature: Checkout Page Your Cart

  Scenario: Clicking on the add product button on a listed product
    Given I am able to access the website
    When I click add to cart on a product
    Then The product should be added to the basket page


  Scenario: Changing the quantity of an product in the basket
    Given I am on the checkout your cart page
    And I have a product added to the basket
    When I change the quantity of the product
    And I click on the update button
    Then I should be able to see the updated product and sub-total amount

  Scenario: Changing the quantity of the item by inputting a letter instead of a number in the quantity field in the basket
    Given I am on the checkout your cart page
    And I have a product added to the basket
    When I change the quantity of the product to a letter
    And I click on the update button
    Then The product should get removed from the checkout page

  Scenario: Removing a product form the basket page
    Given I am on the checkout your cart page
    And I have a product added to the basket
    When I click on the remove button for a product
    Then The product should get removed from the checkout page
