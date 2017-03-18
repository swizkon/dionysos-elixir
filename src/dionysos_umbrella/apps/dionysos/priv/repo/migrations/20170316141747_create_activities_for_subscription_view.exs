defmodule Dionysos.Repo.Migrations.CreateActivitiesForSubscriptionView do
  use Ecto.Migration
def up do
    execute """
    CREATE VIEW user_feed AS
      select a.description as description, 
          u.email as user_email,
          s.subscriber_id as subscriber_id
           FROM activities as a
      JOIN users as u ON u.id = a.user_id
      JOIN subscriptions as s ON s.publisher_id = u.id
    ;
    """
  end

  def down do
    execute "DROP VIEW user_feed;"
  end
end
