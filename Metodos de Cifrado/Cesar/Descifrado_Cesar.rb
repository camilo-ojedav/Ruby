def descifrado_cesar(texto, desplazamiento)
  abc = ('a'..'n').to_a + ['ñ'] ('o'..'z').to_a + ('A'..'N').to_a + ['Ñ'] + ('O'..'Z').to_a
  descifrado = ''

  # iteración sobre cada caracter del texto
  texto.each_char do |c|
    if abc.include?(c)
      indice = (abc.index(c) - desplazamiento) % abc.length
      descifrado += abc[indice]
    else
      descifrado += c
    end
  end
  descifrado
end

def main()
  print 'Ingrese el texto a descifrar: '
  texto = gets.chomp

  (1...54).each do |desplazamiento|
    texto_descifrado = descifrado_cesar(texto, desplazamiento)
    puts "Descifrado ##{desplazamiento}: #{texto_descifrado}"
  end
end

main()
