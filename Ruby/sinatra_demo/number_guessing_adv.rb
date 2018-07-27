require 'sinatra'
    get '/' do


secret_number = rand(1..100)
winner = false
numbers_guessed = []

	while winner == false
	    numbers_guessed.each do |x|
		puts x
	  end

	  if numbers_guessed.include?(guess)
		puts "You've already guessed this number"
	  end

	  numbers_guessed << guess

	  if guess > secret_number
		puts "The number is smaller than the one"
	  elsif guess < secret_number
		puts "The number is greater than the one"
	  else
		puts "Congratulations, you've got it!"
		winner = true
	  end
	end


end

get '/number_guessing' do
  erb :number_guessing
end
