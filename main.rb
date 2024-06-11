require_relative 'lib/greetings'
require_relative 'lib/file_handler'
require_relative 'lib/data_processor'

include Greetings

puts greet("World")

input_file = 'data/input.txt'
output_file = 'data/output.txt'

begin
  data = FileHandler.read_file(input_file)
  processed_data = DataProcessor.process(data)
  FileHandler.write_file(output_file, processed_data)
  puts "Data processed successfully. Check #{output_file} for the output."
rescue StandardError => e
  puts "An error occurred: #{ e.message }"
end
