defmodule Environment do
  def path do
    System.get_env("PATH")
  end

  def cwd do
    case File.cwd() do
      {:ok, x} -> x
      {_, x} -> "Error: #{x}"
    end
  end
end

IO.puts(Environment.cwd())
