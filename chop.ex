defmodule Chop do
  def guess(answer, range) do
    halve(answer, range)
  end

  def halve(answer, range) do
    first..last = range
    guessy = div(last + first, 2)
    IO.puts("Is it #{guessy}?")

    cond do
      answer > guessy ->
        halve(answer, (guessy + 1)..last)

      answer < guessy ->
        halve(answer, first..(guessy - 1))

      true ->
        IO.puts("The answer is #{answer}!")
    end
  end
end

Chop.guess(837_462_384, 1..729_385_734_985_734_983_495_724_985_724_895)
