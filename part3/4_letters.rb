alph = ("a".."z").to_a #массив букв from a to z
hash = {}
n = 1
alph.each do | letter | #выполняем метод "перебор" с каждым элементом массива
  hash[letter] = n if "aeiouy".include?(letter)
  n += 1
end
puts hash
