defmodule Rocketpay.UserEmail do
  import Swoosh.Email

  def welcome(%{
        "email" => email,
        "name" => name,
        "phone" => phone,
        "message" => message,
        "allow_whatsap_contact" => allow_whatsap_contact
      }) do
    new()
    |> to({"Zetta App", "faleconosco@zetta.app.br"})
    |> from({"Zetta App", "faleconosco@zetta.app.br"})
    |> subject("Contato via landpage")
    |> html_body(
      "
       <h2 style=\"color:#440099\">Olá, #{name}<span style=\"color:#75787b\"> entrou em contato via formulário da landpage, os dados enviados são:</span></h2>
       <h3 style=\"color:#75787b\">Nome: <span style=\"color:#440099\">#{name}</span></h3>
       <h3 style=\"color:#75787b\">Email: <span style=\"color:#440099\">#{email}</span></h3>
       <h3 style=\"color:#75787b\">Telefone: <span style=\"color:#440099\">#{phone}</span></h3>
       <h3 style=\"color:#75787b\">Mensagem: <span style=\"color:#440099\">#{message}</span></h3>
       <h3 style=\"color:#75787b\">Pode me chamar no whatsapp: <span style=\"color:#440099\">#{
        allow_whatsap_contact
      }</span></h3>"
    )
  end
end
