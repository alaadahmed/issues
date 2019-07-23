defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      version: "0.1.0",
      name: "Issues",
      source_url: "https://github.com/alaadahmed/issues",
      elixir: "~> 1.9",
      escript: escript_config(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      deps: deps()
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
      {:httpoison, "~>1.5"},
      {:poison, "~> 4.0"},
      {:ex_doc, "~> 0.21.1"},
      {:earmark, "~> 1.3"},
      {:excoveralls, "~> 0.11.1"},
      {:credo, "~> 1.1"}
    ]
  end

  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
