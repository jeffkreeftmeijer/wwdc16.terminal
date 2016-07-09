defmodule Mix.Tasks.Generate do
  def run(_) do
    colors = [
      black:   "292C36",
      red:     "D2242E",
      green:   "84BD5C",
      yellow:  "C9794B",
      blue:    "716EB1",
      magenta: "A52281",
      cyan:    "379D92",
      white:   "A4A9BA",

      bright_black:   "3F4453",
      bright_red:     "F10513",
      bright_green:   "7FDA3F",
      bright_yellow:  "E6712E",
      bright_blue:    "5852CD",
      bright_magenta: "BE098C",
      bright_cyan:    "1DB8A7",
      bright_white:   "FFFFFF",
    ]
    |> Enum.map(fn({key, color}) ->
      {key, color |> Color.from_hexadecimal}
    end)

    [
      light: Keyword.merge(colors, [
        background: colors[:bright_white],
        bold_text: colors[:black],
        text: colors[:black]
      ]),
      dark: Keyword.merge(colors, [
        background: colors[:black],
        bold_text: colors[:bright_white],
        text: colors[:bright_white]
      ])
    ] 
    |> Enum.each(fn({key, colors}) ->
      plist = colors |> Colorscheme.Terminal.to_plist
      "wwdc16-#{key}.terminal" |> File.write!(plist)

      plist = colors |> Colorscheme.Iterm2.to_plist
      "wwdc16-#{key}.itermcolors" |> File.write!(plist)
    end)
  end
end
