defmodule T do
    def remove_cities(city) do
        city[:country] == "France"
    end

    def filtered(data) do
        Enum.filter(data, &remove_cities/1)
    end
end


cities = [
    %{:name => "Paris", :country => "France"},
    %{:name => "Grenoble", :country => "France"},
    %{:name => "Berlin", :country => "Germany"},
    %{:name => "New York", :country => "US"},
]



d = T.filtered(cities)
IO.inspect d, label: "Filtered list" 
