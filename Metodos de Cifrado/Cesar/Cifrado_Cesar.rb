def cifrado_cesar(texto, desplazamiento)
  abc = ('a'..'z').to_a + ('A'..'Z').to_a + ['Ñ', 'ñ']
  cifrado = ''

  # iteración sobre cada caracter del texto
  texto.each_char do |c|
    if abc.include?(c)
      indice = (abc.index(c) + desplazamiento) % abc.length
      cifrado += abc[indice]
    else
      cifrado += c
    end
  end
  cifrado
end

# Bucle principal del programa
loop do
  print 'Ingrese el texto a cifrar: '
  texto = gets.chomp

  # Se solicita al usuario el desplazamiento
  print 'Ingrese el desplazamiento: '
  desplazamiento = gets.chomp.to_i

  unless (1..26).cover?(desplazamiento)
    puts 'El desplazamiento debe estar entre 1 y 26'
    next
  end

  texto_cifrado = cifrado_cesar(texto, desplazamiento)

  puts "Texto cifrado: #{texto_cifrado}"
  print '¿Desea cifrar otro texto? (s/n): '
  continuar = gets.chomp.downcase

  break unless continuar == 's'
  system('clear') || system('cls')
end
