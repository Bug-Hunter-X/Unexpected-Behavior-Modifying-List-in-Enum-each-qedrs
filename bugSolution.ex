```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: List Comprehension
new_list = [x || x <- list, x != 3]
IO.inspect(new_list)

# Solution 2: Enum.filter
new_list2 = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(new_list2)
```