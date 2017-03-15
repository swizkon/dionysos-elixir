defmodule DionysosWeb.PageController do
  use DionysosWeb.Web, :controller

  def index(conn, _params) do
    conn
        |> put_flash(:info, "Welcome to Phoenix, from flash info!")
        |> put_flash(:error, "Let's pretend we have an error.")

    render conn, "index.html"
  end
end
