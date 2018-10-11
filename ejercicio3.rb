h = {
  x: 1,
  y: 2
}

# Agregar z con valor 3
h[:z] = 3
puts h
# Cambiar valor de x por 5
h[:x] = 5
puts h
# Eliminar la clave y
h.delete(:y)
puts h
# Si el hash contiene z mostrar "Yeeah"
puts 'Yeeah' if h.key?(:z)

# Agregando más valores
h[:a] = 4
h[:b] = 7
h[:c] = 9
puts h
# Invertir diccionario, se puede usar h.invert pero si hay valores iguales, se eliminarán dejando solo 1.

aux_hash = {}
h.each do |key, value|
  aux_hash[value] = key
end
puts aux_hash
