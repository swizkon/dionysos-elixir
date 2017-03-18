defmodule Dionysos.UserQueries do
    import Ecto.Query

    alias Dionysos.{Repo, Users}

    def any do
        Repo.one(from u in Users, select: count(u.id)) != 0
    end

    def get_all do
        Repo.all(from Users)
    end

    def get_by_username(username) do
        query = from u in Users,
                where: u.username == ^username
        Repo.all(query)
    end

    def get_by_id(id) do
        Repo.get(Users, id)
    end

    def create(user) do
        Repo.insert!(user)
    end
end