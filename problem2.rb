=begin

===Even Fibonacci numbers===

Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

=end


fibo_array = [1, 2] 
while fibo_array[-2] + fibo_array[-1] < 4_000_000
  next_fibo = fibo_array[-2] + fibo_array[-1]
  fibo_array << next_fibo
end

final_array = fibo_array.select {|num| num % 2 == 0 }
result = final_array.inject(0) {| total, sum | total += sum }
puts result
