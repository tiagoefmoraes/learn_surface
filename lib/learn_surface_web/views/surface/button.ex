defmodule LearnSurfaceWeb.Button do
  use Surface.LiveComponent
  alias LearnSurfaceWeb.Sample
  alias LearnSurfaceWeb.SampleCode
  alias LearnSurfaceWeb.SectionSeparator
  alias SurfaceBulma.Button
  alias SurfaceBulma.Icon

  def render(assigns) do
    ~H"""
    <div>
      <h1 class="title">Button</h1>
      <h2 class="subtitle">
        The classic <strong>button</strong>, in different colors, sizes, and states
      </h2>

      <#SampleCode>
        <Button>Button</Button>
      </#SampleCode>

      <h4 class="subtitle">Tags</h4>

      <#SampleCode>
        <!-- TODO: a, input submit, input reset, span<br/> -->
        <div class="buttons">
          <a class="button">Anchor</a>
          <Button>Button</Button>
          <input class="button" type="submit" value="Submit input">
          <input class="button" type="reset" value="Reset input">
        </div>
      </#SampleCode>

      <SectionSeparator id="click" title="Click" />

      <Sample>
        <div class="demo">
          <p>Clicks: {{@clickCount}}</p>
          <Button click="increment">Increment</Button><br/>
        </div>
        <div class="code"><pre><code>
        {{"use Surface.LiveComponent
        ...
        Clicks: <p>@clickCount</p>
        <Button click=\"increment\">Increment</Button>
        ...
        def mount(socket) do
          {:ok, assign(socket, clickCount: 0)}
        end

        def handle_event(\"increment\", _, socket) do
          {:noreply, update(socket, :clickCount, &(&1 + 1))}
        end
        "}}</code></pre></div>
      </Sample>

      <SectionSeparator id="colors" title="Colors" />

      <#SampleCode>
        <Button color="white">White</Button>
        <Button color="light">Light</Button>
        <Button color="dark">Dark</Button>
        <Button color="black">Black</Button>
        <Button color="text">Text</Button>
      </#SampleCode>

      <h4 class="subtitle">Primary colors</h4>

      <#SampleCode>
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
      </#SampleCode>

      <h4 class="subtitle">Light colors</h4>

      <#SampleCode>
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
      </#SampleCode>

      <SectionSeparator id="sizes" title="Sizes" />

      <#SampleCode>
        <div class="buttons">
          <Button size="small">Small</Button>
          <Button>Default</Button>
          <Button size="normal">Normal</Button>
          <Button size="medium">Medium</Button>
          <Button size="large">Large</Button>
        </div>
      </#SampleCode>

      <h4 class="subtitle">Size of all buttons in a List of buttons</h4>

      <#SampleCode>
        <div class="buttons are-medium">
          <Button>All</Button>
          <Button>Medium</Button>
          <Button>Size</Button>
        </div>
      </#SampleCode>

      <SectionSeparator id="displays" title="Displays" />

      <#SampleCode>
        <div class="buttons">
          <Button size="small" expand>Small expanded</Button>
          <Button expand>Normal expanded</Button>
          <Button size="medium" expand>Medium expanded</Button>
          <Button size="large" expand>Large expanded</Button>
        </div>
      </#SampleCode>

      <SectionSeparator id="styles" title="Styles" />

      <h4 class="subtitle">Outlined</h4>

      <#SampleCode>
        <div class="buttons">
          <Button outlined>Outlined</Button>
          <Button color="primary" outlined>Outlined</Button>
          <Button color="link" outlined>Outlined</Button>
          <Button color="info" outlined>Outlined</Button>
          <Button color="success" outlined>Outlined</Button>
          <Button color="danger" outlined>Outlined</Button>
        </div>
      </#SampleCode>

      <h4 class="subtitle">Inverted</h4>

      <#SampleCode class="">
        <div class="buttons">
          <Button color="primary" inverted>Inverted</Button>
          <Button color="link" inverted>Inverted</Button>
          <Button color="info" inverted>Inverted</Button>
          <Button color="success" inverted>Inverted</Button>
          <Button color="danger" inverted>Inverted</Button>
        </div>
      </#SampleCode>

      <h4 class="subtitle">Inverted Outlined</h4>

      <#SampleCode class="has-background-grey-light">
        <div class="buttons">
          <Button color="primary" inverted outlined>Invert Outlined</Button>
          <Button color="link" inverted outlined>Invert Outlined</Button>
          <Button color="info" inverted outlined>Invert Outlined</Button>
          <Button color="success" inverted outlined>Invert Outlined</Button>
          <Button color="danger" inverted outlined>Invert Outlined</Button>
        </div>
      </#SampleCode>

      <h4 class="subtitle">Rounded</h4>

      <#SampleCode>
        <div class="buttons">
          <Button rounded>Rounded</Button>
          <Button color="primary" rounded>Rounded</Button>
        </div>
      </#SampleCode>

      <SectionSeparator id="states" title="States" />

      <#SampleCode>
        <div class="buttons">
          <Button>Normal</Button>
          <Button hovered>Hover</Button>
          <Button active>Active</Button>
          <Button focused>Focus</Button>
          <Button loading>Loading</Button>
          <!-- TODO: Button Span -->
          <span class="button is-static">Static</span>
          <Button title="Disabled button" disabled>Disabled</Button>
        </div>
      </#SampleCode>

      <SectionSeparator id="icons" title="Icons" />

      <#SampleCode>
        <p class="buttons">
          <Button>
            <Icon icon="fas fa-bold" />
          </Button>
          <Button>
            <Icon icon="fab fa-phoenix-framework" />
            <span>Phoenix</span>
          </Button>
          <Button color="danger" outlined>
            <span>Erlang</span>
            <Icon icon="fab fa-erlang" />
          </Button>
          <Button size="large">
            <Icon icon="fab fa-phoenix-framework" />
            <span>Phoenix</span>
          </Button>
        </p>
      </#SampleCode>

      <#SampleCode>
        <p class="buttons">
          <Button size="large">
            <Icon size="small" icon="fas fa-heading" />
          </Button>
          <Button size="large">
            <Icon icon="fas fa-heading fa-lg" />
          </Button>
          <Button size="large">
            <Icon size="medium" icon="fas fa-heading fa-2x" />
          </Button>
        </p>
      </#SampleCode>

      <SectionSeparator id="button_group" title="Button group" />

      <#SampleCode>
        <div class="field is-grouped">
          <p class="control">
            <Button color="link">
              Save changes
            </Button>
          </p>
          <p class="control">
            <Button>
              Cancel
            </Button>
          </p>
          <p class="control">
            <Button color="danger">
              Delete post
            </Button>
          </p>
        </div>
      </#SampleCode>

      <SectionSeparator id="button_addons" title="Button addons" />

      <#SampleCode>
        <div class="field has-addons">
          <p class="control">
            <Button>
              <Icon size="small" icon="fas fa-align-left" />
              <span>Left</span>
            </Button>
          </p>
          <p class="control">
            <Button>
              <Icon size="small" icon="fas fa-align-center" />
              <span>Center</span>
            </Button>
          </p>
          <p class="control">
            <Button>
              <Icon size="small" icon="fas fa-align-right" />
              <span>Right</span>
            </Button>
          </p>
        </div>
      </#SampleCode>

      <SectionSeparator id="list_of_buttons" title="List of buttons" />

      <#SampleCode>
        <div class="buttons">
          <Button color="success">Save changes</Button>
          <Button color="info">Save and continue</Button>
          <Button color="danger">Cancel</Button>
        </div>

        <div class="buttons has-addons">
          <Button color="success" selected>Yes</Button>
          <Button>Maybe</Button>
          <Button>No</Button>
        </div>

        <div class="buttons has-addons is-centered">
          <Button>Yes</Button>
          <Button color="info" selected>Maybe</Button>
          <Button>No</Button>
        </div>

        <div class="buttons has-addons is-right">
          <Button>Yes</Button>
          <Button>Maybe</Button>
          <Button color="danger" selected>No</Button>
        </div>
      </#SampleCode>

      <a href="https://github.com/tiagoefmoraes/learn_surface/blob/master/lib/learn_surface_web/views/surface/surface_index.ex">demo code</a><br/>
      <a href="https://github.com/tiagoefmoraes/learn_surface/blob/master/lib/surface_bulma/button.ex">Button code</a>
    </div>
    """
  end

  def mount(socket) do
    {:ok, assign(socket, clickCount: 0)}
  end

  def handle_event("increment", _, socket) do
    {:noreply, update(socket, :clickCount, &(&1 + 1))}
  end
end
