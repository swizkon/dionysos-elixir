defmodule DionysosWeb.ActivityController do
    use DionysosWeb.Web, :controller

    def show(conn, %{"id" => id}) do

        conn
        |> put_flash(:info, "Welcome to Phoenix, from flash info!")
        |> put_flash(:error, "Let's pretend we have an error.")


        activity = Dionysos.ActivityQueries.get_by_id(id)
        #|> IO.inspect()
        # |>
        render conn, "details.html", activity: activity
    end


  def index(conn, _params) do
      activities = Dionysos.ActivityQueries.get_all()
      render conn, "index.html", activities: activities
  end

end