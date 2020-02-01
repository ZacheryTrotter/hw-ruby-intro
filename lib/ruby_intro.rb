# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for x in arr 
    sum = sum + x
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    sum = 0
    nums = Array.new(2,-10000)
    for x in arr
      if x > nums[0]
        nums[0] = x
      elsif x > nums[1]
        nums[1] = x
      end 
    end
    sum = nums[0] + nums[1]
    return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty? || arr.length == 1
  arr1 = arr.sort # new array needed because arr.sort does not maintain the changes
  l = 0
  r = arr.length - 1
  while l < r 
    if arr1[l] + arr1[r] == n
      return true
    elsif arr1[l] + arr1[r] < n
      l += 1
    else
      r -= 1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[b-df-hj-np-tv-z]/i.match(s)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new() if price <= 0
    raise ArgumentError.new() if isbn.empty?
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn #getter and setter for isbn
  attr_accessor :price #getter and setter for price
  
  def price_as_string
    sprintf("$%2.2f", @price)
  end
end
