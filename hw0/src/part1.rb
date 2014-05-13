

def sum( ary )
  (!ary.nil? and ary.any?) ? ary.length : 0  
end

def max_2_sum( ary )

  if ary.nil? or ary.empty?
    0
  elsif ary.length == 1
    ary.first
  else
    ary.sort[-1..-2].sum
  end

end


#puts sum [1,2,3,4,5,6,7,8,9,10]
#puts sum []
#puts sum nil
