#Задание 1
# number = ARGV[0].to_i.abs
# sum = 0
# while number != 0
# sum += number % 10
# number /= 10
# end
# puts sum
# Задание 2
# x=ARGV[0].to_i


# def method_sum(x)
# 	sum = 0
# 	while x != 0
# 		sum += x%10
# 		x=x/10
# 	end
# 	puts sum
# end

# def method_min(x)
# 	min = 100000
# 	while x!=0
# 		if x%10<min
# 			min = x%10			
# 		end
# 		x = x/10

# 	end
# 	puts min
# end
# def method_max(x)
# 	max = 0
# 	while x!=0
# 		if x%10>max
# 			max = x%10
# 		end
# 		x = x/10
# 	end
# 	puts max
# end
# def method_proiz(x)
# 	pr = 1
# 	while x!=0
# 		pr *= x%10
# 		x = x/10
# 	end
# 	puts pr
# end
# puts method_sum(x)
# puts method_min(x)
# puts method_max(x)
# puts method_proiz(x)
# Задание 3.2
# def method_max(x)
# 	max=0
# 	while x !=0
# 		if (x%10)%3!=0 and x %10>max
# 			max=x%10
# 		end
# 		x=x/10
# 	end
# 	puts max
# end
# method_max(x)
#Задание 3.1
# b=ARGV[0].to_i
# def nod(a,b)
# 	while a!=0 and b!=0
# 		if a>b
# 			a=a%b
# 		else
# 			b=b%a
# 		end
# 	end
# 	return a+b
# end
# def kol_ch_nod(b)
# 	col = 0
# 	for i in (1..b)
# 		if i%2==0 and nod(i,b)!= 1
# 			col = col +1
# 		end 
# 	end
# 	puts col
# end
# kol_ch_nod(b)
# Массив
#Задание 3.1
#Сумма
list = Array[1,2,3,4]
def sum_el(list)
  	sum = 0
  	for i in list
    	sum += i
  	end
  	puts sum
end
sum_el(list)
#Произведение 
def pr_el(list)
	pr = 1
	for i in list
		pr *= i
	end
	puts pr
end
pr_el(list)
#Максимум
def max_el(list)
	max = list.first
	for i in list
		if i > max 
			max = i
			end
	end
	puts max
end
max_el(list)
#Минимум
def min_el(list)
	min = list.last
	for i in list
		if i< min 
			min = i
		end
	end
	puts min
end
min_el(list)