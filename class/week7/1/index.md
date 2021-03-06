---
layout: default
---

JavaScript

**Challenge:** [Partials](https://github.com/rposborne/rails_assignments/blob/master/challenges/rails_partials.md)

* Agile
  * ON BOARD: Be aware of technical debt
* Random Topics
  * `config.action_controller.action_on_unpermitted_parameters = :raise`
* Javascript in `node`
  * Surprisingly similar to ruby
  * `var` keyword
  * hashes vs "objects"
  * numbers are all floats
  * `do..end` vs `{}`
  * `else if`
  * `==` vs `===`
    * `1 == "1"`
    * `[1, 2, 3] === [1, 2, 3]`... sigh
  * Weird returns (`var` lines, or `a++`)
  * capitalization in variable names
* Functions
  * methods vs functions
  * implicit vs explicit return
  * First, define them as we would in Ruby: `function sayHi() { alert("Hi"); }`
  * Can be stored in variables
  * `[1, 2, 3].forEach(function (number) { console.log(number * number); });`

    <!-- function greet(greeting) {
      return function() {
        return greeting + " world!";
      };
    }
    var hello = greet("Hello");
    var goodbye = greet("Goodbye");
    hello(); // Hello world!
    goodbye(); // Goodbye world! -->

* The DOM
* JavaScript in Chrome console - load up google.com search results
  * `document.getElementById()`
  * `document.getElementsByClassName()`
  * `.value` or `.value = "default"`
  * `.style.color` or `.style.color = "blue"`
* JavaScript in a Rails app: [javascript_playground repository](https://github.com/tiyd-rails-2016-01/javascript_playground_starting_point)
  * `application.js`
  * `alert()` on every page
  * `console.log()` on every page
  * Work through the exercises on the playground root page.
  * `onclick=` attributes in HTML tags
  * Functions in `application.js`
  * `.lastElementChild` - it's sometimes tough to know what's a function and what's just a value!
  * `.cloneNode(true)`
  * `.appendChild(copy)`
  * `<script>` tags to run the JavaScript when the page loads.
* How to debug JavaScript

#### Useful Links

[Toyota and Technical Debt](http://www.safetyresearch.net/blog/articles/toyota-unintended-acceleration-and-big-bowl-%E2%80%9Cspaghetti%E2%80%9D-code)

#### Evening Reading

* Preview Reading: [How jQuery Works](http://learn.jquery.com/about-jquery/how-jquery-works/)
* Eloquent JavaScript Reading: Chapters 5 and 12 of [Eloquent JavaScript](http://eloquentjavascript.net/)
* Listening: [Ruby Rogues - Technical Debt](https://devchat.tv/ruby-rogues/technical-debt)

#### Assignment

* Assignment: [Add Javascript](https://github.com/tiyd-rails-2016-01/add_javascript)
* Starting Point: [Coursyl App](https://github.com/tiyd-rails-2016-01/coursyl)
<!-- * Feedback: [Add Javascript Feedback](feedback) -->
