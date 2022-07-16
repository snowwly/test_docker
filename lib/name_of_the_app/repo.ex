defmodule NameOfTheApp.Repo do
  use Ecto.Repo,
    otp_app: :name_of_the_app,
    adapter: Ecto.Adapters.Postgres
end
