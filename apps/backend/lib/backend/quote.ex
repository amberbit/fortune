defmodule Backend.Quote do
  use Ecto.Schema

  schema "quotes" do
    field :author, :string
    field :quote, :string
  end
end
