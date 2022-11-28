fib = []
fib.push(0,1)
n = 1
while  fib[n] + fib [n - 1] < 100
  n += 1
  next_number = fib[n - 1] + fib [n - 2]
  fib << next_number
end
print fib
