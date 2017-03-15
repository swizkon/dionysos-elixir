defmodule DionysosWeb.PageController do
  use DionysosWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
