use Mix.Config

config :<%= @project_name %>, <%= @project_name_camel_case %>.Repo, [
  adapter: Ecto.Adapters.Postgres,
  database: "<%= @project_name %>_#{Mix.env}",
  username: "postgres",
  password: "",
  hostname: "localhost",
]