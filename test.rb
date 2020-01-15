# Given a series of integers, group consecutive numbers in ranges, as such:
#   Sample input: (2, 3, 4, 5, 9, 8, 10, 13)
#  Sample output: ((2, 5), (8, 10), (13,13))

#  input: (2, 3, 4, 5, 9, 8, 6, 7, 10)
#  output: ((2, 10))

def hello(n)
  arr = (n.sort).chunk_while {|i, j| i+1 == j }.to_a 
  puts

  i = 0
  print "(("
  arr.each do 
    if arr[i][-1] != arr[-1][-1]
     	print "#{arr[i][0]}, #{arr[i][-1]}"
      print "), ("
    else
    	print "#{arr[i][0]}, #{arr[i][-1]}"
    	print "))"
    end  
    i += 1
  end
end
#hello([2, 3, 4, 5, 9, 8, 6, 7, 10])
hello([2, 3, 4, 5, 9, 8, 10, 13])

