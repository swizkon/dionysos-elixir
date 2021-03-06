defmodule DionysosWeb.Router do
  use DionysosWeb.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DionysosWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/activities", ActivityController, :index
    get "/activities/new", ActivityController, :create
    post "/activities/new", ActivityController, :add
    get "/activities/:id", ActivityController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", DionysosWeb do
  #   pipe_through :api
  # end
end
