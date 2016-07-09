defmodule Mix.Tasks.Generate do
  def run(_) do
    [
      light: [
        black:   "292C36" |> Color.from_hexadecimal,
        red:     "D2242E" |> Color.from_hexadecimal,
        green:   "84BD5C" |> Color.from_hexadecimal,
        yellow:  "C9794B" |> Color.from_hexadecimal,
        blue:    "716EB1" |> Color.from_hexadecimal,
        magenta: "A52281" |> Color.from_hexadecimal,
        cyan:    "379D92" |> Color.from_hexadecimal,
        white:   "A4A9BA" |> Color.from_hexadecimal,

        bright_black:   "3F4453" |> Color.from_hexadecimal,
        bright_red:     "F10513" |> Color.from_hexadecimal,
        bright_green:   "7FDA3F" |> Color.from_hexadecimal,
        bright_yellow:  "E6712E" |> Color.from_hexadecimal,
        bright_blue:    "5852CD" |> Color.from_hexadecimal,
        bright_magenta: "BE098C" |> Color.from_hexadecimal,
        bright_cyan:    "1DB8A7" |> Color.from_hexadecimal,
        bright_white:   "FFFFFF" |> Color.from_hexadecimal,

        background: "FFFFFF" |> Color.from_hexadecimal,
        bold_text: "292C36" |> Color.from_hexadecimal,
        text: "292C36" |> Color.from_hexadecimal,
      ],
      dark: [
        black:   "292C36" |> Color.from_hexadecimal,
        red:     "D2242E" |> Color.from_hexadecimal,
        green:   "84BD5C" |> Color.from_hexadecimal,
        yellow:  "C9794B" |> Color.from_hexadecimal,
        blue:    "716EB1" |> Color.from_hexadecimal,
        magenta: "A52281" |> Color.from_hexadecimal,
        cyan:    "379D92" |> Color.from_hexadecimal,
        white:   "A4A9BA" |> Color.from_hexadecimal,

        bright_black:   "3F4453" |> Color.from_hexadecimal,
        bright_red:     "F10513" |> Color.from_hexadecimal,
        bright_green:   "7FDA3F" |> Color.from_hexadecimal,
        bright_yellow:  "E6712E" |> Color.from_hexadecimal,
        bright_blue:    "5852CD" |> Color.from_hexadecimal,
        bright_magenta: "BE098C" |> Color.from_hexadecimal,
        bright_cyan:    "1DB8A7" |> Color.from_hexadecimal,
        bright_white:   "FFFFFF" |> Color.from_hexadecimal,

        background: "292C36" |> Color.from_hexadecimal,
        bold_text: "FFFFFF" |> Color.from_hexadecimal,
        text: "FFFFFF" |> Color.from_hexadecimal,
      ]
    ] 
    |> Enum.each(fn({key, colors}) ->
      plist = colors |> Colorscheme.Terminal.to_plist
      "wwdc16-#{key}.terminal" |> File.write!(plist)

      plist = colors |> Colorscheme.Iterm2.to_plist
      "wwdc16-#{key}.itermcolors" |> File.write!(plist)
    end)
  end
end
