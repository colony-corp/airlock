defmodule AirlockTest do
  use ExUnit.Case
  doctest Airlock

  test "greets the world" do
    assert Airlock.hello() == :world
  end
end
