defmodule Ui.FortunesClient do
  def fetch_random_quote do
    GenServer.call(Backend.FortuneServer, :fetch_random_quote)
  end
end
