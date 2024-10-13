# frozen_string_literal: true

# ***question
# Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
#
# Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
# Example 1:

# Input: x = 123
# Output: 321
# Example 2:
#
# Input: x = -123

# @param {Integer} x
# @return {Integer}
def reverse(x)
  int32_min = -2**31
  int32_max = 2**31 - 1
  if x.negative?
    is_negative = x
    x = x.abs
  end

  reversed = 0
  while x > 0
    temp = x % 10
    reversed = reversed * 10 + temp
    x /= 10
  end
  return 0 if reversed < int32_min || reversed > int32_max

  reversed = is_negative ? -reversed : reversed

  pp reversed
end

reverse(123)
reverse(-123)
