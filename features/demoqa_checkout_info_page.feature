
Feature: Checkout Page Info

  Scenario: Selecting a shipping location
    Given i have a product added to my basket
    And I clicked continue to get to the checkout info page
    When I i select a country from the dropdown list
    And I input a state or province
    And I click on the Calculate Button
    Then I should see the total shipping price change


   
