#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

def largest_prime(num)
  largest_prime = 0
  i = 2
  while i * i <= num
    if num % i == 0
      num /= i
      largest_prime = i
    else
      i += 1
    end
  end

  if num > largest_prime
    largest_prime = num
  end

  largest_prime
end

if __FILE__ == $PROGRAME_NAME
  p largest_prime(13195) # 29
  puts largest_prime(600851475143) # 6857
end
