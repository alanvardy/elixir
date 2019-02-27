defmodule MyList do
  def mapsum(list, func) do
    list
    |> map(func)
    |> sum()
    |> IO.puts()
  end

  def map([], _func) do
    []
  end

  def map([head | tail], func) do
    [func.(head) | mapsum(tail, func)]
  end

  def sum([], _total) do
    0
  end

  def sum([head | tail], total \\ 0) do
    sum(tail, total + head)
  end
end

MyList.mapsum([1, 2, 3], &(&1 * &1))
