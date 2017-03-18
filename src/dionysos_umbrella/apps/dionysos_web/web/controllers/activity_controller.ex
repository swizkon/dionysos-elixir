defmodule DionysosWeb.ActivityController do
    use DionysosWeb.Web, :controller

    def index(conn, _params) do
        activities = Dionysos.ActivityQueries.get_all()
        render conn, "index.html", activities: activities
    end

    def show(conn, %{"id" => id}) do
        activity = Dionysos.ActivityQueries.get_by_id(id)
        render conn, "details.html", activity: activity
    end

    def create(conn, _params) do
        changeset = Dionysos.Activities.changeset(%Dionysos.Activities{}, %{})

        render conn, "create.html", changeset: changeset
    end

    def add(conn, %{"activities" => activities}) do

        activities = Map.update!(activities, "starts", fn d -> d <> ":00" end)
        
        %{id: id} = Dionysos.Activities.changeset(%Dionysos.Activities{}, activities)
                    |> Dionysos.ActivityQueries.create

        redirect conn, to: activity_path(conn, :show, id)
    end

end