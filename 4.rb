def m_1(list)
  m = list
  puts (0...m.size).sort_by{ |i| m[i] }.reverse
end
def m_2(list)
  a = list
  b = a[(a.index(a.max) + 1)..-1]
  puts b[0...b.index(b.max)]
end
def m_3(list)
  
  a=list.index(list.max)
  list=list[a+1..-1].reverse
  a=list.index(list.max)
  list=list[0..a-1].reverse
end
def m_4(list)
  list.select{ |i| i.even? }.min
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
  puts m_1(list)
when 2
  puts m_2(list)
when 3
  puts m_3(list)
when 4
  puts m_4(list)
else
  puts "Ошибка!"
end