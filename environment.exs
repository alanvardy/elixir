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

  def cmd(command, args) do
    System.cmd(command, args)
    |> extract_first()
    |> IO.puts()
  end

  def extract_first(tuple) do
    case tuple do
      {x, 0} -> x
      {_, _} -> "Error"
    end
  end
end

IO.puts(Environment.cmd("ls", []))
