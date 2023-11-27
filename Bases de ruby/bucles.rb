for contador in 1..5
  puts "Hola Mundo #{contador}"

end

loop do
  puts "Hola Mundo"
  break
end

5.times do
  puts "Hola Mundooooooo"
end

5.times do |contador|
  puts "Hola Mundo #{contador}"
end

(1..5).each do |contador|
  puts "Hola Mundo #{contador}"
end

(1..5).each { |contador| puts "Hola Mundo #{contador}" }

i = 0
loop do
  puts "Numero #{i} en el loop"
  break if i == 10
  i += 1
end
