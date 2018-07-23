file = File.open('test.text','r')
#print file.read.split("\n").length # Lee todo el archivo
data = file.readlines ## Cuando sabemos que debemos separar por linea
file.close

text.each_line do |line|
  print "#{line_num += 1} #{line}"
end