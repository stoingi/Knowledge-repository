todos = []
puts "Hello what's your name? "
name = gets.chomp
puts "What you wanna do? The following commands are supported: 'add', 'done', 'list', 'quit'."
command = gets.chomp
if command.include?("add")
  puts "Which item you wanna ad to the list? "
  add_item = gets.chomp
  todos << add_item
  puts todos
end