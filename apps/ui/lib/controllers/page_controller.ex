defmodule Ui.PageController do
  use Ui, :controller

  require Backend.FortuneServer

  def index(conn, _params) do
    render conn, "index.html", quote: Backend.FortuneServer.fetch_random_quote 
  end
end
