defmodule Ui.PageController do
  use Ui, :controller

  def index(conn, _params) do
    render conn, "index.html", quote: Backend.FortuneServer.fetch_random_quote 
  end
end
