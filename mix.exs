defmodule Wwdc16.Mixfile do
  use Mix.Project

  def project do
    [app: :wwdc16,
     version: "0.1.0",
     elixir: "~> 1.3-rc",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  def deps do
    [
      {:color, git: "git://github.com/jeffkreeftmeijer/color.git"},
      {:colorscheme, git: "git://github.com/jeffkreeftmeijer/colorscheme.git"}
    ]
  end
end
