defmodule Ui.FeatureCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      import Ui.Router.Helpers
    end
  end

  setup _tags do
    {:ok, _} = Application.ensure_all_started(:ui)
    Application.put_env(:wallaby, :base_url, "http://localhost:4000")
    {:ok, _} = Application.ensure_all_started(:wallaby)

    {:ok, session} = Wallaby.start_session()
    {:ok, session: session}
  end
end