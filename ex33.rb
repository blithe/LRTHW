def puts_numbers(increment, max)	
	i = 0
	numbers = []

	for i in 0..max
		puts  "At the top i is #{i}"
		numbers.push(i)

		i = i + increment
		puts "Numbers now: #{numbers}"
		puts "At the bottom i is #{i}"
	end

	puts "The numbers: "

	for num in numbers 
		puts num
	end
end

puts_numbers(1, 6)