defmodule Math do
  def sum(1) do
    1
  end

  def sum(n) do
    n + sum(n - 1)
  end

  def gcd(x, 0) do
    x
  end

  def gcd(x, y) do
    gcd(y, rem(x, y))
  end

  def maxy(list, value \\ 0)

  def maxy([head | tail], value) do
    cond do
      head > value -> maxy(tail, head)
      head < value -> maxy(tail, value)
    end
  end

  def maxy([], value) do
    value
  end
end

IO.puts(Math.maxy([1, 2, 3, 4, 12, 4, 3, 8]))
