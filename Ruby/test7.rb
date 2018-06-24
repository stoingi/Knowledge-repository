


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

frequencies = frequencies.sort_by do |count|
  count 
 end

puts frequencies.reverse! 



puts "Give me some text: "
text = gets.chomp

words = text.split " "

frequencies = Hash.new(0)

words.each do |word|
  frequencies[word] +=1
    break if word.include?("code")
	end

frequencies = frequencies.sort_by do |count|
  count.reverse!
 end

puts frequencies