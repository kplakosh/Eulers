# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms. By starting with 1
# and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence
# whose values do not exceed four million, find the
# sum of the even-valued terms.


def even_fibs(num)
  fibs = [1, 2]
  sum_even = fibs[-1]
  temp = fibs[-2]

  while temp < num
    temp = fibs[-2] + fibs[-1]
    sum_even += temp if temp % 2 == 0

    fibs[-2] = fibs[-1]
    fibs[-1] = temp
  end

  sum_even
end

if __FILE__ == $PROGRAM_NAME
  puts even_fibs(4000000) # 4613732
end
