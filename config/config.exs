# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :learn_surface,
  ecto_repos: [LearnSurface.Repo]

# Configures the endpoint
config :learn_surface, LearnSurfaceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dfZwSq0rPUEj70UIwz6a666791/WB8PMEIfetWqvAwHQWfWwdbFIzkANAT2Yln7J",
  render_errors: [view: LearnSurfaceWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LearnSurface.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "kStPJW+kC4H6yhKtBiTNGq/elBH1wQkDOEQufcnDLkpyWYIIrdGjspVWPHNTClhQ"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
