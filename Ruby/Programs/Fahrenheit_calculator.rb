
	puts "Thank you for your interest in the metric system. Please enter a temperature in Fahrenheit: "
	amount_of_fahrenheit = gets.chomp.to_i
	puts "You have entered #{amount_of_fahrenheit} let me convert that for you... "
	celcius = amount_of_fahrenheit / 3
	puts "It's #{celcius} degrees celcius."
