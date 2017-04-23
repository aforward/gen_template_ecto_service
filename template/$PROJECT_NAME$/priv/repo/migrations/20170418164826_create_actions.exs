defmodule <%= @project_name_camel_case %>.Repo.Migrations.CreateActions do
  use Ecto.Migration

  def change do
    create table(:actions) do
      add :name, :string
      add :entity_type, :string
      add :entity_id, :string
      add :data, :jsonb

      timestamps()
    end
  end
end