---
layout: default
---

Session and Authentication

**Challenge:** [ActiveRecord](https://github.com/rposborne/rails_assignments/blob/master/challenges/rails_active_record.md)

**Problem of the Day:** [Menu Authentication](https://github.com/rposborne/rails_assignments/blob/master/exercises/menu_authentication)

* Random Topics
  * Bootstrap Grid System
  * Nested Routes
  * Collection/Member Routes
* Session
* Authentication
  * Build our own
  * `has_secure_password`
  * [XKCD on Passwords](https://xkcd.com/936/)

#### Useful Links

* [has_secure_password Documentation](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html)
* [Why Minitest instead of Rspec](http://brandonhilkert.com/blog/7-reasons-why-im-sticking-with-minitest-and-fixtures-in-rails/)
* [Tenderlove on Minitest and RSpec](http://tenderlovemaking.com/2015/01/23/my-experience-with-minitest-and-rspec.html)
* [Character Encodings](http://www.joelonsoftware.com/articles/Unicode.html)

#### Evening Reading

* Preview Reading: [Integration Tests](http://guides.rubyonrails.org/testing.html#integration-testing) - Just section 5-5.2
* Listening: [Ruby Rogues - Open Source Contributions](https://devchat.tv/ruby-rogues/051-rr-getting-started-with-open-source)

#### Assignment

* Assignment: Get started on [Gradebook](https://github.com/tiyd-rails-2016-01/gradebook).  This is a two-night assignment, so in the first night you should at least:
  * Build the data structure, models, and migrations that you'll need.
  * Allow teachers (and only teachers) to log in and log out.
  * Allow teachers (and only teachers) to manage all teachers and all students.
  * Allow teachers (and only teachers) to manage grades for all students.
* This means that tonight you specifically do NOT have to worry about:
  * Entering/managing information about parents.
  * Allowing students or parents to log in.
  * Limiting teachers to only view and edit their own students and student grades.
  * Those requirements can be handled tomorrow night.  If you feel like you'll make it to hard or nightmare modes, read those before you start coding and consider taking that future functionality into account in your data structure.
<!-- * Feedback: [Gradebook Day 1 Feedback](feedback) -->
