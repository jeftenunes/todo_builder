defmodule TodoBuilderTest do
  use ExUnit.Case
  doctest TodoBuilder

  test "greets the world" do
    assert TodoBuilder.hello() == :world
  end
end
