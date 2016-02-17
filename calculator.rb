while @number != 'quit'
	def first_numb
		puts """
			---WELCOME TO THE CALCULATOR---
			---To quit, type 'quit.'---
			What is the first number?"""
		@number = gets.strip.downcase
	end

	def second_numb
		puts"What is the Second Number?"
		@number2 = gets.to_f
	end

	def op
		puts "What operation would you like to perform?"
		operation = gets.strip
		case operation
			when '+'
				answer = @number.to_f + @number2.to_f
				puts "The answer is #{answer}"
			when '-'
				answer = @number.to_f - @number2.to_f
				puts "The answer is #{answer}"	
			when '*'
				answer = @number.to_f * @number2.to_f
				puts "The answer is #{answer}"
			when '/'
				answer = @number.to_f / @number2.to_f
				puts "The answer is #{answer}"
				if @number2 == 0
					puts "You can't divide by zero, bro."
				end
			else
				puts "Invalid operation, please choose +, -, *, or /"
		end
			puts "Do you want to keep going? Type 'Yes' to continue or quit to go to main menu."
    		input = gets.strip
    		if input == 'yes'
   			@number = answer
   			second_numb
   			op
   		end
	end
	first_numb
	break if @number == 'quit'

	second_numb

	op
end