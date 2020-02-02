defmodule LearnSurfaceWeb.SurfaceIndex do
  use Surface.LiveView
  alias LearnSurfaceWeb.Button

  def render(assigns) do
    path = assigns.path
    # TODO: get_flash?
    # <main role="main" class="container">
    #   <p class="alert alert-info" role="alert"><%= get_flash(@conn, :info) %></p>
    #   <p class="alert alert-danger" role="alert"><%= get_flash(@conn, :error) %></p>
    #   <%= render @view_module, @view_template, assigns %>
    # </main>
    ~H"""
    <section class="hero is-link">
      <div class="hero-body">
        <div class="container">
          <h1 class="title">
            Surface Bulma |> Phoenix.LiveView |> Elixir
          </h1>
          <h2 class="subtitle">
            Surface components for Bulma CSS Framework - <strong>under development</strong>
          </h2>
        </div>
      </div>
    </section>
    <section class="section">
      <div class="container">
        <div class="tabs">
          <ul>
            <li :for={{ route <- ~w(button icon tabs) }} class={{isActive: path == route}}>
              <a href={{ route }}>{{String.capitalize(route)}}</a>
            </li>
          </ul>
        </div>
        {{ route(assigns) }}
      </div>
    </section>
    <footer class="footer">
      <div class="content has-text-centered">
        <p>
          <strong>Surface Bulma</strong> by <a href="http://github.com/tiagoefmoraes">Tiago Moraes</a>.<br/>
          <a href="http://github.com/msaraiva/surface">Surface</a> -
          <a href="https://github.com/phoenixframework/phoenix_live_view">Phoenix.LiveView</a>
        </p>
      </div>
    </footer>
    """
  end

  defp route(%{ path: "" } = assigns) do
    ~H"""
      <h1 class="title">Select a component above</h1>
    """
  end

  defp route(%{ path: "button" } = assigns) do
    ~H"""
      <Button />
    """
  end

  defp route(%{ path: "icon" } = assigns) do
    ~H"""
      <h1 class="title">Icon</h1>
      Under construction
    """
  end

  defp route(assigns) do
    ~H"""
      <h1 class="title">path not found "{{@path}}"</h1>
    """
  end

  def mount(params, _session, socket) do
    {:ok, assign(socket, path: params["path"] |> Enum.join())}
  end
end
