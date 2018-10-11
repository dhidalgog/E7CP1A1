meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

=begin
Generar un hash que contenga los meses como llave y las ventas como valor:
h = {'Enero': 2000, 'Febrero': 3000 ... }
=end

arrays = meses.zip(ventas)
puts arrays.to_s

hash = arrays.to_h
puts hash

# Invertir diccionario, se puede usar h.invert pero si hay valores iguales, se eliminarán dejando solo 1.
aux_hash = {}
hash.each do |key, value|
  aux_hash[value] = key
end
puts aux_hash

# Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
def mayor_venta(hashito)
  aux = 0
  hashito.each_value do |value|
    aux = value if aux < value
  end
  puts aux
end

mayor_venta(hash)
