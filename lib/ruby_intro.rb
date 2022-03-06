# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr_sum = 0
  arr_len = arr.size

  for i in 0..arr_len
    arr_sum = arr_sum + arr[i].to_i
  end
  return arr_sum
end

def max_2_sum arr
  len = arr.size
  arr = arr.sort

  if len == 0
    sum = 0
  elsif len == 1
    sum = arr[0]
  else
    sum = arr[len-1] + arr[len-2]
  end
end

def sum_to_n? arr, n
  # Variables
  result = false
    
  # Implementation
  if arr.size == 1
    return result
  end

  for i in 0..arr.size
    operand = n - arr[i].to_i
    arr.delete_at(i)
    for j in 0..arr.size
      if arr[j] == operand
        result = true
      end
    end
  end
  
  return result
end

# Part 2

def hello(name)
  return "Hello, " + name 
end

def starts_with_consonant? s
  result = false

  if s.length == 0
    return result
  end

  if s[0].match(/[aeiouAEIOU]/)
    result = false
  elsif s[0].match(/[^a-zA-Z0-9_]/)
    result = false
  else
    result = true
  end
end

def binary_multiple_of_4? s
  result = false
  
  if s.match(/[^01]/) or (s.length == 0)
    return result
  end

  if s.match(/.+00$/)
    result = true
  end

  return result
end

# # Part 3

class BookInStock
  
  # Constructor
  def initialize(isbn, price)
    raise ArgumentError.new("Not a valid ISBN") if isbn.length == 0
    raise ArgumentError.new("Price not > 0") if price <= 0.0
    @isbn = isbn
    @price = price
  end

  # Getters and setters
  def isbn
    return @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    return @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    return "$%.2f" % @price
  end
end