defmodule Musicar.EventTest do
  use Musicar.ModelCase

  alias Musicar.Event

  @valid_attrs %{address: "some content", attending_users_count: 42, city: "some content", end_date: %{day: 17, month: 4, year: 2010}, end_time: %{hour: 14, min: 0, sec: 0}, name: "some content", start_date: %{day: 17, month: 4, year: 2010}, start_time: %{hour: 14, min: 0, sec: 0}, ticket_cost: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Event.changeset(%Event{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Event.changeset(%Event{}, @invalid_attrs)
    refute changeset.valid?
  end
end
