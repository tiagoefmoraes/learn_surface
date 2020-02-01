defmodule LearnSurfaceWeb.SurfaceIndex do
  use Surface.LiveView
  alias LearnSurfaceWeb.Sample
  alias SurfaceBulma.Button

  def render(assigns) do
    ~H"""
    <div>
      <h1 class="title is-1">Button</h1>

      <Sample>
        <Button>Button</Button>
      </Sample>

      <h2 class="subtitle is-3">Colors</h2>

      <Sample>
        <Button color="white">White</Button>
        <Button color="light">Light</Button>
        <Button color="dark">Dark</Button>
        <Button color="black">Black</Button>
        <Button color="text">Text</Button>
      </Sample>

      <Sample>
        <div class="buttons">
          <Button color="primary">Primary</Button>
          <Button color="link">Link</Button>
        </div>

        <div class="buttons">
        <Button color="info">Info</Button>
        <Button color="success">Success</Button>
        <Button color="warning">Warning</Button>
        <Button color="danger">Danger</Button>
        </div>
      </Sample>

      <Sample>
        <div class="buttons">
          <Button color="primary" light>Primary</Button>
          <Button color="link" light>Link</Button>
        </div>

        <div class="buttons">
          <Button color="info" light>Info</Button>
          <Button color="success" light>Success</Button>
          <Button color="warning" light>Warning</Button>
          <Button color="danger" light>Danger</Button>
        </div>
      </Sample>

      <h2 class="subtitle is-3">Sizes</h2>
      <Sample>
        <Button size="small">Small</Button>
        <Button>Default</Button>
        <Button size="normal">Normal</Button>
        <Button size="medium">Medium</Button>
        <Button size="large">Large</Button>
      </Sample>

      <Sample>
        <div class="buttons are-medium">
          <Button>All</Button>
          <Button>Medium</Button>
          <Button>Size</Button>
        </div>
      </Sample>

      <a href="https://github.com/tiagoefmoraes/learn_surface/blob/master/lib/learn_surface_web/views/surface/surface_index.ex">demo code</a><br/>
      <a href="https://github.com/tiagoefmoraes/learn_surface/blob/master/lib/surface_bulma/button.ex">Button code</a>

    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
