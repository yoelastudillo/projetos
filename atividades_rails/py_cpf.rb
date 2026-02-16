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

