@quote
Feature: Quote predefined
@quote1
Scenario: Submit with optional
  Given I open url "https://skryabin.com/market/quote.html"
  Then I should see page title as "Get a Quote"
  And I wait for 2 sec
  When I type "Krish" into element with xpath "//input[@name='username']"
  And I type "test@gmail.com" into element with xpath "//input[@name='email']"
  And I type "qwerty" into element with xpath "//input[@id='password']"
  And I type "qwerty" into element with xpath "//input[@id='confirmPassword']"
  And I click on element with xpath "//input[@id='name']"
  And I type "Krish" into element with xpath "//input[@id='firstName']"
  And I type "Raj" into element with xpath "//input[@id='lastName']"
  And I click on element with xpath "//span[contains(text(),'Save')]"
  Then element with xpath "//input[@id='name']" should have attribute "value" as "Krish Raj"
  And I wait for 2 sec
  When I click on element with xpath "//select[@name='countryOfOrigin']"
  And I click on element with xpath "//option[contains(text(),'India')]"
  And I wait for 2 sec
  And I click on element with xpath "//span[contains(text(),'Female')]"
  And I click on element with xpath "//input[@name='allowedToContact']"
  And I wait for 2 sec
  And I type "123 woodside Dr" into element with xpath "//textarea[@id='address']"
  And I click on element with xpath "//option[contains(text(),'BMW')]"
  And I wait for 3 sec
  And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
  And I click on element with xpath "//button[@id='formSubmit']"
  And I wait for 2 sec
  Then element with xpath "//div[@id='quotePageResult']" should be displayed
  And I wait for 3 sec
  And element with xpath "//b[@name='username']" should contain text "Krish"
  And element with xpath "//b[@name='password']" should contain text "[entered]"
  And I wait for 2 sec
  And element with xpath "//b[contains(text(),'BMW')]" should be displayed
  And element with xpath "//b[@name='address']" should contain text "123 woodside Dr"
  And element with xpath "//b[@name='firstName']" should contain text "Krish"
  And element with xpath "//b[@name='lastName']" should contain text "Raj"
  And I wait for 2 sec

