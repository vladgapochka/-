#Задание 1
# number = ARGV[0].to_i.abs
# sum = 0
# while number != 0
# sum += number % 10
# number /= 10
# end
# puts sum
# Задание 2
x=ARGV[0].to_i


def method_sum(x)
	sum = 0
	while x != 0
		sum += x%10
		x=x/10
	end
	puts sum
end

def method_min(x)
	min = 100000
	while x!=0
		if x%10<min
			min = x%10			
		end
		x = x/10

	end
	puts min
end
def method_max(x)
	max = 0
	while x!=0
		if x%10>max
			max = x%10
		end
		x = x/10
	end
	puts max
end
def method_proiz(x)
	pr = 1
	while x!=0
		pr *= x%10
		x = x/10
	end
	puts pr
end
puts method_sum(x)
puts method_min(x)
puts method_max(x)
puts method_proiz(x)
