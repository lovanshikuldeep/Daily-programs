
def palindrome(number)
  original_number = number
  reserved_number = 0
  while number > 0
    temp = number%10
    reserved_number = reserved_number *10 + temp
    number = number/10
  end

  pp reserved_number
  if original_number == reserved_number
    pp "#{original_number} is palindrome"
  else
    pp "#{original_number} is not a palindrome number"
  end
end

palindrome(122)