defmodule DionysosWeb.ActivityController do
    use DionysosWeb.Web, :controller

    def show(conn, %{"id" => id}) do
        activity = Dionysos.ActivityQueries.get_by_id(id)
        |> IO.inspect()

        render conn, "details.html", activity: activity
    end

end