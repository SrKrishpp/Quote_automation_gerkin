Feature: Java Hw
  @java1
  Scenario: Display Two Values
    Given I print Two Strings "Hello, " and "I am Krishna"
  @java2
  Scenario: Adding numbers
    Given I add two numbers
  @java3
  Scenario: compare the numbers
   Given I perform comparison on 23 and 45
  @java4
  Scenario: palindrome
    Given I check the String is palindrome
  @java5
  Scenario: Get the substring
    Given a string "Hi How are you"
    When I get a sub string from index 3 to 6
    Then the result will be "How"
  @java6
  Scenario Outline: Check if String is Palindrome
    Given I entered word <wordToTest>
    When I test it for Palindrome
    Then the output should be <output>
    Examples:
      | wordToTest | output  |
      | "Mom"      | "true"  |
      | "Cat"      | "false" |
      | "House"    | "false" |
      | "malayalam"  | "true"  |