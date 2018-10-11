personas = ['Carolina', 'Alejandro', 'Maria Jesús', 'Valentín']
edades = [32, 28, 41, 19]

# Generar el siguiente hash: personas_hash = {'Carolina': 32, 'Alejandro':28, 'María Jesús':41, 'Valentín':19}

array = personas.zip(edades)
puts array.to_s
hash = array.to_h
puts hash

# Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento.

def promedio(hashito)
  sumatoria = hashito.inject(0) { |suma, (_, value)| suma + value }
  sumatoria / hashito.length
end

puts promedio(hash)
