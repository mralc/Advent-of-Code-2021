gamma = []
epsilon = []
n = 0
while n < 12
	count_0 = 0
	count_1 = 0
	File.readlines('day3-input.txt').each do |binary|
	
		if binary.to_s[n] == "0"
			count_0 += 1
		end
	
		if binary.to_s[n] == "1"
			count_1 += 1
		end
	
		if count_0 > count_1
		end
	
	end

	if count_0 > count_1
		gamma << 0
		epsilon << 1
	else 
		gamma << 1
		epsilon << 0
	end

	n += 1

end

gamma_i = gamma.join('').to_i(2) # outputs "12345"
epsilon_i = epsilon.join('').to_i(2) # outputs "12345"

total = epsilon_i * gamma_i

p total