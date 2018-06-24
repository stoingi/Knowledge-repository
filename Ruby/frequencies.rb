frequencies = Hash.new(0)

loop do
	puts "Give me some text: "
	text = gets.chomp.downcase
	words = text.split " "

	words.each do |word|
  frequencies[word] +=1
  end
	break if frequencies.include?("code")
end

puts frequencies
