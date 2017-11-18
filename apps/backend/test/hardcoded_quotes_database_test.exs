defmodule Backend.HardcodedQuotesDatabaseTest do
  use ExUnit.Case
  doctest Backend.HardcodedQuotesDatabase

  import Backend.HardcodedQuotesDatabase, only: [random: 0, at_index: 1]

  @cases 1..10
  @indices 0..4

  test "random returns different quotes" do
    uniqueQuotesNumber = 
      Enum.uniq_by(@cases, fn _ -> random() end)
        |> Enum.count

    assert uniqueQuotesNumber > 1
  end

  test "at_index(index) returns the same quote for each index" do
    quotesNumberForEachIndex = 
      Enum.map(@indices, fn index -> 
        Enum.uniq_by(@cases, fn _ -> at_index(index) end)
          |> Enum.count
      end)

    refute Enum.any?(quotesNumberForEachIndex, fn count -> count > 1 end)
  end
end
