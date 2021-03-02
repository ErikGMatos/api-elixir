defmodule RocketpayWeb.EmailController do
  use RocketpayWeb, :controller
  alias Rocketpay.UserEmail
  alias Rocketpay.Mailer

  action_fallback RocketpayWeb.FallbackController

  def send(conn, %{"email" => email, "name" => name} = params) do
    UserEmail.welcome(params)
    |> Mailer.deliver()

    put_status(conn, :ok)
    render(conn, "email.json", %{name: name, email: email})
  end
end
