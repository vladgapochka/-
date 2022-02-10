# puts "hello world" # Комментарий 1.1
=begin
многострочный коментарий
=end

# выводим приветствие задание 1.2
# puts "Приветствую #{ARGV[0]}"
# puts String.instance_methods
# Задание 1.3
# puts "Введите свой любимый язык программировани:"
# l = gets.chomp
# puts("подлиза") if l == "ruby"
# puts("скоро будет ruby, а так ты молодец") if l == "питон"
# puts("скоро будет ruby,но с++ фу") if l == "с++"
# puts("скоро будет ruby, но ты слабый") if l == "с#"
# puts("скоро будет ruby, ты вообще больной?") if l == "паскаль"

#Задание 1.4
puts "Введите команду Ruby"
rub=STDIN.gets
eval(rub)
puts "Введите команду OC"
rub=STDIN.gets
system(rub)
