defmodule Ui.PageController do
  use Ui, :controller

  def index(conn, _params) do
    {:ok, found_quote} = Ui.FortuneClient.fetch_random_quote()
    render conn, "index.html", found_quote: found_quote
  end

  def show(conn, %{"id" => id}) do
    case id |> String.to_integer() |>  Ui.FortuneClient.fetch_quote() do
      {:error, :not_found} -> render conn, Ui.ErrorView, "404.html"
      {:ok, found_quote} -> render conn, "index.html", found_quote: found_quote
    end
  end
end
