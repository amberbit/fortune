defmodule Ui.Test do
  use Ui.FeatureCase, async: true

  import Wallaby.Query, only: [css: 2, link: 1]

  @indices 1..5

  test "exactly one quote is displayed on homepage", %{session: session} do
    selectedQuoteLength = 
      session
        |> visit("/")
        |> text(css(".quote", count: 1))
        |> String.length
    
    assert selectedQuoteLength > 0
  end

  test "exactly one quote is displayed for each index 1 to 5", %{session: session} do
    selectedQuotesLength = 
      Enum.map(@indices, fn index -> 
        session
          |> visit("/")
          |> click(link("#{index}"))
          |> text(css(".quote", count: 1))
          |> String.length
      end)
    
    assert Enum.all?(selectedQuotesLength, fn length -> length > 0 end)
  end

  test "no quote is displayed for nonexistent index", %{session: session} do
    session
      |> visit("/1234")
      |> assert_has(css(".not-found", count: 1, text: "Page not found"))
  end
end