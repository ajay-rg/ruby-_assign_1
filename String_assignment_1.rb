class Ruby
	def filter		#function to take a string and give an array with signed integers in string
		print "Give me a random string:"
		string = gets.chomp
		if string.to_s.empty?	#CHECKS IF THE STRING IS EMPTY
			raise("Give me something!No characters")	#raises an 'No character' exception
		else 
			 string_to_array = string.scan /[-+]?[0-9]*\,?[0-9]+/ #converts the string to an array with integers
			return string_to_array
		end	
	end
end
string = Ruby.new()
array = string.filter
length = array.length			#length of the array which contains integers
sum = 0
count = 0						#Positive number count
zero_count = 0
for x in array 
	temp = x.to_i
	if temp > 0
	count = count + 1
	sum = sum + temp			#Loop to find the total number of postive integers and their sum
	end
	if temp == 0
		++zero_count		
	end
end
if length == 0 
	raise("Why so many characters?No numbers")		#Exception that no integer is present
elsif length >0 && count==0	
	raise("Nothing is positive!")					#exception that no postive integer is present
elsif length >0 && count == 0 && zero_count==0
	raise("Such negativity!only negative numbers are present") #exception that only negative numbers are present as 
else answer = sum/count.to_f
		print "The average is #{answer}\n"			#Average of positive numbers in the given string
end