package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import org.openqa.selenium.By;
//import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class WebDriverStepDefs {
    @Given("I open a page")
    public void iOpenAPage() {
        getDriver().get("http://google.com");
        getDriver().navigate().to("http://yahoo.com");
    }

    @And("I print page details")
    public void iPrintPageDetails() {
        System.out.println("the page title is : "+ getDriver().getTitle());
        System.out.println("current url: "+ getDriver().getCurrentUrl());
    }

    @Given("I navigate to {string}")
    public void iNavigateTo(String url1) {
        switch (url1) {
            case "google":
                getDriver().get("http://google.com");
                break;
            case "amazon":
                getDriver().get("http://amazon.com");
                break;
            case "quote":
                getDriver().get("https://skryabin.com/market/quote.html");
                break;
            default:
                System.out.println("no website");
        }
        System.out.println("Title : "+getDriver().getTitle());
    }

    @And("I wait {int} sec")
    public void iWaitSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Given("I open form")
    public void iOpenForm() {
        getDriver().get("https://skryabin.com/market/quote.html");
        System.out.println(getDriver().getTitle());
    }

    @When("I fill out first Name as {string} and last Name as {string}")
    public void iFillOutFirstNameAsAndLastNameAs(String fname, String lname) {
        getDriver().findElement(By.xpath("//input[@id='name']")).click();
        getDriver().findElement(By.xpath("//input[@id='firstName']")).sendKeys(fname);
        getDriver().findElement(By.xpath("//input[@id='lastName']")).sendKeys(lname);
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @And("I filling out all required fields")
    public void iFillingOutAllRequiredFields() throws InterruptedException {
        WebElement username=getDriver().findElement(By.xpath("//input[@name='username']"));
        username.sendKeys("Jpaul");
        WebElement email=getDriver().findElement(By.xpath("//input[@name='email']"));
        email.sendKeys("jpaul@yahoo.com");
        WebElement pass=getDriver().findElement(By.xpath("//input[@id='password']"));
        Thread.sleep(2000);
        pass.sendKeys("asdf123");
        WebElement confpass=getDriver().findElement(By.xpath("//input[@id='confirmPassword']"));

        confpass.sendKeys("asdf123");
        WebElement phone=getDriver().findElement(By.xpath(" //input[@name='phone']"));
        phone.sendKeys("4562238901");
        WebElement dropdowncountry = getDriver().findElement(By.xpath("//select[@name='countryOfOrigin']"));
        dropdowncountry.click();
        WebElement option = getDriver().findElement(By.xpath("//option[contains(text(),'United States of America')]"));
        option.click();
        Thread.sleep(2000);
        WebElement privacy=getDriver().findElement(By.xpath("//input[@name='agreedToPrivacyPolicy']"));
        privacy.click();
        // submit
        WebElement submit=getDriver().findElement(By.xpath(" //button[@id='formSubmit']"));
        submit.submit();


    }

    @Then("I assure required fields")
    public void iAssureRequiredFields() {
        WebElement pageresult= getDriver().findElement(By.xpath(" //div[@id='quotePageForm']"));
        assertThat(pageresult.isDisplayed()).isTrue();
        String acFname= getDriver().findElement(By.xpath("//b[@name='firstName']")).getText();
        assertThat(acFname).isEqualToIgnoringCase("John");
        String acemail= getDriver().findElement(By.xpath("//b[@name='email']")).getText();
        assertThat(acemail).isEqualToIgnoringCase("jpaul@yahoo.com");

    }


}
