productos = {
  bebida: 850,
  chocolate: 1200,
  galletas: 900,
  leche: 750
}

# Mostrar todos los productos
productos.each_key { |key| puts key }

# Agregar un producto cereal
productos[:cereal] = 2200
puts productos

# Actualizar el valor de bebida
productos[:bebida] = 2000

# Hash to Array
arr_productos = productos.to_a
puts arr_productos.to_s

# Borrar galletas
productos.delete(:galletas)
puts productos
