# Includes Methods to sort an array using a recursive Merge Algoritm
class Merge_sort
	class << self
		# Cleans the input to a proper array
		def input
			input = gets.gsub(/[^0-9,]/,"").chomp.split(",").map{|x| x.to_i}
		end

		# Splits array in half by recursion until array of 1 is reached.
		def sort array
			if array.length < 2 then return array
			else 
				l_array = sort(array[0..array.length/2-1])
				r_array = sort(array[array.length/2..-1])
				
				merge(l_array, r_array)
			end
		end
		
		#	Merges two arrays taking the lowest of each in order.
		def merge l_array, r_array 
			l_pos = 0 and r_pos = 0
			return_array =[]
			
			until l_array[l_pos] == nil && r_array[r_pos] == nil
				if l_array[l_pos] == nil then
					return_array.push r_array[r_pos] and r_pos += 1
				elsif r_array[r_pos] == nil || r_array[r_pos] > l_array[l_pos]   
					return_array.push l_array[l_pos] and l_pos += 1
				else
					return_array.push r_array[r_pos] and r_pos += 1
				end
			end
			return_array
		end
	
	end
end

puts "Welcome to the MERGE SORT ALGORITHM\nEnter an array to sort:"
answer = Merge_sort.sort(Merge_sort.input)
puts "Your sorted array is:\n#{answer}"

