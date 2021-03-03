defmodule RocketpayWeb.EmailController do
  use RocketpayWeb, :controller
  alias Rocketpay.UserEmail
  alias Rocketpay.Mailer

  action_fallback RocketpayWeb.FallbackController

  def send(
        conn,
        %{
          "email" => email,
          "name" => name,
          "phone" => phone,
          "message" => message,
          "allow_whatsap_contact" => allow_whatsap_contact
        } = params
      ) do
    UserEmail.welcome(params)
    |> Mailer.deliver()

    put_status(conn, :ok)

    render(conn, "email.json", %{
      email: email,
      name: name,
      phone: phone,
      message: message,
      allow_whatsap_contact: allow_whatsap_contact
    })
  end
end
