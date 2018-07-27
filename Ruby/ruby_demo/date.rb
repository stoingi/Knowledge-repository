require "date"

today = Date.today

puts today.saturday?


puts today.strftime("%A, %B %-d %Y")

puts today.strftime("%-d.%-m.%Y")
