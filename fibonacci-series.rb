# program to find fabonacci series to n numbers

def fab(n)
	num1 = 0
	num2 = 1

	for x in 0..n do
		puts num1
		temp = num1 + num2
		num1 = num2
		num2 = temp
	end
end