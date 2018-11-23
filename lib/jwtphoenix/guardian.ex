defmodule Jwtphoenix.Guardian do
  @moduledoc false
  use Guardian, otp_app: :jwtphoenix
  alias Jwtphoenix.Accounts.{User}

  def subject_for_token(%User{} = user, _claims), do: { :ok, user.id        }
  def subject_for_token(_, _),                    do: { :error, "No Claims" }

  def resource_from_claims(nil) do
    { :error, "No Claims" }
  end

  def resource_from_claims(claims) do
    id = claims["sub"]
    resource = Jwtphoenix.Accounts.get_user!(id)
    { :ok, resource }
  end
end
