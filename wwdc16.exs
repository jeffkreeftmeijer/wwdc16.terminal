use Mix.Config

black =   "292C36" |> Color.from_hexadecimal
red =     "D2242E" |> Color.from_hexadecimal
green =   "84BD5C" |> Color.from_hexadecimal
yellow =  "C9794B" |> Color.from_hexadecimal
blue =    "716EB1" |> Color.from_hexadecimal
magenta = "A52281" |> Color.from_hexadecimal
cyan =    "379D92" |> Color.from_hexadecimal
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