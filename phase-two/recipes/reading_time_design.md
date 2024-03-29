# Reading time

## 1. Describe the Problem
<!-- Put or write the user story here. Add any clarifying notes you might have. -->
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature
The name of the method, its parameters, return value, and side effects.

```ruby
reading_time = calculate_reading_time(text)

# text is a string with words in it
# reading_time is an integer representing minutes

<!-- 

# `calculate_reading_time` determines how many 
uppercase_words = extract_uppercase(mixed_words)

mixed_words: a string (e.g. "hello WORLD")
uppercase_words: a list of strings (e.g. ["WORLD"]) -->

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests
A list of examples of what the method will take and return.

``` ruby
calculate_reading_time("") => 0
calculate_reading_time("one") => 1
calculate_reading_time(TWO_HUNDRED_WORDS) => 1
calculate_reading_time(THREE_HUNDRED_WORDS) => 2
calculate_reading_time(FOUR_HUNDRED_WORDS) => 2
calculate_reading_time(FIVE_THOUSAND_WORDS) => 25
```

## 4. Implement the Behaviour
After each test writen, I followed the test-driving process of red, green, refactor to implement the behaviour.