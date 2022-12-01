#Créez un programme qui affiche 
#la position de l’élément le plus en haut à droite (dans l’ordre)
#d’une forme au sein d’un plateau.
 #  <--> x 
 #   ^
 #   |   y 
 #   v    

a = File.read(ARGV[0])
b = File.read(ARGV[1])
=begin 

puts a.length
puts b.length
e = 0
t = b.split("").each do |c|
 	e = e + 1 if('0'..'9').include?(c)

 end 

 puts e 

 puts a.split(" ")
d = 0 
for i in 0..a.length
	if a[i] == "\n"
		puts a[i-1]
		
		d = d - i
	end 
end 
puts d 
print t
puts ""
print a.split("")
=end 
#deja a chaque \n +1 a y  et reset le x 
#et ensuite je pense qu'il faut faire chaque coordonnée a partir de ce point 
#pour validé l'affichage ou reset
w = 1 #pour savoir si tt est trouvé 
t = 0 #valeur d'une ligne 
x = 0 #coordonnée
y = 0 # ---------
f = 0 #valeur de la ligne du tableau to find 
l = 0 #sert pour avoir t ( t = valeur d'une ligne fin juste la 1ere )
e = 0 #nombre dans to_find
u = 0 ## sert a savoir la coordonnée x 
for i in 0..b.length
	if ('0'..'9').include?(b[i])
		e = e + 1
	end 
end


for i in 0..a.length
	if a[i] == b[0]

		x = i - u 
	d = 0 #coordonnée y du tableau to find 
		for k in 1..b.length
			c = 0 #coordonnée x du tableau to find
			if b[k] == "\n"
					d = d + 1
					f = k + 1
			end 
			if ('0'..'9').include?(b[k])
				c = k - f
				
			if a[i+c] == b[k] || a[i+t+c] == b[k]
			puts "nice"
			w = w + 1 

			end  
			end 
		end


		break if w == e 
		#partir a partir d'ici pour chercher les autre nombres 
	end 
	if a[i] == "\n"
		y = y + 1
		u = i + 1
	end
	if a[i] == "\n" && l == 0
	l = l + 1	
		t = i + 1 # pour savoir combien il y a de nombre par ligne 
	end 

end 




puts x 
puts y 



























