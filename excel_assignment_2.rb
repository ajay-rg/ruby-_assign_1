def initialize_grid(n, val)
  grid = Array.new(n)
  n.times do |row_index|
    grid[row_index] = Array.new(n)
    n.times do |column_index|
      grid[row_index][column_index] = val
    end
  end
  grid
end
def alpha_to_num(string)
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
array= initialize_grid(11, 0)
		array[0][1]="A"
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
	option=gets.chomp.to_i
case option
when 1
		print "Source cell: eg:A5\n"
		cell= gets.chomp.upcase.split('')
		temp1 = cell[0]
		temp2 = cell[1]
		flag1= alpha_to_num(temp1).to_i
		flag2=temp2.to_i
		print "Value:\n"
		value=gets.chomp.to_i
		array[flag2][flag1]=value
	for i in 0..10
		for j in 0..10
			print "#{array[i][j]}\t"
		end
		print "\n"
	end
when 2
	print "Set Expression: eg:A5=B3+C1\n"
	expression_cpy=gets.chomp.upcase
	expression=expression_cpy.gsub(/[^0-9^A-Z]/,"").split("")
	val1 = array[expression[3].to_i][alpha_to_num(expression[2]).to_i].to_i
	val2 = array[expression[5].to_i][alpha_to_num(expression[4]).to_i].to_i
	if expression_cpy.include?"+"
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
	array[expression[1].to_i][alpha_to_num(expression[0]).to_i]=Operation_result
	for i in 0..10
		for j in 0..10
		print "#{array[i][j]}\t"
		end
	print "\n"
	end
when 3
	break
end
end
