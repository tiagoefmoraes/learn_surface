defmodule LearnSurfaceWeb.SectionSeparator do
  use Surface.Component

  property id, :string
  property title, :string

  def render(assigns) do
    ~H"""
    <hr>
    <h3 id={{@id}} class="title is-4 is-spaced">
      {{ @title }} <a href={{"##{@id}"}}>#</a>
    </h3>
    """
  end
end
