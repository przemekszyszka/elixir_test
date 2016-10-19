defmodule Musicar.User do
  use Musicar.Web, :model

  schema "users" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :phone_number, :string
    field :city, :string
    field :show_email, :boolean, default: false
    field :show_phone, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :first_name, :last_name, :phone_number, :city, :show_email, :show_phone])
    |> validate_required([:email, :first_name, :last_name, :show_email, :show_phone])
  end
end
