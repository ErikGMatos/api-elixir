defmodule Rocketpay.UserEmail do
  import Swoosh.Email

  def welcome(%{"email" => email, "name" => name}) do
    new()
    |> to({name, email})
    |> from({"Erik Matos", "erikmatos40@hotmail.com"})
    |> subject("Contato via landpage")
    |> text_body(
      "#{name} entrou em contato via formulário da landpage, os dados enviados são: \n 122345\nerik matos\n texto texto texto texto"
    )
  end
end
