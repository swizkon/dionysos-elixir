defmodule Dionysos.Activities do
    use Ecto.Schema

    import Ecto.Changeset

    schema "activities" do
       field :user_id, :integer
       field :description, :string
       field :location, :string
       field :starts, Ecto.DateTime

       timestamps 
    end

    @required_fields ~w(user_id description)a
    @optional_fields ~w(location starts)a

    def changeset(activity, params \\ %{}) do
        activity
        |> cast(params, @required_fields ++ @optional_fields)
        |> validate_required(@required_fields)
    end

end