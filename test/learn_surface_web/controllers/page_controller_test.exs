defmodule LearnSurfaceWeb.PageControllerTest do
  use LearnSurfaceWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Surface Bulma"
  end
end
