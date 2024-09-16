def hcf(num1, num2)
	hcf_number = 0
	(1..[num1, num2].min).each  do |x|
		if num1 % x ==0 && num2 % x ==0
			hcf_number = x
		end
	end
	return hcf_number
end

hcf(36, 60)