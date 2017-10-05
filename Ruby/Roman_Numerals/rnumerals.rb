# https://katayuno.github.io/katas/roman_numerals/web/description.html

def convert_to_roman(test_number)
    return 'I' if number_I(test_number)
    return 'V' if number_V(test_number)
    return 'X' if number_X(test_number)
    search_multiple(test_number)
end

def search_multiple(test_number)
    search_group_number = test_number / 5
    if search_group_number == 0
        single_number = 5 - test_number
        return 'IV' if single_number == 1
    end
    if search_group_number == 1
        single_number = (5 + (search_group_number*5)) - test_number
        return 'VI' if single_number == 4
    end
end

def number_I(test_number)
    test_number / 1 == 1
end

def number_V(test_number)
    (test_number % 5 == 0) && (test_number / 5 == 1)
end

def number_X(test_number)
    test_number % 10 == 0  
end