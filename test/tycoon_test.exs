defmodule TycoonTest do
  use ExUnit.Case
  doctest Tycoon

  test "greets the world" do
    assert Tycoon.hello() == :world
  end
end
