defmodule Ui.FortuneClient do
  def fetch_random_quote do
    GenServer.call({:global, Backend.FortuneServer}, :fetch_random_quote)
  end

  def fetch_quote(number) when is_integer(number) do
    GenServer.call({:global, Backend.FortuneServer}, {:fetch_quote, number})
  end
end
