defmodule Dionysos.Repo.Migrations.AddActivitiesTable do
  use Ecto.Migration

  def change do
      create table(:activities) do
        add :user, :string, size: 100
        add :description, :string, size: 250
        add :location, :string, size: 50
        add :starts, :utc_datetime

        timestamps
      end
  end
end
