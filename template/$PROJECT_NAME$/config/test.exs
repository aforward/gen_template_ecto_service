use Mix.Config

config :<%= @project_name %>, <%= @project_name_camel_case %>.Repo, [
  adapter: Ecto.Adapters.Postgres,
  database: "<%= @project_name %>_#{Mix.env}",
  username: "postgres",
  password: "",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox]

config :logger,
  backends: [:console],
  level: :warn,
  compile_time_purge_level: :info