defmodule TodoBuilder.CsvImporter do
  alias TodoBuilder

  def import(path) do
    File.stream!(path)
    |> Stream.map(fn line -> String.replace(line, "\n", "") end)
    |> Stream.map(fn line -> String.split(line, ";") end)
    |> Enum.map(fn item ->
      [date, title] = item
      TodoBuilder.new(date, title)
    end)
  end
end
