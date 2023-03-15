# Extract Uppercase
## 1. Describe the Problem
<!-- Put or write the user story here. Add any clarifying notes you might have. -->
As a user, 
To be able to analyse words,
I want to see a list of words that are uppercased

## 2. Design the Method Signature
The name of the method, its parameters, return value, and side effects.

```
# `extract_uppercase` extracts uppercase words from a string
uppercase_words = extract_uppercase(mixed_words)

mixed_words: a string (e.g. "hello WORLD")
uppercase_words: a list of strings (e.g. ["WORLD"])

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests
A list of examples of what the method will take and return.

``` 
extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("HELLO! WORLD!") => ["HELLO", "WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error
```

## 4. Implement the Behaviour
After each test writen, I followed the test-driving process of red, green, refactor to implement the behaviour.