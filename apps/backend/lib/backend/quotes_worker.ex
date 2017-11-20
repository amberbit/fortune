defmodule Backend.QuotesWorker do
  @callback random() :: {:ok, %{quote: String.t, author: String.t }}
  @callback at_index(integer) ::
              {:ok, %{quote: String.t, author: String.t }}
              | {:error, :not_found}
end
