defmodule GraphQL.Mixfile do
  use Mix.Project

  @version "0.1.2"

  @description "Elixir implementation of GraphQL"
  @repo_url "https://github.com/joshprice/graphql-elixir"

  def project do
    [app: :graphql,
     version: @version,
     elixir: "~> 1.1",
     description: @description,
     package: package,
     source_url: @repo_url,
     homepage_url: @repo_url,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     name: "GraphQL",
     docs: [main: "README", extras: ["README.md"]]]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:mix_test_watch, "~> 0.2", only: :dev},
      {:credo, "~> 0.3", only: :dev},

      # Doc dependencies
      {:earmark, "~> 0.2", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev},
      {:inch_ex, "~> 0.5", only: :dev},
      {:dialyxir, "~> 0.3", only: [:dev]}
    ]
  end

  defp package do
    [maintainers: ["Josh Price", "James Sadler", "Mark Olson", "Aaron Weiker"],
     licenses: ["BSD"],
     links: %{"GitHub" => @repo_url},
     files: ~w(lib src/*.xrl src/*.yrl mix.exs *.md LICENSE)]
  end
end
