def initialize_board(n, val)
  board = Array.new(n)
  n.times do |row_index|
    board[row_index] = Array.new(n)
    n.times do |column_index|
      board[row_index][column_index] = val
    end
  end
  board
end
def alpha_num(e)
	if(e =='A')
		s=1
	elsif(e =='B')
		s=2
	elsif(e =='C')
		s=3
	elsif(e =='D')
		s=4
	elsif(e =='E')
		s=5
	elsif(e =='F')
		s=6
	elsif(e =='G')
		s=7
	elsif(e =='H')
		s=8
	elsif(e =='I')
		s=9
	elsif(e =='J')
		s=10
	end
	return s
end
a= initialize_board(11, 0)
		a[0][1]="A"
		a[0][2]="B"
		a[0][3]="C"
		a[0][4]="D"
		a[0][5]="E"
		a[0][6]="F"
		a[0][7]="G"
		a[0][8]="H"
		a[0][9]="I"
		a[0][10]="J"	
		a[1][0]=1
		a[2][0]=2
		a[3][0]=3
		a[4][0]=4
		a[5][0]=5
		a[6][0]=6
		a[7][0]=7
		a[8][0]=8
		a[9][0]=9
		a[10][0]=10
		a[0][0]="-"
loop do
	print "Set value or set expression or end:1 or 2 or 3?\n"
	k=gets.chomp.to_i
	break if k==3
case k
when 1
	print "Source cell: eg:A5\n"
	y= gets.chomp.upcase
	y = y.split('')
	e = y[0]
	f = y[1]
	s = alpha_num(e)
	s =s.to_i
	f=f.to_i
	print "Value:\n"
	value=gets.chomp
	a[f][s]=value
for i in 0..10
	for j in 0..10
		print "#{a[i][j]}\t"
	end
	print "\n"
end
when 2
	print "Set Expression: eg:A5=B3+C1\n"
	z1=gets.chomp.upcase
	z = z1.gsub(/[^0-9^A-Z]/,"")
	z =z.split("")
	# o=z.class.name
	# puts o
	# puts z
	w1=alpha_num(z[2])
	w1=w1.to_i
	w2=z[3]
	w2=w2.to_i
	w8 = a[w2][w1]
	w8=w8.to_i
	w3=alpha_num(z[4])
	w3=w3.to_i
	w4=z[5]
	w4=w4.to_i
	w9 = a[w4][w3]
	w9 = w9.to_i
	if z1.include?"+"
		w5=w8+w9
	end
	if z1.include?"-"
		w5=w8-w9
	end
	if z1.include?"*"
		w5=w8*w9
	end	
	if z1.include?"/"
		w5=w8/w9
	end
	w6 = alpha_num(z[0])
	w6=w6.to_i
	w7=z[1]
	w7=w7.to_i
	a[w7][w6]=w5
	for i in 0..10
		for j in 0..10
		print "#{a[i][j]}\t"
		end
	print "\n"
	end
end
end
