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

    <Sample>
      TODO: a, input submit, input reset, span<br/>
      <a class="button">Anchor</a>
      <Button>Button</Button>
      <input class="button" type="submit" value="Submit input">
      <input class="button" type="reset" value="Reset input">
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

    <Sample>
      <div class="buttons are-small">
        <Button>Small</Button>
        <Button>Small</Button>
        <Button>Small</Button>
        <Button size="normal">Normal</Button>
        <Button>Small</Button>
      </div>
    </Sample>

    <Sample>
      <Button size="small" expand>Small expanded</Button>
      <Button expand>Normal expanded</Button>
      <Button size="medium" expand>Medium expanded</Button>
      <Button size="large" expand>Large expanded</Button>
    </Sample>

    <Sample>
      <Button outlined>Outlined</Button>
      <Button color="primary" outlined>Outlined</Button>
      <Button color="link" outlined>Outlined</Button>
      <Button color="info" outlined>Outlined</Button>
      <Button color="success" outlined>Outlined</Button>
      <Button color="danger" outlined>Outlined</Button>
    </Sample>

    <Sample class="is-link">
      <Button color="primary" inverted>Inverted</Button>
      <Button color="link" inverted>Inverted</Button>
      <Button color="info" inverted>Inverted</Button>
      <Button color="success" inverted>Inverted</Button>
      <Button color="danger" inverted>Inverted</Button>
    </Sample>

    <Sample class="is-link">
      <Button color="primary" inverted outlined>Invert Outlined</Button>
      <Button color="link" inverted outlined>Invert Outlined</Button>
      <Button color="info" inverted outlined>Invert Outlined</Button>
      <Button color="success" inverted outlined>Invert Outlined</Button>
      <Button color="danger" inverted outlined>Invert Outlined</Button>
    </Sample>

    <Sample>
      <Button rounded>Rounded</Button>
      <Button color="primary" rounded>Rounded</Button>
      <Button color="link" rounded>Rounded</Button>
      <Button color="info" rounded>Rounded</Button>
      <Button color="success" rounded>Rounded</Button>
      <Button color="danger" rounded>Rounded</Button>
    </Sample>

    <Sample>
      <Button>Normal</Button>
      <Button color="primary">Normal</Button>
      <Button color="link">Normal</Button>
      <Button color="info">Normal</Button>
      <Button color="success">Normal</Button>
      <Button color="warning">Normal</Button>
      <Button color="danger">Normal</Button>
    </Sample>

    <Sample>
      <Button hovered>Hover</Button>
      <Button color="primary" hovered>Hover</Button>
      <Button color="link" hovered>Hover</Button>
      <Button color="info" hovered>Hover</Button>
      <Button color="success" hovered>Hover</Button>
      <Button color="warning" hovered>Hover</Button>
      <Button color="danger" hovered>Hover</Button>
    </Sample>

    <Sample>
      <Button focused>Focus</Button>
      <Button color="primary" focused>Focus</Button>
      <Button color="link" focused>Focus</Button>
      <Button color="info" focused>Focus</Button>
      <Button color="success" focused>Focus</Button>
      <Button color="warning" focused>Focus</Button>
      <Button color="danger" focused>Focus</Button>
    </Sample>

    <Sample>
      <Button active>Active</Button>
      <Button color="primary" active>Active</Button>
      <Button color="link" active>Active</Button>
      <Button color="info" active>Active</Button>
      <Button color="success" active>Active</Button>
      <Button color="warning" active>Active</Button>
      <Button color="danger" active>Active</Button>
    </Sample>

    <Sample>
      <Button loading>Loading</Button>
      <Button color="primary" loading>Loading</Button>
      <Button color="link" loading>Loading</Button>
      <Button color="info" loading>Loading</Button>
      <Button color="success" loading>Loading</Button>
      <Button color="warning" loading>Loading</Button>
      <Button color="danger" loading>Loading</Button>
    </Sample>

    <Sample>
      TODO: Button Span<br/>
      <span class="button is-static">Static</span>
    </Sample>

    <Sample>
      <Button title="Disabled button" disabled>Disabled</Button>
      <Button color="primary" title="Disabled button" disabled>Disabled</Button>
      <Button color="link" title="Disabled button" disabled>Disabled</Button>
      <Button color="info" title="Disabled button" disabled>Disabled</Button>
      <Button color="success" title="Disabled button" disabled>Disabled</Button>
      <Button color="warning" title="Disabled button" disabled>Disabled</Button>
      <Button color="danger" title="Disabled button" disabled>Disabled</Button>
    </Sample>

    <a href="https://github.com/tiagoefmoraes/learn_surface/blob/master/lib/learn_surface_web/views/surface/surface_index.ex">demo code</a><br/>
    <a href="https://github.com/tiagoefmoraes/learn_surface/blob/master/lib/surface_bulma/button.ex">Button code</a>
    """
  end
end
