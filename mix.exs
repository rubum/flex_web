defmodule Flex.MixProject do
  use Mix.Project

  def project do
    [
      app: :flex,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      description: description(),
      package: package(),
      name: "Flex",
      source_url: "https://github.com/yourusername/flex"
    ]
  end

  def application do
    [
      extra_applications: [:logger, :plug_cowboy],
      mod: {Flex.Application, []}
    ]
  end

  defp deps do
    [
      {:plug_cowboy, "~> 2.5"},
      {:jason, "~> 1.2"},
      {:file_system, "~> 0.2"},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      "flex.server": ["flex.server"],
      "flex.prod": ["flex.prod"]
    ]
  end

  defp description do
    "Flex is a lightweight, Flask-inspired web framework for Elixir."
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/yourusername/flex"}
    ]
  end
end