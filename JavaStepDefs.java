package definitions;

import cucumber.api.java.en.Given;

public class JavaStepDefs {
    @Given("I write my message")
    public void iWriteMyMessage() {
        System.out.println("hello");
        System.out.println("yes");
        int sum = 12 + 1;
        System.out.println("12+1=" + sum);
    }

    @Given("I join two strings")
    public void iJoinTwoStrings() {
        String firstName = "John";
        String lastName = "Peter";
        String fullName = firstName + " " + lastName;
        System.out.println(fullName);
    }

    @Given("I perform actions on {string} and {string}")
    public void iPerformActionsOnAnd(String arg1, String arg2) {
        System.out.println(arg1.toUpperCase());
        System.out.println("Variables belongs to class: " + arg1.getClass());
        System.out.println("The size of the string is: " + arg2.length());
        System.out.println(arg2.toLowerCase());
        //comparing
        if (arg1.equals(arg2.toLowerCase())) {
            System.out.println("Both are same");
        }
        //contains
        String var3 = "my";
        System.out.println(arg1.contains(var3));
    }

    @Given("I check the number is prime")
    public void iCheckTheNumberIsPrime() {
        int num = 11;
        boolean bl = false;
        for (int i = 2; i <= num / 2; ++i) {
            if (num % i == 0) {
                bl = true;
                break;
            }
        }
        if (!bl)
            System.out.println(num + " is a prime number.");
        else
            System.out.println(num + " is not a prime number.");
    }

    @Given("I search a number in the array")
    public void iSearchANumberInTheArray() {
        int[] arr = {2, 8, 5, 3, 1, 11};
        int num = 1;
        boolean val = false;
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == num) {
                val = true;
                break;
            }
        }
        if (val == true)
            System.out.println("number found");
        else
            System.out.println("value not found");
    }


    @Given("I print URL {string}")
    public void iPrintURL(String url) {
        if (url.equalsIgnoreCase("www.google.com")) {
            System.out.println("https://google.com");
        } else if (url.equalsIgnoreCase("www.yahoo.com")) {
            System.out.println("https://yahoo.com");
        } else {
            System.out.println("unknown  " + url);
        }
    }

    @Given("I select url for {string}")
    public void iSelectUrlFor(String url) {
        switch (url) {
            case "google":
                System.out.println("google.com");
                break;
            case "quote":
                System.out.println("quote.com");
                break;
            case "yahoo":
                System.out.println("yahoo.com");
                break;
            case "bing":
                System.out.println("bing.com");
                break;
            default:
                System.out.println("unknown");

        }
    }
}

