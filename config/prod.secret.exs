use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :peep_blog_backend, PeepBlogBackend.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :peep_blog_backend, PeepBlogBackend.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL") || "ecto://postgres:postgres@localhost/blog_backend_prod",
  size: 20 # The amount of database connections in the pool
