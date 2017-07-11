class RGA
	def func1
		a = gets.chomp
		m = a.length
		if m == 0
			raise("Give me something!")
		else b = a.gsub(/[^0-9,^-]/,"")
			b = a.scan /[-+]?[0-9]*\,?[0-9]+/		
			return b
		end	
	end
end
c = RGA.new()
e = c.func1
l = e.length
sum = 0
count = 0
z =0
for x in e
	n = x.to_i
	if n>0
	count = count + 1
	sum = sum + n
	end
	if n==0
		++z
	end
end
if l == 0 
	raise("Why so many characters?")
elsif l>0 && count==0
	raise("Nothing is positive")
elsif l>0 && count == 0 && z==0
	raise("Such negativity,uff!") 
else answer = sum/count.to_f
		puts answer
end
