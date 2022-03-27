defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count the odd elements in list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      assert ListFilter.call(list) == 3
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
