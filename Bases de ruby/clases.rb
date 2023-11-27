class Persona

  # Constructor
  def initialize(nombre, edad, ciudad)
    @nombre = nombre
    @edad = edad
    @ciudad = ciudad
  end

  def info()
    puts "Mi nombre es #{@nombre}, tengo #{@edad} años y vivo en #{@ciudad}"
  end

end

# Instanciar
persona1 = Persona.new("Camilo", 22, "Osorno")

# Llamar a un método
persona1.info()
