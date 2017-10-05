# https://katayuno.github.io/katas/fizz_buzz/web/description.html

FIZZ = "Fizz"
NUMBER_FIZZ = 3
NUMBER_BUZZ = 5

def fizzbuzz_upto(limit)
  (1..limit).
    map { |number| line_for(number) }.
    join("\n")
end

def line_for(number)
  line = ''

  if is_Fizz?(number)
    line += 'Fizz'
  end

  if is_Buzz?(number)
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

def is_Fizz?(number)
  (divisible_by?(number, NUMBER_FIZZ) || number.to_s.include?(NUMBER_FIZZ.to_s))
end

def is_Buzz?(number)
  (divisible_by?(number, NUMBER_BUZZ) || number.to_s.include?(NUMBER_BUZZ.to_s))
end
