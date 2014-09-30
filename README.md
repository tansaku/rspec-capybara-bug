RSpec Capybara Bug
==========================

This simple example exposes a usability issue with RSpec Capybara whereby the presence of sinatra errors will lead to arbitrary checks for content passing since the source of the test is pulled into the sinatra error page.  Please clone and run `bundle` and then `rspec` for details.

Conversely Cucumber handles the situation much more smoothly by displaying the actual sinatra error in the cucumber output:

```sh
→ cucumber features/sinatra_app.feature
Feature: SinatraApp

  Scenario: nicely exposes internal sinatra errors and does not break tests where it should # features/sinatra_app.feature:3
    Given I am on '/sinatra_error'                                                          # features/step_definitions/web_steps.rb:19
      undefined local variable or method `an_undefined_method' for #<SinatraApp:0x007ff36640f860> (NameError)
      ./lib/sinatra_app.rb:10:in `block in <class:SinatraApp>'
      ./features/step_definitions/web_steps.rb:20:in `/^(?:|I )am on '(.+)'$/'
      features/sinatra_app.feature:4:in `Given I am on '/sinatra_error''
    And I should see "2iuwqo7ykhg23uikqwdjg2kh3ihqwdqkwj"                                   # features/step_definitions/web_steps.rb:107

Failing Scenarios:
cucumber features/sinatra_app.feature:3 # Scenario: nicely exposes internal sinatra errors and does not break tests where it should

1 scenario (1 failed)
2 steps (1 failed, 1 skipped)
0m0.013s
```
