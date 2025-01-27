# Elixir Immutable List Modification Bug

This repository demonstrates a common error in Elixir when attempting to modify a list within an `Enum.each` loop.  Elixir lists are immutable, meaning they cannot be changed in place.  The code attempts to remove an element, but this creates a *new* list without changing the original.  The solution illustrates the correct approach using list comprehension or Enum.filter.

## Bug

The `bug.ex` file contains the problematic code.  The `Enum.each` loop tries to delete the element `3` from the list, but because lists are immutable, this operation doesn't affect the original list.  The output shows the list is unchanged.

## Solution

The `bugSolution.ex` file provides two solutions:

1. **List Comprehension:** Creates a new list containing only the elements that are not `3`.
2. **Enum.filter:** Uses the `Enum.filter` function to create a new list containing only the elements that satisfy a condition (not equal to `3`).