defmodule Musicar.Post do
  use Musicar.Web, :model

  schema "posts" do
    field :content, :string
    field :title, :string
    belongs_to :user, Musicar.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content, :title])
    |> validate_required([:content, :title])
  end
end
