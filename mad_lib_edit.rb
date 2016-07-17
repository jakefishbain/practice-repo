=begin
  -input a user generated madlib designating parts of speech using parentheses (adjective)
  -index each word to give individual keys
  -search for parts of speech using ()
  -count each type # of nouns, adjective, etc.
  -ask new user for that number of nouns, adj, etc.
  -replace the original blanks with new inputs
  -print full madlib to screen
=end


def mad_lib
puts ""
puts "Generate a mad-lib. Place all parts of speech in parentheses, please keep it to nouns, plural nouns (plural), verbs, and adjectives for now." 
puts "[ex. The (noun) jumped over the (adjective) moon.]"
blank_lib = gets.chomp.split

	index = 0
	while index < blank_lib.count
		if blank_lib[index] == "(noun)" || blank_lib[index] == "(noun)."
			puts "Enter a noun!"
			blank_lib[index] = gets.chomp!
		elsif blank_lib[index] == "(plural)"
		 	puts "Enter a plural noun"
			blank_lib[index] = gets.chomp!
		elsif blank_lib[index] == "(adjective)" || blank_lib[index] == "(adjective)."
			puts "Enter an adjective!"
			blank_lib[index] = gets.chomp!
		elsif blank_lib[index] == "(verb)" || blank_lib[index] == "(verb)."
			puts "Enter a verb!"
			blank_lib[index] = gets.chomp!
		elsif blank_lib[index][0] == "(" && blank_lib[index][-1] == ")"
			puts ""
			puts "We didn't get this part: #{blank_lib[index]}"
			puts "Can you try just the part of speech you wanted in parentheses again?"
			new_part = gets.chomp!
			blank_lib[index] = new_part
			index -= 1
		end
		index += 1
	end
puts blank_lib.join(" ").capitalize
end
mad_lib


		

	