defmodule Caesar do
  def encode([], _offset) do
    []
  end

  def encode([head | tail], offset) do
    cond do
      head + offset > 122 -> [head + offset - 26 | [encode(tail, offset)]]
      head + offset < 97 -> [head + offset + 26 | [encode(tail, offset)]]
      true -> [head + offset | [encode(tail, offset)]]
    end
  end
end

IO.puts(Caesar.encode('something', 20))
