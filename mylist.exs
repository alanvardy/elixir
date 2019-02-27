defmodule MyList do
  def mapsum(list, func) do
    list
    |> map(func)
    |> sum(0)
    |> inspect()
    |> IO.puts()
  end

  def map([], _func) do
    []
  end

  def map([head | tail], func) do
    [func.(head) | map(tail, func)]
  end

  def sum([], total) do
    total
  end

  def sum([head | tail], total) do
    sum(tail, total + head)
  end
end

MyList.mapsum([1, 2, 3], &(&1 * &1))
