#Créez un programme qui affiche un rectangle dans le terminal.

a = ARGV[0].to_i
b = ARGV[1].to_i

if a > 1 
	print "o" 
	for i in 0..a-3 
		print "-"
	end 
	puts "o" 
else 
	puts "o"
end 

for i in 0..b-3
	print "|"
	(a-2).times { |j| print " " } 
	puts "|"
end 

if b > 1 
	print "o" 
	for i in 0..a-3 
		print "-"
	end 
	puts "o" 

end 