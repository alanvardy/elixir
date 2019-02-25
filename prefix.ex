defmodule Prefix do
  def prefix(string) do
    string = fn string2 ->
      string <> " " <> string2
    end
  end
end
