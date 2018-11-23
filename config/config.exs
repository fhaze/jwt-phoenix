# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :jwtphoenix,
  ecto_repos: [Jwtphoenix.Repo]

# Configures the endpoint
config :jwtphoenix, JwtphoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ON4Wc62OtQmxfYpfcOlUFqr6xlmGgAdybAByTmKSHDI1lvmbXc8P9FwBilKy8Pd5",
  render_errors: [view: JwtphoenixWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Jwtphoenix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :jwtphoenix, Jwtphoenix.Guardian,
  issuer: "jwtphoenix",
  secret_key: "RTZfSjtsg8MwydCB5aEZcACH5qXLAMOvY2rxCHGzneKEkT2CaftIP2cxGHGKze2A"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
