require 'json'

output_filepath = 'data/output.json'
expected_output_filepath = 'data/expected_output.json'

system("ruby", "main.rb")

output = JSON.parse(File.read(output_filepath))
expected_output = JSON.parse(File.read(expected_output_filepath))

if output == expected_output
  puts "OK"
else
  puts "Error"
  puts "output:"
  puts output
  puts "expected:"
  puts expected_output
end