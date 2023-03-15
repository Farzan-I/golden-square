# Grammar
## 1. Describe the Problem
<!-- Put or write the user story here. Add any clarifying notes you might have. -->
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature
The name of the method, its parameters, return value, and side effects.

```ruby
correct_punctuation = check_grammar(text)

# * text is a string with words in it
# * correct_punctuation is a boolean depending on whether it's correct
# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests
A list of examples of what the method will take and return.

``` ruby
# 1
check_grammar("") => fail "Not a sentence."

# 2
check_grammar("Hello, I am Farzan") => false

# 3
check_grammar("Hello, I am Farzan.") => true

# 4
check_grammar("hello, I am Farzan.") => false

# 5
check_grammar("HELLO, I am Farzan.") => true

# 6
check_grammar("Hello, I am Farzan!") => true

# 7
check_grammar("Hello, I am Farzan?") => true

# 8
check_grammar("Hello, I am Farzan,") => false

# 9
check_grammar("hello, I am Farzan") => false
```

## 4. Implement the Behaviour
After each test writen, I followed the test-driving process of red, green, refactor to implement the behaviour.