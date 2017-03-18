defmodule Dionysos.ActivityQueries do
    import Ecto.Query

    alias Dionysos.{Repo, Activities}

    def any do
        Repo.one(from a in Activities, select: count(a.id)) != 0
    end

    def get_all do
        Repo.all(from a in Activities, order_by: [desc: a.updated_at])
    end

    def get_all_from_user(username) do
        query = from a in Activities,
                where: a.username == ^username

        Repo.all(query)
    end

    def get_by_id(id) do
        Repo.get(Activities, id)
    end

    def create(activity) do
        Repo.insert!(activity)
    end
end