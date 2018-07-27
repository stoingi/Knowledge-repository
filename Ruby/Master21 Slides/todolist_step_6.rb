puts "Welcome to the todo list"
puts "Please enter your command!"

todo_list = []
todo_list << "Buy milk"
todo_list << "Buy cheese"

def persist_todo_list(todo_list)
  File.open('todo_list.txt', 'w') do |file|
    todo_list.each do |todo|
      file.write "#{todo}\n"
    end
  end
end

loop do
  command = gets.chomp
  break if command.downcase.include?("quit")

  if command.downcase.include?("list")
    puts todo_list

  elsif command.downcase.include?("add")
    puts "What is your todo?"
    todo = gets.chomp
    todo_list << todo

  elsif command.downcase.include?("done")
    puts "What todo is done?"
    todo = gets.chomp
    todo_list.delete(todo)
  end

  persist_todo_list(todo_list)

  puts "Please enter your command!"
end

puts "Goodbye"
