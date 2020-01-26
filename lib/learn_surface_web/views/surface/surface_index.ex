defmodule LearnSurfaceWeb.SurfaceIndex do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div>
      Hello Surface World
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
