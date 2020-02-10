defmodule LearnSurfaceWeb.SampleCode do
  use Surface.MacroComponent

  def translate({_, attributes, [children], _}, caller) do
    props = Map.new(attributes, fn {attr, value, _} -> {String.to_atom(attr), value} end)
    {:safe, content} =
      Phoenix.HTML.html_escape(
        children
        |> String.replace(~r/\n  /, "\n", global: true)
        |> String.trim()
      )

    code = ["<div class=\"code\"><pre><code>", content, "</code></pre></div>"]

    translated =
      Surface.Translator.run(
        "<Sample class=\"#{Map.get(props, :class, nil)}\"><div class=\"demo\">#{children}</div>#{code |> Enum.join()}</Sample>",
        caller.line,
        caller,
        caller.file
      )

    {[translated]}
  end
end
