puts "Please type your arithmetic:"

def calculate
	n = 0
inputs = []
results = []

	loop do
	arithmetic = gets.chomp
	inputs.push(arithmetic)
	parts = arithmetic.chars
		
		if parts[1] == "+"
			x = parts[0].to_i + parts[2].to_i
			results.push(x.to_s)
			puts x.to_s
		elsif parts[1] == "-"
		 	x = parts[0].to_i - parts[2].to_i
		 	results.push(x.to_s)
		 	puts x.to_s
		elsif parts[1] == "*"
			x = parts[0].to_i * parts[2].to_i
			results.push(x.to_s)
			puts x.to_s
		elsif parts[1] =="/"
			x = parts[0].to_i / parts[2].to_i
			results.push(x.to_s)
			puts x.to_s
		end
	
	break if arithmetic == "done"
	n += 1
	end
			
x = x.to_s
puts "#{n} calculations performed"
			
trials = 0
		until trials == n
		puts "#{inputs[trials]} = #{results[trials]}"
		trials+=1
		end
end
calculate


# puts "#{calculate(9, "+", 3)}"
# puts "#{calculate(9, "-", 3)}"
# puts "#{calculate(9, "*", 3)}"
# puts "#{calculate(9, "/", 3)}"

