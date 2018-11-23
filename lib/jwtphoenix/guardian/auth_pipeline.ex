defmodule Jwtphoenix.Guardian.AuthPipeline do
  @moduledoc false
  use Guardian.Plug.Pipeline, otp_app: :jwtphoenix,
    module: Jwtphoenix.Guardian,
    error_handler: Jwtphoenix.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
