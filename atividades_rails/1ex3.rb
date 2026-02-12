=begin
  - Peça ao usuário para inserir as notas do aluno separadas por vírgula (por exemplo, "7.5, 8.0, 6.5") usando gets.chomp.
  - Converta a entrada do usuário em um array de notas.
  - Calcule a média das notas utilizando um método que você irá criar.
  - Imprima a média das notas.
=end

puts 'ingrese as notas do aluno separado por virgula'
notas = gets.chomp

notasarray = notas.split(',').map { |nota| nota.strip.to_f}

def promedio(notas)
    promedio = notas.sum / notas.length
    return promedio.truncate(2)
end

promedio = promedio(notasarray)

puts "o promedio e: #{promedio}"