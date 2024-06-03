# Project Explanation

## Overview
This project implements a binary search tree (BST) in Ruby, with functionality to build, insert, delete, find, and balance the tree.

## Code Structure
The project consists of two main classes:
1. **Node**: Represents a node in the binary search tree.
2. **Tree**: Represents the binary search tree and contains methods for tree operations.

## Node Class
### Attributes
- `data`: Stores the value of the node.
- `left`: Points to the left child node.
- `right`: Points to the right child node.

## Tree Class
### Attributes
- `root`: Points to the root node of the binary search tree.

### Methods
1. `initialize(root = nil)`: Initializes the tree with a default or specified root.
2. `build_tree(arr, start_idx = 0, end_idx = arr.uniq.size - 1)`: Builds a balanced binary search tree from a sorted array.
3. `pretty_print(node = @root, prefix = '', is_left = true)`: Prints the binary search tree in a visually appealing format.
4. `insert(value, node = @root)`: Inserts a value into the binary search tree.
5. `delete(value, node = @root)`: Deletes a value from the binary search tree.
6. `find(value, node = @root)`: Finds a value in the binary search tree.
7. `level_order(node = @root)`: Performs a level-order traversal of the binary search tree.
8. `inorder(node = @root)`: Performs an inorder traversal of the binary search tree.
9. `preorder(node = @root)`: Performs a preorder traversal of the binary search tree.
10. `postorder(node = @root)`: Performs a postorder traversal of the binary search tree.
11. `height(node = @root)`: Calculates the height of the binary search tree.
12. `depth(value, node = @root, depth = 0)`: Calculates the depth of a given value in the binary search tree.
13. `balanced?(node = @root)`: Checks if the binary search tree is balanced.
14. `rebalance(node = @root)`: Rebalances the binary search tree.

## Execution
- A Tree object is instantiated.
- The `build_tree` method is called to create a balanced binary search tree from an array of values.
- Various methods such as `insert`, `delete`, `find`, `level_order`, `inorder`, `preorder`, `postorder`, `height`, `depth`, `balanced?`, and `rebalance` are called to demonstrate the functionality of the binary search tree.

## Conclusion
The project demonstrates the implementation and usage of a binary search tree in Ruby, along with methods for tree operations and balancing.

