defmodule OauthExample do
  @moduledoc """
  Documentation for OauthExample.
  """

  @doc """
  Hello world.

  ## Examples

      iex> OauthExample.hello
      :world

  """
  def hello do
    :world
  end

  def authorization_code() do
    client = OAuth2.Client.new([
      strategy: OAuth2.Strategy.AuthCode,
      client_id: "kasjdf0918231",
      client_secret: "10982301820931273121",
      site: "https://open.example.cn",
      redirect_uri: "https://open.example.cn/auth/callback"
    ])
    # authorization url
    auth_url = OAuth2.Client.authorize_url!(client)
    IO.puts auth_url

    #client = OAuth2.Client.get_token!(client, code: "someauthcode")
  end
end
