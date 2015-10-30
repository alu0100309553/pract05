require "./fraccionarios.rb"

a=Fraccionarios.new(5,20)
b=Fraccionarios.new(12,18)

puts "Fracciones sin simplificar"
puts a.to_s
puts b.to_s
puts "Fracciones simplificadas"
a.simp
b.simp
puts a.to_s
puts b.to_s
puts "Suma"
puts (a+b).to_s
puts "Resta"
puts (a-b).to_s
puts "Multiplicación"
puts (a*b).to_s
puts "División"
puts (a/b).to_s