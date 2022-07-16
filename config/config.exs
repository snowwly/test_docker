# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :app_name,
  ecto_repos: [AppName.Repo]

# Configures the endpoint
config :app_name, AppNameWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vxtyI1+K06pUYD2uv2/CwyWNDly2H/9w2tYQSJYf4Rxl+mtuMxskOzjHnfbsbz9a",
  render_errors: [view: AppNameWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AppName.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
