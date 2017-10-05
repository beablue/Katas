# https://katayuno.github.io/katas/fizz_buzz/web/description.html

def what_is_it(number)
  result = FizzBuzz.new
  result.check(number)
end



class List 
  def initialize(top_number)
    @range = (1..top_number)
  end

  def to_a
    @range.to_a
  end
end

class FizzBuzz 
  def initialize()
  end

  def check(number)
    if (number % 3 == 0 && number % 5 == 0)
      return 'fizzbuzz'
    elsif number % 3 == 0
      return 'fizz'
    elsif number % 5 == 0
      return 'buzz'
    end
  end

end