defmodule ComparableDecimal do
  use Comp

  defcomparable left :: Decimal, right :: Decimal do
    left
    |> Decimal.compare(right)
    |> case do
      %Decimal{coef: 1, sign: 1} ->
        Comp.gt()

      %Decimal{coef: 1, sign: -1} ->
        Comp.lt()

      %Decimal{coef: 0} ->
        Comp.eq()

      %Decimal{coef: :qNaN} ->
        raise("can't apply Comparable protocol to left = #{inspect(left)} and right = #{inspect(right)}")
    end
  end
end
