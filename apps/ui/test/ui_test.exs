defmodule Ui.Test do
  use Ui.FeatureCase, async: true

  import Wallaby.Query, only: [css: 2]

  test "exactly quote is displayed on homepage", %{session: session} do
    selectedQuote = 
      session
        |> visit("/")
        |> find(css(".quote", count: 1))
        |> Wallaby.Element.text

    assert selectedQuote != ""
  end
end