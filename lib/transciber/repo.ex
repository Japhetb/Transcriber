defmodule Transciber.Repo do
  use Ecto.Repo,
    otp_app: :transciber,
    adapter: Ecto.Adapters.Postgres
end
