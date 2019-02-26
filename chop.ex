defmodule Chop do
  def guess(answer, range) do
    halve(answer, range)
  end

  def halve(answer, range) do
    first..last = range
    attempt = div(last - first, 2)
    IO.puts("Is it #{attempt}?")

    cond do
      answer > attempt ->
        halve(answer, (attempt + 1)..last)

      answer < attempt ->
        halve(answer, first..(attempt - 1))

        # true ->
        #   answer
    end
  end
end

Chop.guess(83, 1..1000)
