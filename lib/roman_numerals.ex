defmodule RomanNumerals do
  @moduledoc """
  This module provides two functions that can translate from roman numerals to decimal and vice-versa.

  More information about the conversion calculation can be found at: https://www.mathsisfun.com/roman-numerals.html

  Quoted from MathIsFun (link above):
	> When a symbol appears after a larger symbol it is added
	>  Example: VI = V + I = 5 + 1 = 6
	>
	> But if the symbol appears before a larger symbol it is subtracted
	>  Example: IX = X - I = 10 - 1 = 9

  """
  
  @doc """
    Convert a number to its roman numeral representation

    ## Example:
      iex> RomanNumerals.to_roman(1) 
      "I"

      iex> RomanNumerals.to_roman(3) 
      "III"

      iex> RomanNumerals.to_roman(4) 
      "IV"

      iex> RomanNumerals.to_roman(5) 
      "V"

      iex> RomanNumerals.to_roman(6) 
      "VI"

      iex> RomanNumerals.to_roman(17) 
      "XVII"
      
      iex> RomanNumerals.to_roman(49)
      "XLIX"
  """
  def to_roman(number) when is_integer(number) do
  end

  @doc """
    Convert a roman numeral to its decimal representation

    ## Example:
      iex> RomanNumerals.to_decimal("I")
      1

      iex> RomanNumerals.to_decimal("III")
      3

      iex> RomanNumerals.to_decimal("IV")
      4

      iex> RomanNumerals.to_decimal("V")
      5

      iex> RomanNumerals.to_decimal("VI")
      6

      iex> RomanNumerals.to_decimal("XVII")
      17

      iex> RomanNumerals.to_decimal("XLIX")
      49
  """
  def to_decimal(roman) when is_bitstring(roman) do
    to_decimal(roman, 0)
  end 

  # We still have two characters, let's see if we are adding/substracting
  defp to_decimal(<<a::utf8, b::utf8, tail::binary>>, sum) do
    aa = roman_value(a)
    bb = roman_value(b)
    # When A >= B: (a + b) + sum
    # When A <  B: (b - a) + sum
    delta = cond do
        aa >= bb -> aa + bb
        aa <  bb -> bb - aa
      end
    # Recursion s2
    to_decimal(tail, sum + delta)
  end

  # We have only one character, I believe we are adding
  defp to_decimal(<<a::utf8>>, sum), do: sum + roman_value(a)

  # We have our answer! :)
  defp to_decimal(<<>>, sum), do: sum

  defp roman_value(?I), do: 1
  defp roman_value(?V), do: 5
  defp roman_value(?X), do: 10
  defp roman_value(?L), do: 50
  defp roman_value(?C), do: 100
  defp roman_value(?D), do: 500
  defp roman_value(?M), do: 1000
end
