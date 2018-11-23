defmodule Jwtphoenix.Repo do
  use Ecto.Repo,
    otp_app: :jwtphoenix,
    adapter: Ecto.Adapters.MySQL
end
