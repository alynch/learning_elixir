# Lists of tuples, lists of maps

country = "France"

cities_as_tuples = [
    { :name, "Paris", :country, "France" },
    { :name, "Grenoble", :country, "France" },
    { :name, "Berlin", :country, "Germany" },
    { :name, "New York", :country, "US" }
]

IO.inspect cities_as_tuples


f1 = Enum.filter(cities_as_tuples, fn city -> elem(city, 3) == country end)

IO.inspect f1, label: "Tuples"


IO.puts "\n"


cities_as_maps = [
    %{:name => "Paris", :country => "France"},
    %{:name => "Grenoble", :country => "France"},
    %{:name => "Berlin", :country => "Germany"},
    %{:name => "New York", :country => "US"},

]


f2 = Enum.filter(cities_as_maps, fn city -> city[:country] == country end)

IO.inspect f2, label: "Maps"


