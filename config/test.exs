use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :name_of_the_app, NameOfTheAppWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :name_of_the_app, NameOfTheApp.Repo,
  username: "postgres",
  password: "postgres",
  database: "name_of_the_app_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
