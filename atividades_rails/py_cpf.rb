=begin
# ============================================
# EXERCÍCIO 1 - VALIDAÇÃO DE CPF
# ============================================
#
# Desenvolver um programa que valide um CPF brasileiro.
#
# Requisitos:
#
# 1. O programa deve receber um CPF como string.
# 2. Deve ignorar pontos e traços, caso estejam presentes.
# 3. Deve verificar se o CPF possui exatamente 11 dígitos.
# 4. Deve calcular os dois dígitos verificadores conforme o algoritmo oficial:
#
#    - O primeiro dígito verificador é calculado multiplicando
#      os 9 primeiros números por pesos decrescentes de 10 até 2.
#      Em seguida, aplicar a regra do módulo 11.
#
#    - O segundo dígito verificador é calculado multiplicando
#      os 10 primeiros números por pesos decrescentes de 11 até 2.
#      Em seguida, aplicar novamente a regra do módulo 11.
#
# 5. O programa deve informar se o CPF é válido ou inválido.
#
# Extra:
# - Não permitir CPFs com todos os números iguais (ex: 11111111111).
#
# Objetivo:
# Praticar manipulação de strings, arrays, loops e lógica matemática.
#
=end

# 1. O programa deve receber um CPF como string.
def IngreseCpf()
    loop do
    puts 'ingrese el cpf de 11 caracteres'
    cpf = gets.chomp.to_str
    cpf = LimpezaCpf(cpf)
    if cpf.length == 11
        puts "CPF de 11 digitos"
        ver1, ver2 = Verificador(cpf)
        if ver1 == cpf[9].to_i && ver2 == cpf[10].to_i
            puts "los verificadores #{ver1} y #{ver2} coinciden con los del cpf: #{cpf}"
        else
            puts "Os digitos verificadores #{ver1} y #{ver2} nao coinciden con los del cpf: #{cpf}"
        end
    else
        puts 'CPF nao tem 11 digitos'
    end
end
end

# 2. Deve ignorar pontos e traços, caso estejam presentes.
# 3. Deve verificar se o CPF possui exatamente 11 dígitos.
def LimpezaCpf(cpf)
    cpf = cpf.gsub(/\D/, "")
    return cpf
end

# 4. Deve calcular os dois dígitos verificadores conforme o algoritmo oficial:
#cpfok[0..8].chars.each_with_index do |digito, i|
#  soma1 += digito.to_i * (10 - i)
def Verificador(cpfok)
    soma1 = 0
    9.times { |i| soma1+= cpfok[i].to_i * (10-i)}
    verificador1 = NumeroVerificado(soma1)

    soma2 = 0
    10.times  { |i| soma2+= cpfok[i].to_i * (11-i)}
    verificador2 = NumeroVerificado(soma2)

    return verificador1, verificador2
end

#funcion resto
def NumeroVerificado(soma)
    resto = soma % 11
    resto < 2 ? verif = 0 : verif = 11 - resto
    return verif
end

IngreseCpf()
