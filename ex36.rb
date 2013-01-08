def prompt()
	print "> "
end

def chair_room()
	puts "You have entered a room with three chairs."
	puts "The first chair is big."
	puts "The second chair is medium."
	puts "The third chair is little."
	puts "Which chair do you sit in?"

	prompt; chair = gets.chomp
	if chair.include? "first" or chair.include? "big"
		puts "That chair is too hard."
		puts "Try another chair."
		chair_room()
	elsif chair.include? "second" or chair.include? "medium"
		puts "That chair is too soft."
		puts "Try another chair."
		chair_room()
	elsif chair.include? "third" or chair.include? "little"
		puts "That chair is just right! You win!"
		# exits the process immediately
		Process.exit()
	else
		dead("Just pick a chair!")
	end
end

def bed_room()
	puts "You have entered a room with three beds."
	puts "The first bed is big."
	puts "The second bed is medium."
	puts "The third bed is little."
	puts "Which bed do you get into?"

	prompt; bed = gets.chomp
	if bed.include? "first" or bed.include? "big"
		puts "That bed is too hard."
		puts "Try another bed."
		bed_room()
	elsif bed.include? "second" or bed.include? "medium"
		puts "That bed is too soft."
		puts "Try another bed."
		bed_room()
	elsif bed.include? "third" or bed.include? "little"
		puts "That bed is just right! You win!"
		# exits the process immediately
		Process.exit() 
	else
		dead("Just pick a bed!")
	end
end

def bowl_room()
	puts "You have entered a room with three bowls of food."
	puts "The first bowl is big."
	puts "The second bowl is medium."
	puts "The third bowl is little."
	puts "Which bowl do you eat?"

	prompt; bowl = gets.chomp
	if bowl.include? "first" or bowl.include? "big"
		puts "That bowl is too hot."
		puts "Try another bowl."
		bowl_room()
	elsif bowl.include? "second" or bowl.include? "medium"
		puts "That bowl is too cold."
		puts "Try another bowl."
		bowl_room()
	elsif bowl.include? "third" or bowl.include? "little"
		puts "That bowl is just right! You win!"
		# exits the process immediately
		Process.exit()
	else
		dead("Just pick a bowl of food!")
	end
end

def dead(why)
	puts "#{why}"
	Process.exit(0)
end

def start()
	puts "You are in a dark room."
	puts "There are 3 doors, one in front of you, one to your right and, one to your left."
	puts "Which one do you take?"

	prompt; next_move = gets.chomp

	if next_move == "left"
		chair_room()
	elsif next_move == "right"
		bed_room()
	elsif next_move == "front"
		bowl_room()
	else
		dead("You stumble around the room until you starve.")
	end
end

start()
		


		
			
			
