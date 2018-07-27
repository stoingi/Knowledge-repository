

todos = []
puts "Hello what's your name? "
name = gets.chomp.capitalize
puts "What you wanna do? The following commands are supported: 'add', 'done', 'list', 'quit'."

loop do
  puts "Please enter the command: "
  command = gets.chomp
  break if command.include?("quit")
     if
        command.include?("add")
          puts "Which item you wanna add to the list? "
        add_item = gets.chomp
          if todos.include?(add_item)
          puts "You've already added this item #{add_item} to your list... so what you wanna do next? "
          else
          todos << add_item
          end
      elsif
        command.include?("list")
        puts todos
      elsif
         command.include?("done")
         puts "Which item have you done already? "
         item_done = gets.chomp
           if todos.include?(item_done)
             puts "yes it's already done and #{item_done} will be deleted!"
             todos.delete(item_done)
           end
     end
end

puts "Goodbye #{name} my friend, was nice meeting you!"
