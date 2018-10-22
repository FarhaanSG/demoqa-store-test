Feature: Checkout Page Info

  Scenario: Selecting a shipping location
    Given I have a product added to my basket
    And I clicked continue to get to the checkout info page
    When I select a country from the dropdown list
    And I input a state or province
    And I click on the Calculate Button
    Then I should see the total shipping price change

  Scenario: Sigining in before purchase
    Given I have a product added to my basket
    And I clicked continue to get to the checkout info page
    When I enter a valid username
    And I enter a valid password
    And I click the sign in button
    Then I should be able to enter in a email
    And I should be able to enter in the Billing, Contact and Shipping Address details
    And I should be able to click purchase
    And I should be able to view a summary of my purchase
