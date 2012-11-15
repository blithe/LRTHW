# get file name from initial command line prompt
filename = ARGV.first

# declare variables
prompt = "> "

# opens file and saves it in the variable txt
txt = File.open(filename)

# prints out the file name given
puts "Here's your file: #{filename}"
# prints out the contents stored in txt
puts txt.read()
# closes file
txt.close()

puts "I'll also ask you to type it again:"
# prompts for the file name again
print prompt
# stores the file name in a variable file_again
file_again = STDIN.gets.chomp()

# stores the contents of the file in the variable txt_again
txt_again = File.open(file_again)

# prints the contents stored in the variable txt_again
puts txt_again.read()
# closes file
txt_again.close()