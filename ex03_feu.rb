#Créez un programme qui affiche 
#la position de l’élément le plus en haut à droite (dans l’ordre)
#d’une forme au sein d’un plateau.


#je pense qu'il faut faire ligne par ligne a chaque \n mettre dans un tableau la ligne 
#pour compter ou sinon soustraire le numero a la ligne.length d'avant 

colone = 0
ligne = 0
w = 0
t = 0 
a = File.read(ARGV[0])
b = a.length
c = File.read(ARGV[1])
puts c.length
d = 0
k = 0

for i in 0..b
	if a[i] == c[d]
		t = t+1
		d = d+1
		puts a[i]
	end 
	if a[i] == c[0] && k == 0
		colone = colone + i
		colone = colone + (-4 * w) 
		if w != 0 
			colone = colone - w 
		end 
		ligne = w 
		k = k+1
	end 
	if a[i] == "\n"
		w = w+1

	end 
	if c[d] == " "
		d = d+1
		
	end 
end 
puts "#{colone} #{ligne}"
puts "#{t}"
#la on prends les coordonné du 1er chiffre mais si le reste suit pas on met quand meme
#les coordonnées , donc faut reset si ya pas tt , donc le t = c.length , et repartir 
#des coordonnées pour continuier . 
 

