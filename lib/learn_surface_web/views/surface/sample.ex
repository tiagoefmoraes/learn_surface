defmodule LearnSurfaceWeb.Sample do
  use Surface.Component

  def render(assigns) do
    ~H"""
    <div class="container" style="padding-bottom: 1.5rem">
      <div class="notification">
        {{ @inner_content.() }}
      </div>
    </div>
    """
  end
end
