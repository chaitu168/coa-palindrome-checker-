
function checkPalindrome() {

    // Get the input word
    let word = document.getElementById("word").value;

    // Convert to lowercase and remove spaces/special characters
    let cleaned = word.toLowerCase().replace(/[^a-z0-9]/g, "");

    // Reverse the word
    let reverse = cleaned.split("").reverse().join("");

    // Check palindrome
    if (cleaned === "") {

        document.getElementById("result").innerHTML =
            "Please enter a word!";

    }
    else if (cleaned === reverse) {

        document.getElementById("result").innerHTML =
            "Yes! It is a Palindrome.";

    }
    else {

        document.getElementById("result").innerHTML =
            "No! It is not a Palindrome.";

    }
}
