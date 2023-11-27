print "Hola Mundo"
puts "Hola Mundo"


contador = 0

while contador < 10
  puts "Hola Mundo #{contador}"
  contador += 1
end

print "Por favor, introduce tu edad: "
edad = gets.chomp.to_i

puts "Tu edad es #{edad}"

if edad >= 18
  puts "Eres mayor de edad"
elsif edad < 18
  puts "Eres menor de edad"
end

unless edad >= 18
  puts "Eres menor de edad"
else
  puts "Eres mayor de edad"

end
