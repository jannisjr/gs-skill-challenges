# Reading speed Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# reading_time estimates the reading time of page of text
time = reading_time(text)

# reading_time will return the time needed to read words at a pace of 200 words a minute. reading_time will return 'time' as seconds.
text: a string (e.g. "Hello world")
time: a float (e.g. 27.3)

# The method doesn't print anything or have any other side-effects. It will return time.
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._


```ruby
# EXAMPLE

reading_time("Hello world") => [0.6]
reading_time("It's great that there is so much source code available on public repositories and file shares. No matter the coding task or problem, there is probably already a good solution available somewhere. It is also great that there are so many powerful coding tools available to help you understand, debug, and optimize your code. However, using open-source code and tools does have risks, and you can leave yourself open to malicious code execution and exploits.") => [22.5]
reading_time("") => [0]
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._