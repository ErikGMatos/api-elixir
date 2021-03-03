defmodule RocketpayWeb.EmailView do
  def render("email.json", %{
        email: email,
        name: name,
        phone: phone,
        message: message,
        allow_whatsap_contact: allow_whatsap_contact
      }) do
    %{
      email: email,
      name: name,
      phone: phone,
      message: message,
      allow_whatsap_contact: allow_whatsap_contact
    }
  end
end
