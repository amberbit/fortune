defmodule Ui.FortuneClient do
  def fetch_random_quote do
    GenServer.call({:global, Backend.FortuneServer}, :fetch_random_quote)
  end
end
