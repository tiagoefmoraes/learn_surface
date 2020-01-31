defmodule SurfaceBulma.Button do
  @moduledoc """
  See https://bulma.io/documentation/elements/button/
  """

  use Surface.Component

  property color, :string
  property light, :boolean
  property size, :string, default: nil

  @spec render(map) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~H"""
    <button type="button" class={{ :button, color(assigns), size(assigns), isLight: @light }}>
      {{ @inner_content.() }}
    </button>
    """
  end

  defp color(%{color: nil}), do: nil
  defp color(assigns), do: "is-#{assigns.color}"

  defp size(%{size: nil}), do: nil
  defp size(assigns), do: "is-#{assigns.size}"
end
