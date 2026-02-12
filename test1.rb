puts 'ingrese un numero'
numero1 = gets.chomp.to_i
puts 'ingrese otro numero'
numero2 = gets.chomp.to_i

loop do
    puts 'que operacao deseja fazer?'
    puts '1. sumar'
    puts '2. restar'
    puts '3. multiplicar'
    puts '4. sair'
option = gets.chomp.to_i

if option == 1
    puts 'el resultado de la suma es'
    puts numero1 + numero2
elsif option == 2
    puts 'el resultado de la resta es'
    puts numero1 - numero2
elsif option == 3
    puts 'el resultado de la multiplicacion es'
    puts numero1 * numero2
elsif option == 4
    break
end
end