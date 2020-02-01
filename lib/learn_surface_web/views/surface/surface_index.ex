defmodule LearnSurfaceWeb.SurfaceIndex do
  use Surface.LiveView
  alias LearnSurfaceWeb.Button

  def render(assigns) do
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
        <Button/>
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

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
