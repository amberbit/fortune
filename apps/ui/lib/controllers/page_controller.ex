defmodule Ui.PageController do
  use Ui, :controller

  require Backend

  def index(conn, _params) do
    render conn, "index.html", quote: Backend.randomQuote 
  end
end
