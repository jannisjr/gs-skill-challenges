Takeaway project

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
                                                                           ┌───────────────────────────────────────────┐
┌──────────────────────────────────────────────┐                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │          Receipt                          │
│        Dishes(dish, price)                   │                           │                                           │
│                                              │                           │          show_dishes                      │
│        make_hash                             │                           │                                           │
│                                              │                           │          grand_total                      │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
│                                              │                           │                                           │
└────────────────────────────────────────────┬─┘                           └───┬───────────────────────────────────────┘
                                             │                                 │
                                             │                                 │
                                             │                                 │
                                             │                                 │
                                             │                                 │
                                             │                                 │
                                             │                                 │
                                         ┌───┴─────────────────────────────────▼─────────────────┐
                                         │   ▼                                                   │
                                         │                                                       │
                                         │                                                       │
                                         │              Menu                                     │
                                         │                                                       │
                                         │                                                       │
                                         │             print_menu                                │
                                         │                                                       │
                                         │                                                       │
                                         │             choose_dishes                             │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         │                                                       │
                                         └───────────────────────────────────────────────────────┘
```

_Also design the interface of each class in more detail._

```ruby
class Menu
  def intialise
  @menu = []
  end
  def add_dish(item, price)#takes dish added in the Dish class, converts it to a hash and then pushed to @menu
  def print_menu #prints the choice of dishes
  end




class Dish(item, price)
  def initalize
  @item
  @price
end

class Order
  def take_order #Requests a number, uses index to pass item from menu to a new array @order.
  end
  def print_order #takes the hashes in the @order array and returns all of the items 

class Receipt

print_receipt #take dishes selected, print itemised list

grand_total #print grand total



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