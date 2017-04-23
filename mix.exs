defmodule Project.Mixfile do
  use Mix.Project

  @name    :gen_template_ecto_service
  @version "0.2.0"

  @deps [
    { :mix_templates,  ">0.0.0",  app: false },
    { :ex_doc,         ">0.0.0",  only: [:dev, :test] },
  ]

  @maintainers ["Andrew Forward <aforward@gmail.com>"]
  @github      "https://github.com/aforward/#{@name}"

  @description """
  A template `mix gen ecto_service «project»` that generates
  a project for building stand alone ecto services (using Posgres)
  """


  ############################################################

  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      elixir:  "~> 1.4",
      deps:    @deps,
      package: package(),
      description:     @description,
      build_embedded:  in_production,
      start_permanent: in_production,
    ]
  end

  defp package do
    [
      name:        @name,
      files:       ["lib", "mix.exs", "README.md", "LICENSE.md", "template", "template/$PROJECT_NAME$/.gitignore"],
      maintainers: @maintainers,
      licenses:    ["Apache 2.0"],
      links:       %{
        "GitHub" => @github,
      },
    ]
  end
end
