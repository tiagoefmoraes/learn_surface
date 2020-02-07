defmodule LearnSurfaceWeb.SampleCode do
  use Surface.MacroComponent

  def translate({_, _attributes, [children], _}, caller) do
    {:safe, content} =
      Phoenix.HTML.html_escape(
        children
        |> String.replace(~r/\n  /, "\n", global: true)
        |> String.trim()
      )

    code = ["<div class=\"code\"><pre><code>", content, "</code></pre></div>"]

    translated =
      Surface.Translator.run(
        "<Sample><div class=\"demo\">#{children}</div>#{code |> Enum.join()}</Sample>",
        caller.line,
        caller,
        caller.file
      )

    {[translated]}
  end
end
