defmodule Dionysos.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
      create table(:users) do
        add :username, :string, size: 50
        add :email, :string, size: 100
        add :description, :string, size: 250

        timestamps
      end
  end
end
