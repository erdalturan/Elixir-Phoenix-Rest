use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :my_app, MyAppWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
config :bcrypt_elixir, :log_rounds, 4
# Configure your database
config :my_app, MyApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "my_app_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
