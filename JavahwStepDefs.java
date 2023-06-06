package definitions;
import static org.junit.Assert.assertEquals;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;

public class JavahwStepDefs {
    private String word1;
    private String rever;
    private boolean ans;
    private String output;

    @Given("I print Two Strings {string} and {string}")
    public void iPrintTwoStringsAnd(String arg1, String arg2) {
        System.out.println(arg1+arg2);
    }

    @Given("I add two numbers")
    public void iAddTwoNumbers() {
        int num1 = 10;
        int num2 = 20;
        System.out.println("Sum of two numbers: " + (num1 + num2));
    }

    @Given("I perform comparison on {int} and {int}")
    public void iPerformComparisonOnAnd(int arg1, int arg2) {
        if(arg1>arg2) {
            System.out.println("largest number is: "+arg1);
        }
        else {
            System.out.println("largest number is: "+arg2);
        }
        }

    @Given("I check the String is palindrome")
    public void iCheckTheStringIsPalindrome() {
        String word="cat";
        String rev="";

        for (int i = word.length() - 1; i >= 0; i--) {
            rev = rev + word.charAt(i);
        }
        if (word.equals(rev)) {
            System.out.println("Palindrome");
        }
        else{
            System.out.println("word is not Palindrome");
        }
    }

    @Given("I entered word {string}")
    public void iEnteredWordWordToTest(String wordToTest ) {
        word1=wordToTest;

    }

    @When("I test it for Palindrome")
    public void iTestItForPalindrome() {
        rever="";
        ans=false;
        word1=word1.toLowerCase();
        for (int i = word1.length() - 1; i >= 0; i--) {
            rever = rever + word1.charAt(i);
        }
        if (word1.toLowerCase().equals(rever)) {
            System.out.println("Palindrome");
            ans=true;
        }
        else{
            System.out.println("word is not Palindrome");
        }
        output = ans ? "true" : "false";
    }
    @Then("the output should be {string}")
    public void theOutputShouldBeOutput(String realout) {
        Assert.assertEquals(realout,output);
    }

    @Given("a string {string}")
    public void aString(String str) {
        word1=str;
    }

    @When("I get a sub string from index {int} to {int}")
    public void iGetASubStringFromIndexTo(int startnum, int endnum) {
      output=word1.substring(startnum,endnum);
        System.out.println("Substring is: "+output);
    }

    @Then("the result will be {string}")
    public void theResultWillBe(String strr) {
        Assert.assertEquals(output,strr);
    }
}

