defmodule Backend.SqlQuotesDatabase do
  @behaviour Backend.QuotesWorker

  alias Backend.{Repo, Quote}

  def random() do
    {:ok, Enum.random(get_quotes())}
  end

  def at_index(index) do
    case Enum.at(get_quotes(), index) do
      nil -> {:error, :not_found}
      quote_at_index -> {:ok, quote_at_index}
    end
  end

  defp get_quotes() do
    Repo.all(Quote)
      |> Enum.map(fn(q) ->
        %{quote: q.quote, author: q.author}
      end)
  end
end
