defmodule <%= @project_name_camel_case %>.Action do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, only: [from: 2]

  alias <%= @project_name_camel_case %>.{Action,Repo}

  schema "actions" do
    field :name, :string
    field :entity_type, :string
    field :entity_id, :string
    field :data, :map

    timestamps()
  end

  def changeset(record, params \\ :empty) do
    record
    |> cast(params, [:name, :entity_type, :entity_id, :data])
    |> validate_required([:name, :entity_type, :entity_id])
  end

  def add(name, type, id) do
    %Action{}
    |> Action.changeset(%{name: name, entity_type: type, entity_id: id})
    |> Repo.insert!
  end

  def summary(type, id) do
    query = from t in Action,
      where: t.entity_type == ^type and t.entity_id == ^id,
      select: t.name

    Repo.all(query)
  end
end