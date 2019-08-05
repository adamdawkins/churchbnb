Feature: List a guest church
  As a guest church
  I want to list my church as needing a building
  So that I can find partner churches to use their building.



  Scenario: Add guest listing
    Given I am on the new guest page
    When I create a guest account with name "Church Without A Building"
    Then I should see "Church Without A Building"
