defmodule LearnSurfaceWeb.Sample do
  use Surface.Component

  property class, :string

  def render(assigns) do
    ~H"""
    <div class="container" style="padding-bottom: 1.5rem">
      <div class={{"notification", @class, "sampleparent" }}>
        {{ @inner_content.() }}
      </div>
    </div>
    """
  end
end
