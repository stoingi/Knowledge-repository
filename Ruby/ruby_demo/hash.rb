
# Vereinfachte Form:
# book = {
#   title: "Brave New World",
#   author: "Aldows Huxley",
#   isbn: "453-324-322",
#   category: "Fiction"
# }

# Geht auch so:
# book = { :title => "Brave New World", :author "Aldous Huxley" }


# puts books[:title]
# puts books[:author]
# puts books[:isbn]
# puts books[:category]

books = [
  {
    title: "Brave New World",
    author: "Aldows Huxley",
    isbn: "453-324-322",
    category: "Fiction"
  },
  {
    title: "1984",
    author: "George Orwell",
    category: "Fiction"
  },
  {
    title: "12 Rules for Life",
    author: "Jordan Peterson",
    category: "Non-Fiction"
  }
]




# books << {}
books << {
  title: "Leonardo da Vinci",
  author: "Walter Isaacson",
  category: "Biography"
}

books.each do |book|
  puts "#{book[:title]} was written by #{book[:author]}"
end

#
# puts "#{book[:title]} is a fiction book."

fiction_books = books.select { |book| book[:category] == "Fiction" }

fiction_books.each do |fiction_book|
  puts "#{fiction_book[:title]} is a fiction book."
end


non_fiction_books = books.reject { |book| book[:category] == "Fiction" }

non_fiction_books.each do |non_fiction_book|
  puts "#{non_fiction_book[:title]} is not a fiction book."
end
