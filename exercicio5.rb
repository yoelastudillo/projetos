=begin
5. Método para Retornar Resultados:
   - Crie um método que retorne um hash contendo o nome completo, curso, notas, média e se o aluno passou ou não 
   (considerando média maior que 8 como critério de aprovação).
=end

def criar_hash (nome, curso, notas)
    media = notas.sum / notas.length.to_f
    aprovacao = media > 8 

    {nome: nome,
    curso: curso,
    media: media,
    aprovacao: aprovacao}
end

puts 'ingrese o nome: '
nome = gets.chomp
puts 'ingrese o curso'
curso = gets.chomp
puts 'ingrese as notas'
notas = gets.chomp
notasarray = notas.split

p criar_hash