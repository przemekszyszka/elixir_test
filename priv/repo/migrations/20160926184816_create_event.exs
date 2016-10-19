defmodule Musicar.Repo.Migrations.CreateEvent do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :name, :string
      add :address, :string
      add :city, :string
      add :start_date, :date
      add :end_date, :date
      add :ticket_cost, :string
      add :start_time, :time
      add :end_time, :time
      add :attending_users_count, :integer

      timestamps()
    end

  end
end
