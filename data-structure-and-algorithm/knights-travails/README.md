# Project Explanation

## Overview
This project implements a program that finds the shortest path for a knight on a chessboard from one position to another using breadth-first search.

## Code Structure
The project consists of two main classes:
1. **Knight**: Represents the knight and its movements on the chessboard.
2. **Board**: Represents the chessboard, although this class is not utilized in the provided code snippet.

## Knight Class
### Attributes
- `position`: Stores the current position of the knight.
- `children`: Stores the possible next positions the knight can move to.
- `history`: Stores the history of positions visited during the search.

### Methods
1. `initialize(position = [4, 4])`: Initializes the knight with a default or specified position.
2. `knight_moves(position, target)`: Finds the shortest path from `position` to `target` using breadth-first search.
3. `search(position, node)`: Recursively searches for the node containing the specified position.

## Execution
- A knight object is instantiated.
- The `knight_moves` method is called with the starting and target positions.
- The program utilizes breadth-first search to find the shortest path.
- The history of visited positions is stored and displayed to show the path taken by the knight.

## Conclusion
The project demonstrates how to find the shortest path for a knight on a chessboard from one position to another using breadth-first search. The Knight class encapsulates the logic for finding the path efficiently.

