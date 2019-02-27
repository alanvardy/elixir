defmodule Listy do
  def add([]) do
    []
  end

  def add([head | tail]) do
    [head + 1 | add(tail)]
  end

  def increment(list) do
    list
    |> add()
    |> List.to_string()
    |> inspect()
    |> IO.puts()
  end
end

Listy.increment([1, 2, 3, 4, 5, 6, 7, 8])
