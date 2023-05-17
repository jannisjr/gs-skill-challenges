# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
┌─────────────────────────────────────────────┐
│                                             │         ┌─────────────────────────────────────────────────┐
│ Diary_entry                                 │         │                                                 │
│                                             │         │       Todo                                      │
│ - add                                       │         │                                                 │
│                                             │         │       todo_list                                 │
│ - list_entries                              │         │                                                 │
│                                             │         │       delete_task                               │
│                                             │         │                                                 │
│                                             │         │       print_todo                                │
│                                             │         │                                                 │
│                                             │         │                                                 │
│                                             │         │                                                 │
└─────────────────────┬───────────────────────┘         │                                                 │
                      │                                 └───────────┬─────────────────────────────────────┘
                      │                                             │
                      │                                             │
                      │                                             │
 ┌────────────────────┴─────────────────────────┐                   │
 │                                              │                   │
 │   Diary                                      │                   │
 │                                              │                   │
 │   select_entry(wpm, minutes)                 │                 ┌─┤
 │                                             ─┼─────────────────┴─┘
 │    todo_list                                 │
 │                                              │
 │    phone_no                                  │
 │                                              │
 │                                              │
 │                                              │
 │                                              │
 │                                              │
 └──────────────────────────────────────────────┘
```

_Also design the interface of each class in more detail._

```ruby
class Diary(entry_list)
  def initialize
    @entry_list = entry_list
    @todo = []
    @phone_no = []
  end

  def select_entry(wpm, minutes)
    # selects an entry that can be read in the time given
  end

  def phone_no
    # stores a list of phone numbers
  end
  def phone_no_print
    # prints a list of phone numbers
  end
end



class Todo
  def initialize 
    @todo = []
  end

  def add_task(task)
  #Adds an item to the todo list
  end

  def delete_task(task)
  #deletes task from the todo list
  end

  def print_todo
    #returns the todo list
  end
end

class DiaryEntry
  def initialize
    @entries = []
    # ...
  end

  def add(entry) 
    # entry is added to entries variable
    # Returns nothing
  end

  def list_entries
    # Returns a list of entry objects
  end
end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE



# Selects a diary entry based on wpm and reading time, thenreturns that entry
 diary_entry = DiaryEntry.new
 diary_entry.add("This is")
 diary_entry.add("This is my second diary entry")
 entry_list = diary_entry.list_entries
 diary = Diary.new(entry_list)
 diary.select_entry(2,1) # => ["this is"]

 # pulls a phone number from diary entry, returns phone number
 diary_entry = DiaryEntry.new
 diary_entry.add("This is the mobile: 0765432109")
 entry_list = diary_entry.list_entries
 diary = Diary.new(entry_list)
 diary.phone_no
 diary.phone_no_print # => 0765432109




```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE
# Adds task to todo list the lists task

todo = Todo.new
todo.add_task("walk the dog")
todo.print_todo # => []"walk the dog"]

# Adds 2 task, then deletes a task and lists the remaining task

todo = Todo.new
todo.add_task("walk the dog")
todo.add_task("mow the lawn")
todo.delete_task("mow the lawn")
todo.print_todo # => ["walk the dog"]

# Gets all diary entries
diary_entry = DiaryEntry.new
diary_entry.add("This is my first diary entry")
diary_entry.add("This is my second diary entry")
diary_entry.list_entries # => ["This is my first diary entry", "This is my second diary entry"]


```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._