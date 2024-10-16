# Add Two Numbers
# Solved
# Medium
# Topics
# Companies
# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.



# Example 1:


# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.
# Example 2:

# Input: l1 = [0], l2 = [0]
# Output: [0]
# Example 3:

# Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
# Output: [8,9,9,9,0,0,0,1]


# Solution

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  l3_head = ListNode.new(0)
  l3_tail = l3_head
  carry =0

  while l1 || l2
      sum = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + carry
      carry = sum /10
      l3_tail.next = ListNode.new(sum%10)

      l1 = l1.next if l1
      l2 = l2.next if l2
      l3_tail = l3_tail.next
  end

  if carry > 0
      l3_tail.next = ListNode.new(carry)
  end

  return l3_head.next
end