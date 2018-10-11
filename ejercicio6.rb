restaurant_menu = {
  "Ramen": 3000,
  "Dal Makhani": 4000,
  "Coffee": 2000
}

# Obtener el plato mas caro.
def plato_caro(hashito)
  arr_values = hashito.values
  puts arr_values.max
end
plato_caro(restaurant_menu)

# Obtener el plato mas barato.
def plato_barato(hashito)
  arr_values = hashito.values
  puts arr_values.min
end
plato_barato(restaurant_menu)
# Sacar el promedio del valor de los platos.
def plato_promedio(hashito)
  arr_values = hashito.values
  puts arr_values.inject(:+) / arr_values.length
end
plato_promedio(restaurant_menu)
# Crear un arreglo con solo los nombres de los platos.
def solo_nombres(hashito)
  hashito.keys
end
puts solo_nombres(restaurant_menu).to_s
# Crear un arreglo con solo los valores de los platos.
def solo_valores(hashito)
  hashito.values
end
puts solo_valores(restaurant_menu).to_s
# Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
def hash_con_iva(hashito)
  arr_keys = hashito.keys
  arr_values = hashito.values
  arr_iva = arr_values.map { |ele| ele * 1.19 }
  puts arr_keys.zip(arr_iva).to_h
end
hash_con_iva(restaurant_menu)

# Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
def descuento_20(hashito)
  hashito.each do |key, value|
    hashito[key] = value * 0.8 if key.to_s.include?(' ')
  end
  puts hashito
end
descuento_20(restaurant_menu)
