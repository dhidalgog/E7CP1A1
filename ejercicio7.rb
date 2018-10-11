inventario = {
  "Notebooks": 4,
  "PC Escritorio": 6,
  "Routers": 10,
  "Impresoras": 6
}

# Métodos
def mostrar_menu
  puts '  --------------------------------------------------------'
  puts ' |                        MENU                            |'
  puts '  --------------------------------------------------------'
  puts ' |Opción 1 - Agregar Item                                 |'
  puts ' |Opción 2 - Eliminar Item                                |'
  puts ' |Opción 3 - Modificar Item                               |'
  puts ' |Opción 4 - Ver Stock Total                              |'
  puts ' |Opción 5 - Ver Item con mayor stock                     |'
  puts ' |Opción 6 - Consultar si el Item existe en el inventario |'
  puts ' |Opción 7 - Salir                                        |'
  puts "  --------------------------------------------------------\n"
end

def validar_opcion(opcion)
  while opcion < 1 || opcion > 7
    system('clear')
    puts "\nLa opción ingresada no es válida"
    puts "Ingrese una opcion entre 1 y 7\n\n"
    mostrar_menu
    opcion = gets.chomp.to_i
  end
  opcion
end

def agregar_item(user_input, hashito)
  array = user_input.partition(', ')
  array.delete_at(1)
  hashito[array[0].to_sym] = array[1].to_i
  puts hashito
  hashito
end

def eliminar_item(user_input, hashito)
  if hashito.key?(user_input.to_sym)
    hashito.delete(user_input.to_sym)
    puts "--- Producto eliminado correctamente ---\n\n"
  else
    puts '--- Producto no encontrado ---'
  end
  puts "Inventario Actualizado"
  puts hashito
  hashito
end

def modificar_item(user_input, hashito)
  if hashito.key?(user_input.to_sym)
    puts 'Ingrese nuevo nombre del item'
    key = gets.chomp.to_sym
    puts 'Ingrese nuevo stock'
    value = gets.chomp.to_i
    hashito.delete(user_input.to_sym)
    hashito[key] = value
    puts "--- Producto modificado correctamente ---\n\n"
  else
    puts '--- Producto no encontrado ---'
  end
  puts hashito
  hashito
end

def stock_total(hashito)
  stock_total = hashito.inject(0) { |suma, (_, value)| suma + value }
  puts "--- El stock total de productos es igual a: #{stock_total} ---"
end

def stock_max(hashito)
  arr_values = hashito.values
  hashito.each do |key, value|
    puts "Producto con mayor stock: [#{key}: #{value}]" if value == arr_values.max
  end
end

def existe_item(user_input, hashito)
  if hashito.key?(user_input.to_sym)
    puts hashito
    puts "--- El producto existe en el inventario ---\n\n"
  else
    puts '--- Producto no encontrado ---'
  end
end

# Ejecucion
system('clear')
puts "\nBienvenido"
puts "Ingrese una opción\n\n"
mostrar_menu
opcion = gets.chomp.to_i

# Validar opcion
opcion = validar_opcion(opcion)

# Menu iterativo
while opcion != 7
  system('clear')
  case opcion
  when 1
    puts ' Opción 1 - Agregar Item'
    puts "\nIngrese el producto y su stock respectivo"
    puts 'Ejemplo formato: Pendrive, 10'
    # Falta validar input
    producto = gets.chomp
    agregar_item(producto, inventario)
    puts "---Producto agregado correctamente---\n\n"
  when 2
    puts " Opción 2 - Eliminar Item\n\n"
    puts 'Inventario'
    puts inventario
    puts "\nIngrese el producto que desea eliminar"
    producto = gets.chomp
    eliminar_item(producto, inventario)
  when 3
    puts " Opción 3 - Modificar Item\n\n"
    puts 'Inventario'
    puts inventario
    puts "\nIngrese el producto que desea modificar"
    producto = gets.chomp
    modificar_item(producto, inventario)
  when 4
    puts " Opción 4 - Ver Stock Total\n\n"
    puts 'Inventario'
    puts inventario
    stock_total(inventario)
  when 5
    puts " Opción 5 - Ver Item con mayor stock\n\n"
    puts 'Inventario'
    puts inventario
    stock_max(inventario)
  when 6
    puts " Opción 6 - Consultar si el Item existe en el inventario\n\n"
    puts "\nIngrese el producto que desea buscar"
    producto = gets.chomp
    puts 'Inventario'
    puts inventario
    existe_item(producto, inventario)
  end
  mostrar_menu
  opcion = gets.chomp.to_i
  opcion = validar_opcion(opcion)
end

system('clear')
puts 'cya'
