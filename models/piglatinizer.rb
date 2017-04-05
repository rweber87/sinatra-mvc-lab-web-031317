class PigLatinizer

	attr_accessor :text

	def to_pig_latin(sentence)
		sent_array = sentence.split

		sent_array.map {|word| piglatinize(word) }.join(" ")
		
	end

	def piglatinize(word)
		vowels = "aeiouAEIOU"
		if vowels.include?(word[0])
			word + "way"
		else
			piglatin_helper(word)
		end
	end

	def piglatin_helper(word)
		word_array = word.split("")
		vowels = "aeiou"
		idx = 0
		
		until vowels.include?(word_array[idx])
			idx += 1
		end

		return word.slice(idx, word.length) + word.slice(0, idx) + "ay"
	end

end