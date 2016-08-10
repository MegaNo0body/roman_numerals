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
      iex> RomanNumerals.convert_to_roman(1) 
      "I"

      iex> RomanNumerals.convert_to_roman(3) 
      "III"

      iex> RomanNumerals.convert_to_roman(4) 
      "IV"

      iex> RomanNumerals.convert_to_roman(5) 
      "V"

      iex> RomanNumerals.convert_to_roman(6) 
      "VI"

      iex> RomanNumerals.convert_to_roman(17) 
      "XVII"
  """
  def convert_to_roman(number) when is_integer(number) do
  end

  @doc """
    Convert a roman numeral to its decimal representation

    ## Example:
      iex> RomanNumerals.convert_to_decimal("I")
      1

      iex> RomanNumerals.convert_to_decimal("III")
      3

      iex> RomanNumerals.convert_to_decimal("IV")
      4

      iex> RomanNumerals.convert_to_decimal("V")
      5

      iex> RomanNumerals.convert_to_decimal("VI")
      6

      iex> RomanNumerals.convert_to_decimal("XVII")
      17
  """
  def convert_to_decimal(roman) when is_bitstring(roman) do
  end
end
