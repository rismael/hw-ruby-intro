# When done, submit this entire file to the autograder.

#Ismael Rodriguez
#CSCE 431

# Part 1

def sum (arr)
	return arr.inject(0, :+)
end

def max_2_sum arr
	if (first_max = arr.max) == nil
		first_max = 0
	end
	if (second_max = arr.sort[-2]) == nil
		second_max = 0
	end
	return first_max + second_max
end

def sum_to_n? arr, n
	if arr.empty?
		return false
	end
	arr.permutation(2).any? {
		|x, y| x + y == n
	}
end
# Part 2

def hello(name)
	return 'Hello, ' + name
end

def starts_with_consonant? s
	s = s.downcase
	if s[0] == 'a'
		return false
	elsif s[0] == 'e'
		return false
	elsif s[0] == 'i'
		return false
	elsif s[0] == 'o'
		return false
	elsif s[0] == 'u'
		return false
	elsif s.empty?
		return false
	elsif !s[0].match?(/[a-z]/)
		return false
	else
		return true
	end
end

def binary_multiple_of_4? s
	if s.tr('01', '') != ''
		return false
	elsif s.empty?
		return false
	end
	binary = s.to_i(2)
	return ((binary % 4) == 0)
	
end

# Part 3

class BookInStock
attr_accessor :isbn, :price

	def initialize(isbn, price)
		unless !isbn.empty?
			raise ArgumentError.new("isbn is empty")
		end
		unless price > 0
			raise ArgumentError.new("Only prices greater than 0 allowed")
		end
		@isbn = isbn
		@price = price
	end

	def price_as_string
		if not price.to_s.include? "."
			return ('$' + price.to_s + '.00')
		elsif price.to_s.split('.').last.size == 1
			return ('$' + price.to_s + '0')
		elsif price.to_s.split('.').last.size == 2
			return ('$' + price.to_s)
		else 
			puts ('Error')
		end
	end
end
book = BookInStock.new('isb', 20)
