defmodule Dionysos.Repo.Migrations.AddSubscriptionsTable do
  use Ecto.Migration

  def change do

      create table(:subscriptions) do
        add :publisher_id, :integer
        add :subscriber_id, :integer
        add :isactive, :integer

        timestamps
      end
  end
end
