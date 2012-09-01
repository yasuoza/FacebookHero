Feature: Facebook
  I want to be a hero

  Scenario: Be a HERO
    Given I am on the stage
    When I enter user info
      | email | youremail@example.com |
      | pass  | yourpassword          |
    Then I should click facebook login button
    Then Find friends waiting for HERO
    Then Be a hero!
