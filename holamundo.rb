array = ['1','2','3']

puts array[1]

integ = 1

integ = "asdas"

#######
symbol1 = :rubysymbol
symbol2 = :rubysymbol

puts symbol1.object_id
puts symbol2.object_id

#####

hash = {var1: '1',var2: '2',var3:'3'}
puts hash[:var1]
######
puts "ingrese um dia"
dia = gets.chomp

puts "vc boto #{dia}"

if dia == 'segunda'
    mensajem = 'comenco'
elsif dia == 'sexta'
    mensajem = 'fim'
else
    mensajem = 'mitade'
end
puts mensajem

#unless #si ES DISTINTO. funciona igual que el if. puede usar else. es igual a usar if not
#case 

#####

ingcase = gets.chomp.to_i

case ingcase #iniciador
when 1..3 #entre 1 y 3
    puts 'o numero e entre 1 e 3'
when 4..10 
    puts 'numero maior a 4'
else
    puts 'no se pudo identificar'
end
#####

frutas = ['banana','tomate','cebola']

for f in frutas
    puts f
end

####
x = 1

while x < 10
    puts x
    x += 1
end
####
count = 1
loop do
    puts count
    if count == 100
        break
    end
    count += 1
end
####
10.times do #ejecuta '10 veces'
    #codigo
end
####
