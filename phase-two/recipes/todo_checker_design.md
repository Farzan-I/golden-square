# Grammar
## 1. Describe the Problem
<!-- Put or write the user story here. Add any clarifying notes you might have. -->
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature
The name of the method, its parameters, return value, and side effects.

```ruby
todo_included = todo_checker(text)

# * text is a string with words in it
# * todo_included is a boolean depending on whether it's correct
# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests
A list of examples of what the method will take and return.

``` ruby
# 1
todo_checker("") => fail "Has to provide a string with one character or more"

# 2
todo_checker("Hello, I am Farzan") => false

# 3
todo_checker("Hello, I am Farzan. I have a todo list") => false

# 4
todo_checker("Hello, I am Farzan. I have a #todo list") => false

# 5
todo_checker("Hello, I am Farzan. I have a #TODO list") => true

# 6
todo_checker("Hello, #TODO") => true

# 7
todo_checker("Hello, #Todo") => false

# 8
todo_checker("Hello, #TOdo") => false

# 9
todo_checker("hello, #ToDo") => false
```

## 4. Implement the Behaviour
After each test writen, I followed the test-driving process of red, green, refactor to implement the behaviour.