@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"
  @predefined2
  Scenario: Predefined steps for Yahoo
    Given I open url "https://www.Yahoo.com"
    Then I should see page title as "Yahoo | Mail, Weather, Search, Politics, News, Finance, Sports & Videos"
    Then element with xpath "//input[@id='ybar-sbq']" should be present
    When I type "oscar" into element with xpath "//input[@id='ybar-sbq']"
    Then I click on element using JavaScript with xpath " //button[@id='ybar-search']"
    Then I wait for element with xpath "//div[@id='results']" to be present
    Then element with xpath "//div[@id='results']" should contain text "oscar"
  @predefined3
  Scenario: Predefined steps for yahoo
    Given I open url "https://www.yandex.com"
    Then I should see page title as "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "lake tahoe" into element with xpath "//input[@id='text']"
    Then I click on element using JavaScript with xpath "//tbody/tr[2]/td[2]/form[1]/div[2]/button[1]"
    Then I wait for element with xpath "//body/main[1]/div[2]" to be present
    Then element with xpath "//body/main[1]/div[2]" should contain text "tahoe"
  @predefined4
