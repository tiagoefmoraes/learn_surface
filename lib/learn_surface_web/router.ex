defmodule LearnSurfaceWeb.Router do
  use LearnSurfaceWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LearnSurfaceWeb do
    pipe_through :browser

    live "/*path", SurfaceIndex
  end

  # Other scopes may use custom stacks.
  # scope "/api", LearnSurfaceWeb do
  #   pipe_through :api
  # end
end
