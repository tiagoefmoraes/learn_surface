defmodule LearnSurfaceWeb.Button do
  use Surface.Component
  alias LearnSurfaceWeb.Sample
  alias SurfaceBulma.Button

  def render(assigns) do
    ~H"""
    <h1 class="title">Button</h1>
    <h2 class="subtitle">
      A simple container to divide your page into <strong>sections</strong>, like the one you're currently reading
    </h2>

    <Sample>
      <Button>Button</Button>
    </Sample>

    <h2 class="subtitle">Colors</h2>

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

    <h2 class="subtitle">Sizes</h2>
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
    """
  end
end
