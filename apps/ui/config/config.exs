# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ui,
  namespace: Ui

# Configures the endpoint
config :ui, Ui.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vipOyfWr8oM2lU/MoVoIzS5fibLeHX0pN+WMvSe+kPiEKIVSmyNg+ZYEH0sIP0ci",
  render_errors: [view: Ui.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ui.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
