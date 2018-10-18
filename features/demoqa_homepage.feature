Feature: Homepage

  Scenario: Homepage loads correctly
    Given I am on the homepage
    Then I should see the homepage slides

  Scenario: Navigating the image slides
    Given I am on the homepage
    When I click on the first slide menu option
    Then I should see a slide with a magic mouse image

  Scenario: Buying an item from the image slides
    Given I am on the homepage
    When I click on the Buy Now button
    Then I should be on a specific product page
