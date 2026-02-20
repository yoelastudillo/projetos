=begin
H(3, A, C, B)
│
├── H(2, A, B, C)
│   │
│   ├── H(1, A, C, B)
│   │   └── mover A → C
│   │
│   ├── mover A → B
│   │
│   └── H(1, C, B, A)
│       └── mover C → B
│
├── mover A → C
│
└── H(2, B, C, A)
    │
    ├── H(1, B, A, C)
    │   └── mover B → A
    │
    ├── mover B → C
    │
    └── H(1, A, C, B)
        └── mover A → C

---------------------------------
# ============================================
# EXERCÍCIO 3 - TORRES DE HANOI
# ============================================
#
# Desenvolver um programa que resolva o problema
# das Torres de Hanoi.
#
# Descrição do problema:
#
# Existem três torres:
# - Torre A (origem)
# - Torre B (auxiliar)
# - Torre C (destino)
#
# Existem n discos de tamanhos diferentes empilhados
# na torre A, do maior (embaixo) para o menor (em cima).
#
# Regras:
#
# 1. Só é permitido mover um disco por vez.
# 2. Só é possível mover o disco que está no topo da torre.
# 3. Não é permitido colocar um disco maior sobre um menor.
#
# Requisitos:
#
# 1. O programa deve receber a quantidade de discos.
# 2. Deve exibir na tela cada movimento realizado.
# 3. Deve exibir o estado final das torres.
#
# Objetivo:
# Praticar recursão e compreensão de redução de problemas.
#


def hanoi(n, origen, auxiliar, destino)
  if n == 1
    puts "IF n: #{n} -  origen #{origen} - auxiliar: #{auxiliar} -  destino: #{destino}"
  else
    puts "PUTS 1 n: #{n} -  origen #{origen} - auxiliar: #{auxiliar} -  destino: #{destino}"
    hanoi(n-1, origen, destino, auxiliar)  # Paso A

    puts "PUTS 2 n: #{n} -  origen #{origen} - auxiliar: #{auxiliar} -  destino: #{destino}"
    hanoi(n-1, auxiliar, origen, destino)  # Paso C
    #puts "PUTS 2 n: #{n} -  origen #{origen} - auxiliar: #{auxiliar} -  destino: #{destino}"
  end
end

hanoi(3,"A","B","C")



hanoi(3, A, B, C)
├─ Paso A: hanoi(2, A, C, B)
│   ├─ Paso A: hanoi(1, A, B, C) → disco 1
│   └─ Paso C: hanoi(1, B, A, C) → disco 2
├─ Paso B: disco 3
└─ Paso C: hanoi(2, B, A, C)
    ├─ Paso A: hanoi(1, B, C, A) → disco 1
    └─ Paso C: hanoi(1, A, B, C) → disco 2
=end

def hanoi(n, origen, auxiliar, destino)
  if n == 1
    puts "Mover disco 1 de #{origen} a #{destino}"
  else
    hanoi(n-1, origen, destino, auxiliar)  # Paso A
    puts "Mover disco #{n} de #{origen} a #{destino}"  # Paso B
    hanoi(n-1, auxiliar, origen, destino)  # Paso C
  end
end