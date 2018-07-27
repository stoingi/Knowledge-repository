   require 'sinatra'
    get '/' do

      db_name = params["db_name"]

      weight = params["weight"].to_i
      height = params["height"].to_f

      if db_name != nil

		  matrix = {
			  "a" => 2,
			  "b" => 2,
			  "c" => 2,
			  "d" => 3,
			  "e" => 3,
			  "f" => 3,
			  "g" => 4,
			  "h" => 4,
			  "i" => 4,
			  "j" => 5,
			  "k" => 5,
			  "l" => 5,
			  "m" => 6,
			  "o" => 6,
			  "p" => 6,
			  "q" => 7,
			  "r" => 7,
			  "s" => 7,
			  "t" => 8,
			  "u" => 8,
			  "v" => 8,
			  "w" => 9,
			  "x" => 9,
			  "y" => 9,
			  "z" => 9}


			@result = db_name.chars.map do |letter|
			  digit = matrix[letter]
			  digit.to_s
			end.join

    elsif weight != nil

          BMI = weight / (height**2)
          @BMI_message = if BMI <= 15
            "You've go very severly underweight"
          elsif BMI >= 15 && BMI <= 16
              "You've got severly underweight"
          elsif BMI >= 16 && BMI <= 18.5
            "You've got underweight"
          elsif BMI >= 18.5 && BMI <= 25
            "You have a healthy weight"
          elsif BMI >= 25 && BMI <= 30
            "You have overweight"
          elsif BMI >= 30 && BMI <= 35
            "You've got obese class 1"
          elsif BMI >= 35 && BMI <= 40
            "You've got obese class 2"
            elsif BMI >= 40
            "You've got obese class 3"
          end
    end

      erb :index
	  
	
    end
	
		
		get '/hello/:name' do
          "Hello #{params[:name]}"
        end

