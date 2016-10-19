defmodule Musicar.Event do
  use Musicar.Web, :model
  alias Musicar.Event

  schema "events" do
    field :name, :string
    field :address, :string
    field :city, :string
    field :start_date, Ecto.Date
    field :end_date, Ecto.Date
    field :ticket_cost, :string
    field :start_time, Ecto.Time
    field :end_time, Ecto.Time
    field :attending_users_count, :integer

    timestamps()
  end

  @required_fields ~w(name address city start_date end_date)a
  @optional_fields ~w(ticket_cost start_time end_time attending_users_count)a

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :address, :city, :start_date, :end_date, :ticket_cost, :start_time, :end_time, :attending_users_count])
    |> validate_required(@required_fields)
  end
end
