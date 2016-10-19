defmodule Musicar.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string, null: false
      add :first_name, :string, null: false
      add :last_name, :string, null: false
      add :phone_number, :string
      add :city, :string
      add :show_email, :boolean, default: false, null: false
      add :show_phone, :boolean, default: false, null: false

      timestamps()
    end

  end
end
