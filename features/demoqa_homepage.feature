Feature: Homepage

  Scenario: Homepage loads correctly
    Given I am on the homepage
    Then I should see the homepage slides

  Scenario Outline: Navigating the image slides
    Given I am on the homepage
    When I click on the slide menu option <number>
    Then I should see a slide with a <img_string> image

    Examples:
      | number | img_string   |
      | 1      | magicmouse   |
      | 2      | timthumb.png |
      | 3      | Nano         |

  Scenario: Buying an item from the image slides
    Given I am on the homepage
    And I click on the slide menu option 1
    When I click on the magicmouse image
    Then I should be on a specific product page

  Scenario: Clicking an item image from the image slides
    Given I am on the homepage
    And I click on the slide menu option 2
    When I click on the Buy Now button
    Then I should be on a specific product page

  Scenario: Clicking more info for an item from the image slides
    Given I am on the homepage
    And I click on the slide menu option 3
    When I click on more info
    Then I should be on a specific product page
