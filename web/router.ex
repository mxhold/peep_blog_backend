defmodule PeepBlogBackend.Router do
  use PeepBlogBackend.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug PlugCors, [origins: ["localhost:4200"]]
  end

  scope "/", PeepBlogBackend do
    pipe_through :api

    resources "/posts", PostController
    options "/posts*anything", PostController, :options
  end
end
