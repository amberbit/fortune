defmodule Backend.FortuneServer do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: {:global, __MODULE__})
  end

  @quotes_db Backend.HardcodedQuotesDatabase

  def init(:ok) do
    {:ok, @quotes_db}
  end

  def handle_call(:fetch_random_quote, _from, quotes_db) do
    {:reply, quotes_db.random(), quotes_db}
  end

  def handle_call({:fetch_quote, index}, _from, quotes_db) do
    {:reply, quotes_db.at_index(index), quotes_db}
  end
end
