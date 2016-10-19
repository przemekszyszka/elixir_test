defmodule Musicar.PageController do
  use Musicar.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
