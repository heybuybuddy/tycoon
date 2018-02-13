defmodule Tycoon.Mixfile do
  use Mix.Project

  def project do
    [
      app: :tycoon,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      package: [
        name: :tycoon,
        maintainers: ["Buğra Ekuklu"],
        licenses: ["MIT"],
        links: %{github: "https://github.com/heybuybuddy/tycoon"}
      ],
      description: "Elixir bindings for Basho's Riak Erlang client."
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.18.2", only: :dev},
      {:excoveralls, "~> 0.8.1", only: :test},
      {:inch_ex, "~> 0.5.6", only: :docs},
      {:riakc, "~> 2.5"}
    ]
  end
end
