months = {
    1 => 31, 
    2 => 28,
    3 => 31,
    4 => 30,
    5 => 31,
    6 => 30,
    7 => 31,
    8 => 31,
    9 => 30,
    10 => 31,
    11 => 30,
    12 => 31
   }

puts "число"
day = gets.chomp.to_i
puts "номер месяца"
month = gets.chomp.to_i
puts "год"
year = gets.chomp.to_i

leap_year = (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0)
months_before_month = months.select { |k, v| k < month }
days_before_month = months_before_month.sum { |k, v| v }
if leap_year
  if month <=2 && day <=29
    x = day + days_before_month
  else
    x = day + days_before_month + 1
  end
else
  x = day + days_before_month
end

if leap_year
  puts "Это високосный год."
else
  puts "Год не високосный."
end

puts "Ваша дата от начала года это #{x} день."
