defmodule Musicar.UserTest do
  use Musicar.ModelCase

  alias Musicar.User

  @valid_attrs %{city: "some content", email: "user@musicar.pl", first_name: "some content", last_name: "some content", phone_number: "some content", show_email: true, show_phone: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end

  test "phone_number is not required" do
    changeset = User.changeset(%User{}, Map.delete(@valid_attrs, :phone_number))
  end
end
