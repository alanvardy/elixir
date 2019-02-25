defmodule Fizzbuzz do
  def fizzbuzzer(a) do
    case a do
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_, _, c} -> c
    end
  end

  def call(a) do
    var = fizzbuzzer({rem(a, 3), rem(a, 5), a})
    IO.puts(var)
  end

  def sequence do
    call(10)
    call(11)
    call(12)
    call(13)
    call(14)
    call(15)
    call(16)
    call(17)
  end
end
