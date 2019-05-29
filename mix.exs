defmodule ComparableDecimal.MixProject do
  use Mix.Project

  def project do
    [
      app: :comparable_decimal,
      version: "VERSION" |> File.read!() |> String.trim(),
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      # excoveralls
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.travis": :test,
        "coveralls.circle": :test,
        "coveralls.semaphore": :test,
        "coveralls.post": :test,
        "coveralls.detail": :test,
        "coveralls.html": :test
      ],
      # dialyxir
      dialyzer: [
        ignore_warnings: ".dialyzer_ignore",
        plt_add_apps: [
          :mix,
          :ex_unit
        ]
      ],
      # ex_doc
      name: "ComparableDecimal",
      source_url: "https://github.com/coingaming/comparable_decimal",
      homepage_url: "https://github.com/coingaming/comparable_decimal",
      docs: [main: "readme", extras: ["README.md"]],
      # hex.pm stuff
      description: "Comparable (Ord) protocol implementation for Decimal type",
      package: [
        organization: "coingaming",
        licenses: ["Apache 2.0"],
        files: ["lib", "priv", "mix.exs", "README*", "VERSION*"],
        maintainers: ["timCF"],
        links: %{
          "GitHub" => "https://github.com/coingaming/comparable_decimal",
          "Author's home page" => "https://itkach.uk"
        }
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
      {:comparable, "~> 1.0.0", organization: "coingaming"},
      {:decimal, "~> 1.7"},
      # development tools
      {:excoveralls, "~> 0.8", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.19", only: [:dev, :test], runtime: false},
      {:credo, "~> 0.9", only: [:dev, :test], runtime: false},
      {:boilex, "~> 0.2", only: [:dev, :test], runtime: false}
    ]
  end
end
