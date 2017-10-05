# https://katayuno.github.io/katas/fizz_buzz/web/description.html


def listmaker(n)
  numbers = (1..n)
  numbers_list = []

  numbers.each { |n| numbers_list << n }

  numbers_list
end

def fizzbuzz(n)
  if is_FizzBuzz?(n)
    return 'FizzBuzz'
  elsif is_Fizz?(n)
    return 'Fizz'
  elsif is_Buzz?(n)
    return 'Buzz'
  else
    return n
  end
end

def is_FizzBuzz?(n)
  n % 3 == 0 && n % 5 == 0
end

def is_Fizz?(n)
  n % 3 == 0 || n.to_s.include?('3')
end

def is_Buzz?(n)
  n % 5 == 0 || n.to_s.include?('5')
end
