
# Define a method sum which takes an array of integers as an argument 
# and returns the sum of its elements.
# For an empty array it should return zero.
def sum( arr )
  (!arr.nil? and arr.any?) ? arr.inject(0, :+) : 0  
end


# Define a method max_2_sum which takes an array of integers as an argument 
# and returns the sum of its two largest elements. 
# For an empty array it should return zero. For an array with just one element,
# it should return that element.
def max_2_sum( arr )

  if arr.nil? or arr.empty?
    0
  elsif arr.length == 1
    arr.first
  else
    max = arr.sort[-2..-1]
    max.first + max.last
  end

end

# Define a method sum_to_n? which takes an array of integers and
# an additional integer, n, as arguments and returns true if any two distinct 
# elements in the array of integers sum to n. 
# An empty array or single element array should both return false.

def sum_to_n?( arr, n )
  return false if arr.nil? or arr.empty? or arr.length == 1
  arr.each do |element|
    arr.each do |to_sum|
      return true if (element + to_sum == n)
    end
  end
  false
end

