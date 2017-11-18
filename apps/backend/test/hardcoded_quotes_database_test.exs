defmodule Backend.HardcodedQuotesDatabaseTest do
  use ExUnit.Case
  doctest Backend.HardcodedQuotesDatabase
  alias Backend.HardcodedQuotesDatabase

  test "HardcodedQuotesDatabase.random returns different quotes" do
    uniqueQuotesNumber = 
      Enum.uniq_by(1..100, fn _ -> HardcodedQuotesDatabase.random end)
        |> Enum.count

    assert uniqueQuotesNumber > 1
  end

  test "HardcodedQuotesDatabase.at_index(index) returns the same quote for each index" do
    quotesNumberForEachIndex = 
      Enum.map(1..100, fn index -> 
        Enum.uniq_by(1..100, fn _ -> HardcodedQuotesDatabase.at_index(index) end)
          |> Enum.count
      end)

    assert Enum.all?(quotesNumberForEachIndex, &(&1 == 1))
  end
end
