# If we list all the natural numbers below 10 that are multiples
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_multiples
  sum = 0

  (1...1000).each do |n|
    sum += n if n % 3 == 0 || n % 5 == 0
  end

  sum
end

if __FILE__ == $PROGRAM_NAME
  puts sum_multiples #233168
end
