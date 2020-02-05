defmodule ButtonPhxClick do
  use Surface.Component

  property click, :string, required: true
  def render(assigns) do
    ~H"""
      <button class="button is-primary" phx-click={{@click}}>{{ @inner_content.() }}</button>
    """
  end
end

defmodule ButtonOnPhxClick do
  use Surface.Component

  property click, :event
  def render(assigns) do
    ~H"""
      <button class="button is-primary" :on-phx-click={{@click || "ha"}}>{{ @inner_content.() }}</button>
    """
  end
end

defmodule PanelWithButtonsWithClicks do
  use Surface.LiveComponent

  property clicks, :number
  property onClicks, :string
  property panelWithButtonWithOnClicks, :number
  def render(assigns) do
    ~H"""
      <div>
        {{ @inner_content.() }}
        <ButtonPhxClick click="panelWithButtonWithClick">Clicks: {{@clicks}}</ButtonPhxClick>
        <ButtonOnPhxClick click="panelWithButtonWithOnClick">Clicks: {{@onClicks}}</ButtonOnPhxClick>
      </div>
    """
  end
  def mount(_params, _session, socket) do
    {
      :ok,
      assign(socket,
        phxClickTagClicks: 0,
        onPhxClickTagClicks: 0,
        clickClicks: 0,
        surfOnClickClicks: 0,
        panelWithButtonWithClicks: 0,
        panelWithButtonWithOnClicks: 0
      )
    }
  end
  def handle_event("panelWithButtonWithClick", _, socket) do
    {:noreply, update(socket, :panelWithButtonWithClicks, &(&1 + 2))}
  end
  def handle_event("panelWithButtonWithOnClick", _, socket) do
    {:noreply, update(socket, :panelWithButtonWithOnClicks, &(&1 + 2))}
  end
end



defmodule LearnSurfaceWeb.Playground do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
      <section class="section">
        <div class="container">
          <h1 class="title">Playground</h1>
          <div>
            <h2 class="subtitle">button tag with phx-click property</h2>
            {{@phxClickTagClicks}}<br/>
            <button class="button is-primary" phx-click="phxClickTag">Clicks: {{@phxClickTagClicks}}</button>
          </div>
          <hr/>
          <div>
            <h2 class="subtitle">button tag with :on-phx-click property</h2>
            {{@onPhxClickTagClicks}}<br/>
            <button class="button is-primary" :on-phx-click="onPhxClickTag">Clicks: {{@onPhxClickTagClicks}}</button>
          </div>
          <hr/>
          <div>
            <h2 class="subtitle">ButtonPhxClick Component with phx-click property</h2>
            {{@clickClicks}}<br/>
            <ButtonPhxClick click="click">Clicks: {{@clickClicks}}</ButtonPhxClick>
          </div>
          <hr/>
          <div>
            <h2 class="subtitle">ButtonOnPhxClick Component with :on-phx-click property</h2>
            {{@surfOnClickClicks}}<br/>
            <ButtonOnPhxClick click="onClick">Clicks: {{@surfOnClickClicks}}</ButtonOnPhxClick>
          </div>
          <hr/>
          <div>
            <PanelWithButtonsWithClicks id="panel" clicks={{@panelWithButtonWithClicks}} onClicks={{@panelWithButtonWithOnClicks}}>
              <h2 class="subtitle">PanelWithButtonsWithClicks</h2>
              {{@panelWithButtonWithClicks}}<br/>
              {{@panelWithButtonWithOnClicks}}<br/>
            </PanelWithButtonsWithClicks>
          </div>
          <hr/>
        </div>
      </section>
    """
  end

  def mount(_params, _session, socket) do
    {
      :ok,
      assign(socket,
        phxClickTagClicks: 0,
        onPhxClickTagClicks: 0,
        clickClicks: 0,
        surfOnClickClicks: 0,
        panelWithButtonWithClicks: 0,
        panelWithButtonWithOnClicks: 0
      )
    }
  end
  def handle_event("phxClickTag", _, socket) do
    {:noreply, update(socket, :phxClickTagClicks, &(&1 + 1))}
  end
  def handle_event("onPhxClickTag", _, socket) do
    {:noreply, update(socket, :onPhxClickTagClicks, &(&1 + 1))}
  end
  def handle_event("click", _, socket) do
    {:noreply, update(socket, :clickClicks, &(&1 + 1))}
  end
  def handle_event("onClick", _, socket) do
    {:noreply, update(socket, :surfOnClickClicks, &(&1 + 1))}
  end
  def handle_event("panelWithButtonWithClick", _, socket) do
    {:noreply, update(socket, :panelWithButtonWithClicks, &(&1 + 1))}
  end
  def handle_event("panelWithButtonWithOnClick", _, socket) do
    {:noreply, update(socket, :panelWithButtonWithOnClicks, &(&1 + 1))}
  end
  def handle_event(_, _, socket) do
    {:noreply, socket}
  end
end
