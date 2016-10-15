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

# def fib(x)
