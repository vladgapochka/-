def sum_el(list)
    sum = 0
    for i in list
      sum += i
    end
    puts sum
end
def pr_el(list)
  pr = 1
  for i in list
    pr *= i
  end
  puts pr
end
def max_el(list)
  max = list.first
  for i in list
    if i > max 
      max = i
      end
  end
  puts max
end
def min_el(list)
  min = list.last
  for i in list
    if i< min 
      min = i
    end
  end
  puts min
end
puts "Выберите метод: "
puts "Сумма элементов - 1"
puts "Произведение элементов - 2"
puts "Минимальный элемент - 3"
puts "Максимальный элемент - 4"
num = gets.to_i
puts "Выберите откуда вы хотите считать данные?"
puts "С клавиатуры - 1"
puts "С файла - 2"
from_where=gets.chop.to_i
list = Array.new
if from_where == 2
  file=gets.chop
  File.open(file, "r") do |f|
    while (line = f.gets)
      list.append(line.to_i)
    end
  end
else 
  if from_where == 1
    el = gets
    until el == "\n"
      list.append(el.to_i)
      el = gets
    end
  end
end

case num
when 1 
  puts sum_el(list)
when 2
  puts pr_el(list)
when 3
  puts min_el(list)
when 4
  puts max_el(list)
else
  puts "Ошибка!"
end