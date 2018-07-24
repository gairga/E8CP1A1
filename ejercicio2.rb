def lines_count()
	lines = []
	File.open('peliculas.txt','r') { |file| lines = file.readlines }
	puts "La cantidad de lineas del archivo es: #{lines.count} "
end

puts lines_count()


