defmodule Backend.FortuneServer do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def init(:ok) do
    quotes = [%{
      quote: "It is better to be making the news than taking it; to be an actor rather than a critic.",
      author: "Winston Churchill"
    }, %{
      quote: "To improve is to change, so to be perfect is to have changed often.",
      author: "Winston Churchill"
    }, %{
      quote: "Attitude is a little thing that makes a big difference.",
      author: "Winston Churchill"
    }, %{
      quote: "You have enemies? Good. That means you've stood up for something, sometime in your life.",
      author: "Winston Churchill"
    }, %{
      quote: "The best argument against democracy is a five-minute conversation with the average voter.",
      author: "Winston Churchill"
    }]

    {:ok, quotes}
  end

  def handle_call(:fetch_random_quote, _from, quotes) do
    {:reply, Enum.random(quotes), quotes}
  end
end
