defmodule ComparableDecimalTest do
  use Comp
  use ExUnit.Case
  doctest ComparableDecimal

  @x0 Decimal.new("1")
  @x1 Decimal.new("1.0")
  @y Decimal.new("2")

  @nan Decimal.new("NaN")

  gen_ne_test("ne", @x0, @y)
  gen_eq_test("kernel eq", @x0, @x0)
  gen_eq_test("comparable eq", @x0, @x1)

  test "raise on left NaN" do
    err = "invalid_operation: operation on NaN"

    assert_raise Decimal.Error, err, fn ->
      @nan <~> @x0
    end
  end

  test "raise on right NaN" do
    err = "invalid_operation: operation on NaN"

    assert_raise Decimal.Error, err, fn ->
      @x0 <~> @nan
    end
  end
end
