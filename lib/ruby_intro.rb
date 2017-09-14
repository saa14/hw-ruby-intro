# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length > 0
    sum = 0
    arr.each { |a| sum+=a }
    return sum
 else 
    return 0
 end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length > 1
    sum = 0
    max1=arr.sort[-1]
    max2=arr.sort[-2]
    sum = max1 + max2
    return sum
  elsif arr.length == 1
    return arr[0]
  else
    return 0
 end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length > 1
    sum = arr.combination(2).map { |a, b| a + b }
    for i in 1..sum.length do
      if sum[i] == n
        return true
      end    
    end
    return false
  elsif arr.length == 1
    return false
  else 
    return false
  end   
# if arr.length > 1
#   for i in 0..arr.length-1 do
    
#       if i != arr.length-1
#         sum = arr[i] + arr[i+1]
#         if sum == n
#           return true
#         else
#           return false
#         end
#       else
#         sum = arr[i]+arr[0]
#       end
#       sum=0    
#    end
# elsif arr.length == 1
#   return false
# else 
#   return false
# end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "<<name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /[01]/.match(s)
    if /^[01]*00$/.match(s) || s=="0"
      return true
    else
      return false
    end
  else
    return false
  end  
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn == ""
      raise ArgumentError
    else 
      @isbn = isbn
    end
    if price <= 0
      raise ArgumentError
    else
      @price = price
    end  
  end
  def price_as_string
    s = '$'<<'%.2f' % @price
    return s
  end


end
