defmodule Mix.Gen.Template.EctoService do

  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name:       :project,
    short_desc: "A template for building an elixir service based on a Postgres database using Ecto.",
    source_dir: "../template",
    options:    [
      app: [
        to:       :app,
        required: false,
        takes:    "app_name",
        desc:     "sets the application name to «app_name»"
      ],
      application: [ same_as: :app ],

      module: [
         to:        :project_name_camel_case,
         required:  false,
         takes:     "«project_name»",
         desc:      "sets the name of the module to «project_name»"
       ]
    ]
end
