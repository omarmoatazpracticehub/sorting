def bubble_sort (array)
	swapped = true
	while swapped != false
		swapped = false
		for i in (0...array.length-1) do
			if(array[i] > array[i+1])
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end
		
	end
	return array
end

puts bubble_sort([1,5,4,3,1,300]).inspect

def bubble_sort_by (array)
	swapped = true
	while swapped != false
		swapped = false
		for i in (0...array.length-1) do
			array[i], array[i+1] = array[i+1], array[i] if yield(array[i], array[i+1]) > 0
		end
	end
	return array
end

=begin
So, something I learned from this piece of code is that precedence is very important.
I tried calling puts on the function call without the brackets and it just tries to call
the sort_by function without the block so, it flags an error because I try to call yield 
inside the funtion and it's not recieving a block.
=end
puts (bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end).inspect