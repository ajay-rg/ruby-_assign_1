def initialize_grid(n, val)				#function to initialize an 2-d array
  grid = Array.new(n)
  n.times do |row_index|
    grid[row_index] = Array.new(n)
    n.times do |column_index|
      grid[row_index][column_index] = val
    end
  end
  grid
end
def alpha_to_num(string)			#To convert an alphabet to corresponding number so that it can be used as an index value
	if(string =='A')
		temp=1
	elsif(string =='B')
		temp=2
	elsif(string =='C')
		temp=3
	elsif(string =='D')
		temp=4
	elsif(string =='E')
		temp=5
	elsif(string =='F')
		temp=6
	elsif(string =='G')
		temp=7
	elsif(string =='H')
		temp=8
	elsif(string =='I')
		temp=9
	elsif(string =='J')
		temp=10
	end
	return temp
end
array= initialize_grid(11, 0)			#initialize the required excel sheet
		array[0][1]="A"			#naming the rows and columns
		array[0][2]="B"
		array[0][3]="C"
		array[0][4]="D"
		array[0][5]="E"
		array[0][6]="F"
		array[0][7]="G"
		array[0][8]="H"
		array[0][9]="I"
		array[0][10]="J"	
		array[1][0]=1
		array[2][0]=2
		array[3][0]=3
		array[4][0]=4
		array[5][0]=5
		array[6][0]=6
		array[7][0]=7
		array[8][0]=8
		array[9][0]=9
		array[10][0]=10
		array[0][0]="-"
loop do						
	print "Set value or set expression or end:1 or 2 or 3?\n"
	option=gets.chomp.to_i			#take an option about operation
case option
when 1						#assign the desired value to the cell
		print "Source cell: eg:A5\n"
		cell= gets.chomp.upcase.split('')	#split the given string to array
		temp1 = cell[0]
		temp2 = cell[1]
		flag1= alpha_to_num(temp1).to_i		#CONVERT THE COLUMN NAME TO CORRESPONDING NUMBER
		flag2=temp2.to_i
		print "Value:\n"
		value=gets.chomp.to_i
		array[flag2][flag1]=value		#give the value to the cell
	for i in 0..10
		for j in 0..10
			print "#{array[i][j]}\t"
		end
		print "\n"
	end
when 2							#do the required operation
	print "Set Expression: eg:A5=B3+C1\n"
	expression_cpy=gets.chomp.upcase
	expression=expression_cpy.gsub(/[^0-9^A-Z]/,"").split("")		#convert the given string to an array such that it recognises the destinanation and source cells
	val1 = array[expression[3].to_i][alpha_to_num(expression[2]).to_i].to_i	 #value in source cell 1
	val2 = array[expression[5].to_i][alpha_to_num(expression[4]).to_i].to_i	 #value in source cell 2
	if expression_cpy.include?"+"						#operation is performed according to the operator given
		Operation_result=val1+val2
	end
	if expression_cpy.include?"-"
		Operation_result=val1-val2
	end
	if expression_cpy.include?"*"
		Operation_result=val1*val2
	end	
	if expression_cpy.include?"/"
		Operation_result=val1/val2
	end
	array[expression[1].to_i][alpha_to_num(expression[0]).to_i]=Operation_result	#assign the obtained result to the destination cell
	for i in 0..10
		for j in 0..10
		print "#{array[i][j]}\t"
		end
	print "\n"
	end
when 3									#end the program if option 3 is given
	break
end
end
