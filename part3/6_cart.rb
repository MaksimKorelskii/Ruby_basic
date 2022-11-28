puts "Наполняем корзину товарами. Чтобы остановиться введите в название товара: \"стоп\"."

cart = {}
total = 0

loop do
  puts "Введите название товара:" 
  title = gets.chomp
  break if title == "стоп"
  puts "цена за единицу товара:"
  price = gets.chomp.to_f
  puts "количество товара:"
  amount = gets.chomp.to_f
  cart[title] = {price => amount}
end

puts cart
cart.each do |title, price| 
  price.each do |price, amount|
    price_total = price * amount
    puts "Итоговая сумма за #{title} составляет #{price_total}"
    total += price_total
  end
end

puts "Стоимость товаров в корзине #{total}"
