defmodule RocketpayWeb.EmailView do
  def render("email.json", %{name: name, email: email}) do
    %{
      name: name,
      email: email
    }
  end
end
