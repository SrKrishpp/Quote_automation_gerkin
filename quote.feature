@quote
  Feature: Quote predefined
    @quote1
    Scenario: Responsive ui
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      When I resize window to 1200 and 929
      Then element with xpath "//b[@id='location']" should be displayed
      And element with xpath "//b[@id='currentDate']" should be displayed
      And element with xpath "//b[@id='currentTime']" should be displayed
      And I wait for 1 sec
      When I resize window to 890 and 929
      Then element with xpath "//b[@id='location']" should be displayed
      And element with xpath "//b[@id='currentDate']" should be displayed
      And element with xpath "//b[@id='currentTime']" should be displayed
      And I wait for 2 sec
      When I resize window to 765 and 929
      Then element with xpath "//b[@id='location']" should not be displayed
      And element with xpath "//b[@id='currentDate']" should not be displayed
      And element with xpath "//b[@id='currentTime']" should not be displayed
    @quote2
      Scenario: Username field validation
      Given I open url "https://skryabin.com/market/quote.html"
      When I type "h" into element with xpath "//input[@name='username']"
      And I click on element with xpath "//input[@name='email']"
      Then element with xpath "//label[@id='username-error']" should contain text "2 characters"
    @quote3
     Scenario: password validation
     Given I open url "https://skryabin.com/market/quote.html"
     And I wait for 3 sec
     When I type "abcd" into element with xpath "//input[@id='password']"
     And I click on element with xpath "//input[@id='confirmPassword']"
     Then element with xpath "//label[@id='password-error']" should contain text "5 characters"
     And I wait for 5 sec
    @quote4
      Scenario: Confirm Password disabled
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      And I wait for 3 sec
      And element with xpath "//input[@id='confirmPassword']" should be disabled
    @quote5
    Scenario: password match
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      And I wait for 3 sec
      When I type "abc1234" into element with xpath "//input[@id='password']"
      Then I type "abc23" into element with xpath "//input[@id='confirmPassword']"
      And I click on element with xpath "//input[@id='name']"
      Then element with xpath "//label[@id='confirmPassword-error']" should contain text "do not match"
      And I wait for 3 sec
    @quote6
    Scenario: Name Field
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      And I wait for 2 sec
      When I click on element with xpath "//input[@id='name']"
      Then element with xpath "//div[@role='dialog']" should be displayed
      And I wait for 2 sec
      When I type "Krish" into element with xpath "//input[@id='firstName']"
      And I type "Raj" into element with xpath "//input[@id='lastName']"
      And I wait for 2 sec
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should have attribute "value" as "Krish Raj"
      And I wait for 3 sec
    @quote7
    Scenario: Date of birth
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      And I wait for 2 sec
      When I click on element with xpath "//input[@id='dateOfBirth']"
      Then element with xpath "//div[@id='ui-datepicker-div']" should be displayed
      And I wait for 2 sec
      When I click on element with xpath " //option[contains(text(),'Jul')]"
      And I click on element with xpath "//option[contains(text(),'1988')]"
      And I click on element with xpath "//a[contains(text(),'15')]"
      And I wait for 2 sec
      Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "07/15/1988"
      And I wait for 3 sec
      #Popup
      When I click on element with xpath "//button[@id='thirdPartyButton']"
      And I wait for 3 sec
      And I accept alert
      #new Window
      When I click on element with xpath "//button[contains(text(),'Related documents (click)')]"
      And I switch to new window
      Then element with xpath "//body" should be displayed
      And element with xpath "//body" should contain text "Document 2"
      And I wait for 3 sec
      And I switch to first window
      #iframe
      And I switch to iframe with xpath "//iframe[@name='additionalInfo']"
      And I type "Raj" into element with xpath "//input[@id='contactPersonName']"
      And I type "5456789912" into element with xpath "//input[@id='contactPersonPhone']"
      And I wait for 3 sec
      And I switch to default content
    @quote8
    Scenario: Submit
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
      And I wait for 2 sec
      And I click on element with xpath "//span[contains(text(),'Save')]"
      And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      And I click on element with xpath "//button[@id='formSubmit']"
      And I wait for 2 sec
      Then element with xpath "//div[@id='quotePageResult']" should be displayed
      And I wait for 3 sec
      And element with xpath "//b[@name='name']" should contain text "Krish Raj"


