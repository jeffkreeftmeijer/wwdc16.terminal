use Mix.Config

black =   "292C36" |> Color.from_hexadecimal
red =     "DC3C3C" |> Color.from_hexadecimal
green =   "95C76F" |> Color.from_hexadecimal
yellow =  "D28E5D" |> Color.from_hexadecimal
blue =    "8485CE" |> Color.from_hexadecimal
magenta = "B73999" |> Color.from_hexadecimal
cyan =    "00ABA5" |> Color.from_hexadecimal
white =   black    |> Color.lighten(0.5)

colors = [
  black:   black,
  red:     red,
  green:   green,
  yellow:  yellow,
  blue:    blue,
  magenta: magenta,
  cyan:    cyan,
  white:   white,

  bright_black:   black    |> Color.lighten(0.1),
  bright_red:     red      |> Color.lighten(0.25),
  bright_green:   green    |> Color.lighten(0.25),
  bright_yellow:  yellow   |> Color.lighten(0.25),
  bright_blue:    blue     |> Color.lighten(0.25),
  bright_magenta: magenta  |> Color.lighten(0.25),
  bright_cyan:    cyan     |> Color.lighten(0.25),
  bright_white:   "FFFFFF" |> Color.from_hexadecimal
]

config :light, Keyword.merge(colors, [
  background: colors[:bright_white],
  bold_text: colors[:black],
  text: colors[:black]
])

config :dark, Keyword.merge(colors, [
  background: colors[:black],
  bold_text: colors[:bright_white],
  text: colors[:bright_white]
])
