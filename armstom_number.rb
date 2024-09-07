def armstrong?(n)
  num = n
  sum = 0

  digits = num.to_s.chars.map(&:to_i)
  power = digits.size

  digits.each do |digit|
    sum += digit**power
  end

  num == sum
end

def print_armstrong_status(n)
  if armstrong?(n)
      puts "#{n} is an Armstrong number"
  else
      puts "#{n} is not an Armstrong number"
  end
end

print_armstrong_status(153)
print_armstrong_status(154)
