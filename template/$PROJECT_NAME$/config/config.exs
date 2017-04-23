use Mix.Config

config :<%= @project_name %>, ecto_repos: [<%= @project_name_camel_case %>.Repo]

if Mix.env == :dev do
  config :mix_test_watch,
    setup_tasks: ["ecto.reset"],
    ansi_enabled: :ignore,
    clear: true
end

import_config "#{Mix.env}.exs"