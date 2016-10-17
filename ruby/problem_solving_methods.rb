arr = [12, 23, 34, 45]
def index_finder(arr, x)
	count = 0 
	while count < arr.length 	
	arr.each do |value|
		if x == value
			p count
		end
		count+=1 
	end
	end
end
index_finder(arr, 45)
#need it to output nil if x doesn't exist in arr.

def fibonacci(index)
	arr = [0, 1]
	while arr.length < index
	if arr.length > 3		# I'll be damned if arr[3] is going to spoil my quick code >:O
		arr[3] = 2
	end
	num1 = arr.index(arr.last)
	num2 = arr.index(arr.last)-1
	next_value = arr[num1]+arr[num2]
	arr << next_value
  	end
p arr[index-1]
end

fibonacci(50)

#~QuickSort~ # I give up, too hard to write :() 

#bubble sort
# take highest index value. that's the pivot.
# Take the first value and the value index-1 of pivot
# if any value is lower than pivot, move to the left.