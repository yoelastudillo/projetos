
=begin

5. Método para Retornar Resultados:
   - Crie um método que retorne um hash contendo o nome completo, curso, notas, média e se o aluno passou ou não 
   (considerando média maior que 8 como critério de aprovação).
=end



puts 'ingrese nome'
nome = gets.chomp
puts 'ingrese curso'
curso = gets.chomp
puts 'ingrese notas'
notas = '2.3,2.4,2.4'

def promedio (notas)
    notasarray = notas.split(',').map { |nota| nota.strip.to_f}
    notasarray.sum / notasarray.length
end

def hash (nome, curso, ar_promedio)
    promedio = promedio(ar_promedio).truncate(2)
    aprovacao =  promedio > 8

    {nome: nome,
    curso: curso,
    promedio: promedio,
    aprovacao: aprovacao}
end

saidahash = hash(nome, curso, notas)
puts saidahash

#####

count = 0
puts 'FOR#######'
for vars in saidahash
    puts count
    puts vars
    count += 1
end

puts 'FOR VALUE E KEY##########'
for x, y in saidahash
    puts "#{x} : #{y}"
end

puts 'WHILE###########'
count = 0
while count < saidahash.length
    puts "posicion #{count}"
    puts saidahash.values[count]
    puts saidahash.keys[count]
    count += 1
end

puts 'TIMES###########'
3.times do
 puts 'hola'
end

c = 1
puts "LOOP########"
loop do
    puts 'ola'
    if c == 3
        break
    end
    c += 1
end

arrayexemplo = ['juan', 'pedro', 'jose']
#####
puts 'EACH ####'
arrayexemplo.each do |arrayexem| #los || hacen que la variable sea local, osea que el valor no puede salri de fuera de sta funcion. en el caso de unfor sin usar las |, si consigue salir
    puts arrayexem
end

saidahash.each do |chave, valor|
    puts "chave #{chave}, valor #{valor}"
end

nomes_ex = arrayexemplo.map do |nomes| #arrayexemplo.map!, se colocar un ! depois del map, significa que va a sobreescribir la lista
    nomes + "exemplo texto"
end

puts arrayexemplo
puts nomes_ex

##code ternario
comparador = 2
variable = comparador.eql?(3) ? 'si' : 'no'
puts variable 