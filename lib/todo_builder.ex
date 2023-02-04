defmodule TodoBuilder do
  defmodule Entry do
    @moduledoc """
    Structure to store a TODO
    """

    @type t :: %TodoBuilder.Entry{
            date: Date,
            title: String
          }
    defstruct date: nil, title: nil
  end

  def new(date, title), do: %Entry{date: date, title: title}
end
