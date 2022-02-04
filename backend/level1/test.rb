require 'json'

output_filepath = 'data/output.json'
expected_output_filepath = 'data/expected_output.json'

system("ruby", "main.rb")

if JSON.parse(File.read(output_filepath)) == JSON.parse(File.read(expected_output_filepath))
  puts "OK"
else
  puts "Error"
  puts "output:"
  puts output_filepath
  puts "expected:"
  puts expected_output_filepath
end