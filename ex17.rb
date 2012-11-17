from_file, to_file = ARGV
script = $0

require './ex17a.rb'

puts "Copying from #{from_file} to #{to_file}"

input = File.open(from_file)
indata = input.read()

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done."

output.close()
input.close()
