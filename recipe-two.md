# Reading speed Method Design Recipe

## 1. Describe the Problem

As a user, so that I can improve my grammar,
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending 
punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

# verify_string check's to see if the first letter is capitalized and last character is punctuation
verify_string(text)

text: a string (e.g. "I wondered lonely as a cloud")

punctuation_marks = list of punctuation marks ie ["!", ".", "?"]


# The method doesn't print anything or have any other side-effects
```

EXAMPLE

verify_string("Have you ever seen the rain?") => ["This is gramatically correct"]
verify_string("Have you ever seen the rain") => ["This text has no punctutation mark at the end"]
verify_string("have you ever seen the rain?") => ["This text has no capital letter at the beginning"]
verify_string("hey there, here I am") => ["This text has no capital letter at the beginning, or punctuation mark at the end"]
verify_string("") => ["No text inputted"]