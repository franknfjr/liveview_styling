defmodule LiveviewStyling.MixProject do
  use Mix.Project

  @version "0.1.0"
  @url "https://github.com/franknfjr/liveview_styling"

  @elixir_requirement "~> 1.16"
  def project do
    [
      app: :liveview_styling,
      version: @version,
      elixir: @elixir_requirement,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "LiveView Styling",
      source_url: @url,
      docs: [
        main: "readme",
        extras: ["README.md", "guides/hello.md"],
        groups_for_extras: groups_for_extras()
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Enhance Phoenix LiveView with dynamic styling for responsive, interactive web applications."
  end

  defp package do
    [
      files: ~w(lib .formatter.exs mix.exs README.md LICENSE.md),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/franknfjr/liveview_styling"}
    ]
  end

  defp groups_for_extras do
    [
      Examples: ~r/guides\/[^\/]+\.md/
    ]
  end
end
