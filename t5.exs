# Anonymous functions

r1 = Enum.map([1,2,3,4,5,6], fn a -> a * a end)

r2 = Enum.map([1,2,3,4,5,6], &(&1 * &1))

IO.inspect r1
IO.inspect r2


data = ["cat", "dog", "racoon", "elephant"]

r3 = Enum.filter(data, fn a -> a != "cat" end)
IO.inspect r3

r4= Enum.filter(data, &(&1 != "cat"))
IO.inspect r4 
