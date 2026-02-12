=begin
  - Peça ao usuário para inserir as notas do aluno separadas por vírgula (por exemplo, "7.5, 8.0, 6.5") usando gets.chomp.
  - Converta a entrada do usuário em um array de notas.
  - Calcule a média das notas utilizando um método que você irá criar.
  - Imprima a média das notas.
=end

def calcular_medias (notas)
  soma = notas.sum #suma los valores internos del array
  longitude = notas.length #longitud del array
  return soma / longitude
end

puts "ingrese as notas do aluno separado por virgula: "
notas = gets.chomp

notasarray = notas.split(',').map { |nota| nota.strip.to_f }

  
#map recorre todos ls valores del array
#strip borra valores
#to_f converte a float
media = calcular_medias(notasarray)
puts media





