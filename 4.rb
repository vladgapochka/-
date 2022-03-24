def m_1(list)
  m = list
  puts (0...m.size).sort_by{ |i| m[i] }.reverse
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
else
  puts "Ошибка!"
end