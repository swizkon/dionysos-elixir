defmodule Dionysos.SubscriptionQueries do
    import Ecto.Query

    alias Dionysos.{Repo, Subscriptions}

    def any do
        Repo.one(from s in Subscriptions, select: count(s.id)) != 0
    end

    def get_all do
        Repo.all(from s in Subscriptions)
    end

    def get_all_for_user(user_id) do
        query = from s in Subscriptions,
                where: s.subscriber_id == ^user_id

        Repo.all(query)
    end

    def get_by_id(id) do
        Repo.get(Subscriptions, id)
    end

    def create(subscription) do
        Repo.insert!(subscription)
    end
end