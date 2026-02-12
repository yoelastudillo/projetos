
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
    promedio = notasarray.sum / notasarray.length
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