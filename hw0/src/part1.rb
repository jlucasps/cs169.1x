

def sum( ary )
  (!ary.nil? and ary.any?) ? ary.length : 0  
end

def max_2_sum( ary )

  if ary.nil? or ary.empty?
    0
  elsif ary.length == 1
    ary.first
  else
    max = ary.sort[-2..-1]
    max.first + max.last
  end

end
