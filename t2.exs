# Convert a named function to an anonymous function so that we can pass it as an argument using the capture (&) operator

defmodule T do
    def remove_cats(animal) do
        animal != "cat"
    end

    def filtered(data) do
        #This is equivalent to: Enum.filter(data, fn animal -> animal != "cat" end)
        Enum.filter(data, &remove_cats/1)
    end

    def filtered2(data) do
        Enum.filter(data, fn animal -> animal != "cat" end)
    end
end

data = ["cat", "dog", "racoon", "elephant"]
IO.inspect data, label: "Original list"

IO.puts("\n")

d = T.filtered(data)
IO.inspect d, label: "Filtered list with capture operator  "

a = T.filtered(data)
IO.inspect a, label: "Filtered list with anonymous function"

