# ComparableDecimal

[Comparable](https://github.com/coingaming/comparable#comparable) (Ord) protocol implementation for [Decimal](https://github.com/ericmj/decimal#decimal) type.

[![Hex](https://raw.githubusercontent.com/tim2CF/static-asserts/master/build-passing.svg?sanitize=true)](https://hex.pm/packages/coingaming/comparable_decimal/)
[![Documentation](https://raw.githubusercontent.com/tim2CF/static-asserts/master/documentation-passing.svg?sanitize=true)](https://coingaming.hexdocs.pm/comparable_decimal/)

## Installation

The package can be installed
by adding `comparable_decimal` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:comparable_decimal, "~> 0.1"}
  ]
end
```

## Example

```elixir
iex(1)> use Comp
Comp
iex(2)> x = Decimal.new("1")
#Decimal<1>
iex(3)> y = Decimal.new("1.0")
#Decimal<1.0>
iex(4)> x == y
false
iex(5)> x <~> y
true
```
