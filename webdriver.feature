@webdriver
  Feature: WebDriver
    @webdriver1
    Scenario: Load any page
      Given I open a page
      And I print page details
    @webdriver2
    Scenario: switch webpage
      Given I navigate to "quote"
      And I wait 5 sec
    @webdriver3
    Scenario: end to end
      Given I open form
      When I fill out first Name as "John" and last Name as "Paul"
      And I wait 5 sec
      And I filling out all required fields
      Then I assure required fields
      And I wait 3 sec
