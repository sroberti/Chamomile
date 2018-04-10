defmodule ChamomileElixirTest do
  use ExUnit.Case
  doctest ChamomileElixir

  test "greets the world" do
    assert ChamomileElixir.hello() == :world
  end
end
