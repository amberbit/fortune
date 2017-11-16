defmodule Ui.PageController do
  use Ui, :controller

  def index(conn, _params) do
    render conn, "index.html", quote: Ui.FortunesClient.fetch_random_quote
  end
end
