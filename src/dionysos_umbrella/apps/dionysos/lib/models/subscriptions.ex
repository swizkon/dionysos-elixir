defmodule Dionysos.Subscriptions do
    use Ecto.Schema

    import Ecto.Changeset

    schema "subscriptions" do
       field :publisher_id, :integer
       field :subscriber_id, :integer
       field :isactive, :integer
       timestamps 
    end

    @required_fields ~w(publisher_id subscriber_id)a
    @optional_fields ~w(isactive)a

    def changeset(subscription, params \\ %{}) do
        subscription
        |> cast(params, @required_fields ++ @optional_fields)
        |> validate_required(@required_fields)
    end

end