defmodule Chop do
  def guess(answer, range) do
    halve(answer, range)
  end

  def halve(answer, range) do
    first..last = range
    guess = div(last + first, 2)
    IO.puts("Is it #{guess}?")

    cond do
      answer > guess ->
        halve(answer, (guess + 1)..last)

      answer < guess ->
        halve(answer, first..(guess - 1))

      true ->
        IO.puts("The answer is #{answer}!")
    end
  end
end

Chop.guess(837_462_384, 1..729_385_734_985_734_983_495_724_985_724_895)
