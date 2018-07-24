file = File.open('productos.txt','r')
#print file.read.split("\n").length # Lee todo el archivo
data = file.readlines ## Cuando sabemos que debemos separar por linea
data = data.map{ | element | element.split(',').map(&:strip) } #Quitamos las comas y puntos

################# Metodos ##############

def cantidad_stock(data)
	puts '* Introduza el nombre del Producto'
    nombre = gets.chomp.strip
   	suma = 0
   	data.each do |element|
		if element[0] == nombre
			print "El elemento seleccionado: #{element}"
			suma = element.inject(0) {|product, n| product.to_i + n.to_i } 
		end
	end

	puts suma
end

def product_no_resgistrado(data)
	data.each do | element |
		element.inject(0) { |sum, ary| sum + count_subarrays(ary) }
	end
end

puts 'Presione **Enter** para comenzar! :) '

option = gets.chomp

while option != '6'
	
	option = gets.chomp
	puts '****** Opción 1: Permite conocer la cantidad de productos existentes.'
	puts '****** Opción 2: Permite que el usuario ingrese el nombre de un producto y el programa responderá con la cantidad de stock total (suma en las bodegas) de ese producto.'
	puts '****** Opción 3: Muestra los productos no registrados en cada bodega'
	puts '****** Opción 4: Permite conocer los productos con una existencia total menor a un valor ingresado por el usuario'
	puts '****** Opción 5: Permite registrar un nuevo producto'
	puts '****** Opción 6: Salir del Sistema'
	

	puts case  option
		when '1' 
			productos_existentes(data)
		when '2' 
			cantidad_stock(data)
		when '3'
			#cant_absences(data)
		when '4' 
			#cant_absences(data)
		when '5' 
			#cant_absences(data)
		when '6' 
			
		else
			'Ingresa un número del 1 al 6'
	end
end