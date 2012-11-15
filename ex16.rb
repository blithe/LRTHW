filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Now I'm going to ask you for three lines."

print "line1: "; line1 = STDIN.gets.chomp()
print "line2: "; line2 = STDIN.gets.chomp()
print "line3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

puts "And finally, we close it."
target.close()

# opens file and saves it in the variable txt
txt = File.open(filename)

# prints out the file name given
puts "Here's your file: #{filename}"
# prints out the contents stored in txt
puts txt.read()
# closes file
txt.close()