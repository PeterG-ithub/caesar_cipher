# Project Explanation

## Overview
This project implements a linked list data structure in Ruby. A linked list is a linear data structure where elements are not stored in contiguous memory locations and each element is a separate object. 

## Code Structure
The project consists of two main classes:
1. **LinkedList**: Represents the linked list structure.
2. **Node**: Represents individual elements of the linked list.

## LinkedList Class
### Attributes
- `head`: Points to the first node in the list.
- `tail`: Points to the last node in the list.
- `size`: Represents the number of elements in the list.

### Methods
1. `initialize(data = nil)`: Initializes the linked list with optional initial data.
2. `append(value)`: Adds a new node containing `value` to the end of the list.
3. `prepend(value)`: Adds a new node containing `value` to the start of the list.
4. `at(index)`: Returns the node at the given index.
5. `pop`: Removes the last element from the list.
6. `contains?(value)`: Returns true if the passed value is in the list, otherwise false.
7. `find(value)`: Returns the index of the node containing `value`, or nil if not found.
8. `to_s`: Converts the linked list to a string for easy printing.

## Node Class
### Attributes
- `data`: Stores the value of the node.
- `next`: Points to the next node in the list.

## Testing
- The project includes tests for the LinkedList and Node classes.
- Various methods such as `append`, `prepend`, `at`, `pop`, `contains?`, `find`, and `to_s` are tested with different scenarios.

## Execution
- The `LinkedList` and `Node` classes are instantiated and tested with sample data.
- Output of the list is displayed using the `to_s` method.

## Conclusion
The project demonstrates the implementation and usage of a linked list data structure in Ruby, along with testing various functionalities.

