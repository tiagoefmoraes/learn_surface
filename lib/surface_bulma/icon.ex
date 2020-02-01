defmodule SurfaceBulma.Icon do
  @moduledoc """
  See https://bulma.io/documentation/elements/icon/
  """

  use Surface.Component

  property color, :string
  property size, :string, default: nil
  property icon, :css_class

  @spec render(map) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~H"""
    <span
      class={{
        :icon,
        "is-#{@color}": @color !== nil,
        "is-#{@size}": @size !== nil,
      }}><i class={{ @icon }}></i></span>
    """
  end
end

