# FizzBuzz Kata
  x = 1
  while x <= 100 do
    if (x % 3 == 0) || (x % 5 == 0)
      result = ""
      if x % 3 == 0
        result << "Fizz"
      end
      if x % 5 == 0
        result << "Buzz"
      end
    puts result
    else
    puts x
    end
  x += 1
  end
