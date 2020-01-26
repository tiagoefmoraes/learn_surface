defmodule LearnSurface.Repo do
  use Ecto.Repo,
    otp_app: :learn_surface,
    adapter: Ecto.Adapters.Postgres
end
