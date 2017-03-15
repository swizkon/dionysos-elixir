# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :dionysos_web, DionysosWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jOz6Qqk481lM7/3AdAUHX2vTIG2ymcUxorSGFhcgXrmHTdmzvbRMA0C5qyJD00SQ",
  render_errors: [view: DionysosWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DionysosWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
