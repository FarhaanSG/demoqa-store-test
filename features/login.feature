Feature: Login

    Scenario Outline: Inputting correct user details logs user in
        Given I access the home page
        And I access the account page via the <link> link with the id of <id> 
        And I input a valid username
        And I input a valid password
        When I click on the login button
        Then I am redirected and logged in

        Examples:
            | link | id             |
            | nav  | #account       |
            | foot | #menu-item-55  |
    
    Scenario: Inputting incorrect username details
        Given I access the home page
        And  I access the account page via the nav link with the id of #account  
        And I input a invalid username
        And I input a valid password
        When I click on the login button
        Then I get an error message
    
    Scenario: Inputting incorrect password details
        Given I access the home page
        And I access the account page via the foot link with the id of #menu-item-55 
        And I input a invalid username
        And I input a valid password
        When I click on the login button
        Then I get an error message