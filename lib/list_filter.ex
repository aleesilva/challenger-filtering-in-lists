defmodule ListFilter do
  def call(list) do
    filter_list =
      list
      |> filter_integers()
      |> filter_odd_numbers()
      |> Enum.filter(fn v -> v != [] end)
      |> Enum.count()

    filter_list
  end

  defp filter_integers(list) do
    Enum.flat_map(list, fn element ->
      case Integer.parse(element) do
        {int, _} -> [int]
        :error -> []
      end
    end)
  end

  defp filter_odd_numbers(list) do
    Enum.map(list, fn numbers ->
      case rem(numbers, 2) do
        0 -> []
        1 -> numbers
      end
    end)
  end
end
