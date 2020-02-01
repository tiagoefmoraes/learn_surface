defmodule SurfaceBulma.Button do
  @moduledoc """
  See https://bulma.io/documentation/elements/button/
  """

  use Surface.Component

  property color, :string
  property light, :boolean
  property size, :string, default: nil
  property expand, :boolean
  property outlined, :boolean
  property inverted, :boolean
  property rounded, :boolean

  property hovered, :boolean
  property focused, :boolean
  property active, :boolean
  property loading, :boolean
  property title, :string
  property disabled, :boolean

  @spec render(map) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~H"""
    <button
      type="button"
      disabled={{@disabled}}
      title={{@title}}
      class={{
        :button,
        "is-#{@color}": @color !== nil,
        "is-#{@size}": @size !== nil,
        isLight: @light,
        isFullwidth: @expand,
        isOutlined: @outlined,
        isInverted: @inverted,
        isRounded: @rounded,
        isHovered: @hovered,
        isFocused: @focused,
        isActive: @active,
        isLoading: @loading,
      }}>{{ @inner_content.() }}</button>
    """
  end
end
