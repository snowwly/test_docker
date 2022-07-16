use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :app_name, AppNameWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :app_name, AppName.Repo,
  username: "postgres",
  password: "postgres",
  database: "app_name_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
