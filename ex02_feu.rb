#Évaluer une expression

a = ARGV[0]


#deja faire une def pour +-*/ et ensuite faire une boucle si il y a () 
#et faire la def dedans 
#faire rejouer la boucle si il y a un exemble un + ensuite car 
#4 + 0 + 38 , 4+0 = 4 mais le i va buger on va etre a i 4 alors qu'il restera plus que 
#4 + 38 , test si on peut faire juste i = i-1 quand on delete ca serait cool 
#mettre tout ca dans une def avec b en @ je pense , et faire le for i prendre i si
#il y a "(" et prendre le ")" et faire la def dedans delete ce qu'il y a dedans 
#et faire la def normal apres . 
#bonne chance mael du 30/11/2022 qui lire ca 

@b = a.split(' ')
@d = []



def calcul(b) #calcul simple , suppression puis rajout 
x = 0
y = 0
z = 0 
w = 0 

for i in 0..b.length
	case b[i]
	when "+"
		x = x + 1 
	when "*"
		y = y + 1
	when "/"
		z = z + 1 
	when "-" 
		w = w + 1
	end 
end 


while y > 0
	for i in 0..b.length
		case b[i] 
		when "*"
			r = b[i-1].to_i * b[i+1].to_i
		
			b[i-1] = r
			b.delete_at(i)
			b.delete_at(i)
			y = y - 1
		end
	end 
end 

while z > 0
	for i in 0..b.length
		case b[i] 
		when "/"
			r = b[i-1].to_i / b[i+1].to_i
		
			b[i-1] = r
			b.delete_at(i)
			b.delete_at(i)
			z = z - 1
		end
	end 
end 

while x > 0
	for i in 0..b.length
		case b[i] 
		when "+"
			r = b[i-1].to_i + b[i+1].to_i
		
			b[i-1] = r
			b.delete_at(i)
			b.delete_at(i)
			x = x - 1
		end
	end 
end 

while w > 0
	for i in 0..b.length
		case b[i] 
		when "-"
			r = b[i-1].to_i - b[i+1].to_i
		
			b[i-1] = r
			b.delete_at(i)
			b.delete_at(i)
			w = w - 1
		end
	end 
end 
end 
#pour calculer les parenthese 
#test

def parentez(b , o)
while o > 0 #pour faire autant de boucle qu'il y a de ()
u = 0
t = 0
 for i in 0..b.length 
	if b[i] == "(" 
		t = i
		b.delete_at(i)
	end 
	if b[i] == ")"
		u = i
		b.delete_at(i)
		break if i = u 
	end 
 end  #supprimer les () pour faire le calcul puis sup et rajouter

x = 0
y = 0
z = 0 
w = 0 
for i in t..u-1
	case b[i]
	when "+"
		x = x + 1 
	when "*"
		y = y + 1
	when "/"
		z = z + 1 
	when "-" 
		w = w + 1
	end 
end 

while y > 0
	for i in t..u-1
		case b[i] 
		when "*"
			r = b[i-1].to_i * b[i+1].to_i
		
			b[i-1] = r
			b.delete_at(i)
			b.delete_at(i)
			y = y - 1
		end
	end 
end 

while z > 0
	for i in t..u-1
		case b[i] 
		when "/"
			r = b[i-1].to_i / b[i+1].to_i
		
			b[i-1] = r
			b.delete_at(i)
			b.delete_at(i)
			z = z - 1
		end
	end 
end 

while x > 0
	for i in t..u-1
		case b[i] 
		when "+"
			r = b[i-1].to_i + b[i+1].to_i
		
			b[i-1] = r
			b.delete_at(i)
			b.delete_at(i)
			x = x - 1
		end
	end 
end 

while w > 0
	for i in t..u-1
		case b[i] 
		when "-"
			r = b[i-1].to_i - b[i+1].to_i
	
			b[i-1] = r
			b.delete_at(i)
			b.delete_at(i)
			w = w - 1
		end
	end   
end
o = o - 1 
end 
end
o = 0 
for i in 0..@b.length
	if @b[i] == "("
		o = o +1 
	end  #savoir le nombre de ()
end 

parentez(@b , o )


calcul(@b)
print @b




























=begin 
def calculateur(a)
	b = a.length
	e = nil
	for i in 0..b 
		if a[i-2] == " "
			c = i-2
		end 
		if a[i+3] == " "
			d = i+3
		end 
		case a[i] 
			when "*"
				e << "a[c]..a[i-1]".to.i * "a[d]..a[i+1]".to.i
				puts e 
			end 
	end 
end 

calculateur(a)
=end 