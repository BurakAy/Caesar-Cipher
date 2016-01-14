def caesar_cipher(input, key)
	new_string = ""
	alphabet = ('a'..'z').to_a.concat(('A'..'Z').to_a)

	input.each_char do |letter|
		if !alphabet.include?(letter)
			new_string += letter
		else
			new_string += alphabet[alphabet.index(letter) - key]
		end
	end

	return new_string
end

puts "Enter your text to cipher"
user_input = gets.chomp

puts "Enter number to shift"
shift_factor = gets.chomp.to_i

puts

puts caesar_cipher(user_input, shift_factor)