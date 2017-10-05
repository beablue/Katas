FIZZ = "Fizz"
NUMBER_FIZZ = 3

def fizzbuzz_upto(limit)
  (1..limit).
    map { |number| line_for(number) }.
    join("\n")
end

def line_for(number)
  line = ''

  if divisible_by?(number, 3)
    line += 'Fizz'
  end

  if divisible_by?(number, 5)
    line += 'Buzz'
  end

  if line.empty?
    line += number.to_s
  end

  line
end

def divisible_by?(number, divisor)
  number % divisor == 0
end
