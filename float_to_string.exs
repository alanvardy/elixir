defmodule Libraries do
  def float_to_string(string) do
    :erlang.float_to_binary(string, decimals: 2)
  end
end

IO.puts(Libraries.float_to_string(4.567))
