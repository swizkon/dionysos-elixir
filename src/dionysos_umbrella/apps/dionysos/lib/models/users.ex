defmodule Dionysos.Users do
    use Ecto.Schema

    import Ecto.Changeset

    schema "users" do
       field :username, :string
       field :email, :string
       field :description, :string

       timestamps 
    end

    @required_fields ~w(username email)a
    @optional_fields ~w(description)a

    def changeset(user, params \\ %{}) do
        user
        |> cast(params, @required_fields ++ @optional_fields)
        |> validate_required(@required_fields)
    end

end