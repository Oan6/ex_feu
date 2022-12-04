#Créez un programme qui trouve et affiche la solution d’un Sudoku.

txt = File.read(ARGV[0])
txt = txt.split("")
 
#ligne 
a = "0" , "1" , "2" , "3" , "4" , "5" , "6" , "7" , "8"
b ="10" , "11" , "12"  , "13" , "14" , "15" , "16" , "17" , "18" 
c ="20" , "21" , "22"  , "23" , "24" , "25" , "26" , "27" , "28" 
d ="30" , "31" , "32"  , "33" , "34" , "35" , "36" , "37" , "38" 
e ="40" , "41" , "42"  , "43" , "44" , "45" , "46" , "47" , "48" 
f ="50" , "51" , "52"  , "53" , "54" , "55" , "56" , "57" , "58" 
g ="60" , "61" , "62"  , "63" , "64" , "65" , "66" , "67" , "68"
h ="70" , "71" , "72"  , "73" , "74" , "75" , "76" , "77" , "78"  
i ="80" , "81" , "82"  , "83" , "84" , "85" , "86" , "87" , "88"  
jj =a , b , c , d , e , f , g , h , i 
#colone 

j ="0" , "10" , "20" , "30" , "40" , "50" , "60" , "70" , "80"
k ="1" , "11" , "21" , "31" , "41" , "51" , "61" , "71" , "81"
l ="2" , "12" , "22" , "32" , "42" , "52" , "62" , "72" , "82"
m ="3" , "13" , "23" , "33" , "43" , "53" , "63" , "73" , "83"
n ="4" , "14" , "24" , "34" , "44" , "54" , "64" , "74" , "84"
o ="5" , "15" , "25" , "35" , "45" , "55" , "65" , "75" , "85"
q ="6" , "16" , "26" , "36" , "46" , "56" , "66" , "76" , "86"
r ="7" , "17" , "27" , "37" , "47" , "57" , "67", "77" , "87"
s ="8" , "18" , "28" , "38" , "48" , "58" , "68", "78" , "88"
kk =j , k , l , m , n , o , q , r , s 
#carrée 3*3
aa ="0" , "1" , "2" , "10" , "11" , "12" , "20" , "21" , "22" 
bb ="3" , "4" , "5" , "13" , "14" , "15" , "23" , "24" , "25" 
cc ="6" , "7" , "8" , "16" , "17" , "18" , "26" , "27" , "28"
dd ="30" , "31" , "32" , "40" , "41" , "42" , "50" , "51" , "52" 
ee ="33" , "34" , "35" , "43" , "44" , "45" , "53" , "54" , "55" 
ff ="36" , "37" , "38" , "46" , "47" , "48" , "56" , "57" , "58"
gg ="60" , "61" , "62" , "70" , "71" , "72" , "80" , "81" , "82" 
hh ="63" , "64" , "65" , "73" , "74" , "75" , "83" , "84" , "85"
ii ="66" , "67" , "68" , "76" , "77" , "78" , "86" , "87" , "88"
ll = aa , bb , cc , dd , ee , ff , gg , hh , ii  

tt = 0 #nombre de chiffre a trouvé 



for i in 0..txt.length
	if txt[i] == "."
		tt = tt + 1
	end 
end 




while tt > 0
	for i in 0..txt.length

		if txt[i] == "."
			oo = 0
			x =1 , 2 , 3 , 4  ,5 , 6 , 7 , 8 , 9 
			gg = 0
			ww = 0
		puts i 
			for var in ll
				if var.include?(i.to_s) && oo < 1 #sert a bloqué pour les tests 
					oo = oo + 1# ligne du haut mdr 
					print var 
					
					for u in 0..var.length-1
						for j in 0..x.length
						if txt[var[u].to_i].to_i == x[j]

							
							x.delete_at(j)
							end 
						end 
						
						
					end
					if x.length == 1 
					 	
					 	txt[i] = x[0]
					 	tt = tt - 1 
					elsif x.length > 1 

						for var in kk
							if var.include?(i.to_s) && gg < 1 #sert a bloqué pour les tests 
								gg = gg + 1# ligne du haut mdr 
								print var 
					
								for u in 0..var.length-1
									for j in 0..x.length
										if txt[var[u].to_i].to_i == x[j]
											x.delete_at(j)
										end 
									end 
								end
							end
						end
						if x.length == 1 
					 	
					 		txt[i] = x[0]
					 		tt = tt - 1 
						elsif x.length > 1 
					 		for var in jj
							if var.include?(i.to_s) && ww < 1 #sert a bloqué pour les tests 
								ww = ww + 1# ligne du haut mdr 
								print var 
					
								for u in 0..var.length-1
									for j in 0..x.length
										if txt[var[u].to_i].to_i == x[j]
											x.delete_at(j)
										end 
									end 
								end
							end
							end
							if x.length == 1 
					 	
					 		txt[i] = x[0]
					 		tt = tt - 1 
					 		end
						end
					end

					puts ""
					print x
					 
				end 
			end 
		end 
	end
end


for i in 0..txt.length
	if txt[i] == "."
		tt = tt + 1
	end 
end 
puts tt 


#passage pour rendre beau 
e = 9
d = 0
f = 0
for i in 0..txt.length
	if i == 3 || i == 6 || i == 13 || i == 16 || i == 23 || i == 26 || i == 33 || i == 36 || i == 43 || i == 46 || i == 53 || i == 56 || i == 63 || i == 66 || i == 73 || i == 76 ||i == 83 || i == 86 
		print "  "
	end 
	print txt[i] 

	if txt[i] == "\n"
		e = e - 1 
		if e == 6
			next if d == 1
			puts ""
			d = d + 1
		end 
		if e == 3 
			next if f == 1 
			puts ""
			f = f + 1 
		end 
	end 
end 

