puts "Which file you want to open?"
file_name = gets.chomp


if File.exists?(file_name)
  file_content =  File.read(file_name)
  puts file_content
else
  puts "doesn't exist"
end
