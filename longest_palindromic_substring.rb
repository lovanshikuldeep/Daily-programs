# 5. Longest Palindromic Substring
# Solved
# Medium
# Topics
# Companies
# Hint
# Given a string s, return the longest
# palindromic

# substring
#  in s.



# Example 1:

# Input: s = "babad"
# Output: "bab"
# Explanation: "aba" is also a valid answer.
# Example 2:

# Input: s = "cbbd"
# Output: "bb"

# solution

# @param {String} s
# @return {String}
def longest_palindrome(s)
  return '' if s.nil? || s.empty?

  start = 0
  max_length = 1

  (0...s.length).each do |i|

    len1 = expand_around_center(s, i, i)

    len2 = expand_around_center(s, i, i + 1)

    len = [len1, len2].max

    if len > max_length
      max_length = len
      start = i - (len - 1) / 2
    end
  end

  s[start...(start + max_length)]
end

def expand_around_center(s, left, right)
  while left >= 0 && right < s.length && s[left] == s[right]
    left -= 1
    right += 1
  end

   right - left - 1
end

