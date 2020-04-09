#write your code here
def add(number_1, number_2)
    number_1 + number_2
end

def subtract(number_1, number_2)
    number_1 - number_2
end

def sum(array)
    array.sum
end

def multiply(number_1, number_2)
    number_1 * number_2
end

def power(number_1, number_2)
    number_1 ** number_2
end

def factorial(num)
    (1..num).inject { |total, multiplier| total * multiplier}
end