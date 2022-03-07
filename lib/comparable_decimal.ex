defmodule ComparableDecimal do
  use Comp

  defcomparable left :: Decimal, right :: Decimal do
    left
    |> Decimal.compare(right)
    |> case do
      :gt ->
        Comp.gt()

      :lt ->
        Comp.lt()

      :eq ->
        Comp.eq()
    end
  end
end
