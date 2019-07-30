Feature: List a host church

As a host church
I want to list my building
So that other churches can use the space


  Scenario: Add host listing
    Given I am on the new host page
    When I create a host account with name "Church With A Building"
    Then I should see "Church With A Building"
