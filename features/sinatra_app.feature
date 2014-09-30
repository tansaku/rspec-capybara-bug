Feature: SinatraApp

  Scenario: nicely exposes internal sinatra errors and does not break tests where it should
    Given I am on '/sinatra_error'
    And I should see "2iuwqo7ykhg23uikqwdjg2kh3ihqwdqkwj"
