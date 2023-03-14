# Golden Square 

In this module the objectives are:
- Learn to test-drive programs with multiple classes
- Learn to break programs up into classes
- Learn to debug your programs
- Learn to build software as a pair
- Learn to explain why test-driving, object-oriented design, debugging, and pairing are powerful practices for software engineers

Achieve these by working through a sequence of exercises and challenges.

The Golden Square refers to four software engineering practices:

1. Test-Driving (TDD)
2. Object-Oriented Design (OOD)
3. Debugging
4. Pairing

### Test-Driving
<details><summary>More Info</summary>
  Test-driving is a method for creating software that involves:

  1. Deciding what you want the software to do
  2. Writing tests to check that it does that
  3. Writing the code to pass those tests

  It is called test-driven development because you write the tests first and then focus on making them pass. The tests 'drive' the implementation.

  There are a number of reasons people do this. One key reason to test-drive is because it structures your programming approach and reduces your mental load.
</details>

### Object-Oriented Design
<details><summary>More Info</summary>
  Object-oriented design is a way of structuring code using objects and classes. The software is created by creating a system of classes that interact to perform the job of the software.

  Classes are blueprints for objects, and objects encapsulate ('wrap') values ('state' or 'memory'), providing methods that control access to those values and do useful work.

  Structuring programs is very important because programs can get very large and hard to understand. If you don't break them down into small parts each with a particular job they become expensive and time-consuming to maintain.

  There are a number of approaches to structuring programs. OOD is the most popular.
</details>

### Debugging
<details><summary>More Info</summary>
  Debugging is the name for a collection of different approaches for dealing with the situation when the code does something you don't intend it to for reasons you don't understand.

  It is important because code is complex and people rarely get it totally right. Most of the ways they get it wrong are subtle and hard to figure out. Good debugging skills help an engineer discover the source of defects ('bugs') and thereby correct them.
</details>

### Pairing
<details><summary>More Info</summary>
  Pair programming, or pairing, is two programmers working on the same thing at the same time. Some teams do pairing 100% of the time, most do it some of the time, and some never do it.

  It is useful because it can apply two minds and two sets of knowledge to the same problem, and because it spreads knowledge around a team. As an engineer, knowledge of the system is a very valuable thing, and so pairing makes the whole team more effective.
</details>

## Phase One
<details><summary>Testing methods with equality</summary>
  Files for testing methods with equality:

  1. add_five.rb / add_five_spec.rb
  2. greet.rb / greet_spec.rb
  3. check_codeword.rb / check_codeword_spec.rb
  4. report_length.rb / report_length_spec.rb
</details>

<details><summary>Testing classes with equality</summary>
  Files for testing classes with equality:

  1. reminder.rb / reminder_spec.rb (before changes made for testing for errors)
  2. counter.rb / counter_spec.rb
  3. string_builder.rb / string_builder_spec.rb
  4. gratitudes.rb / gratitudes_spec.rb
</details>

<details><summary>Testing for errors</summary>
  Files for testing for errors:

  1. reminder.rb / reminder_spec.rb
  2. present.rb / present_spec.rb
  3. password_checker.rb / password_checker_spec.rb
</details>

## Phase Two
<details><summary>Test drive a single method program</summary>

  1. make_snippet.rb / make_snippet_spec.rb
  2. count_words.rb / count_words_spec.rb
  
</details>
<details><summary>Design a single method program</summary>

  1. [recipe.md](phase-two/recipe.md) / extract_uppercase.rb / extract_uppercase_spec.rb
  2. [recipe.md](phase-two/recipe.md) / calculate_reading_time.rb / calculate_reading_time_spec.rb

</details>