puts "How should the file be named?"
file_name = gets.chomp

file = File.new ("#{file_name}.txt", "w")
file.write ("Hello World\n")
file.close


Files.open("#{file_name}.txt", "w") do |file|
  file.write("Hello world\n")
end 
