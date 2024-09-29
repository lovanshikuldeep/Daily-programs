 Longest Substring Without Repeating Characters

 Given a string s, find the length of the longest
substring
 without repeating characters.

Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.


solution
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  char_set = Set.new
  max = 0
  count = 0

  s.each_char.with_index do |ch, i|
    while char_set.include?(ch)
      char_set.delete(s[i - count])
      count -= 1
    end

    char_set.add(ch)
    count += 1
    max = [max, count].max
  end
  return max
end