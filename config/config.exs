# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :musicar, Musicar.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "musicar_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


# General application configuration
config :musicar,
  ecto_repos: [Musicar.Repo]

# Configures the endpoint
config :musicar, Musicar.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LIKevxlFniU1hoWdiE0zS11vUkr+u4lhUcoNkkfXCcYEYiJHrfVY5cBgAO6ZroWe",
  render_errors: [view: Musicar.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Musicar.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
