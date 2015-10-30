require "./fraccionarios.rb"

a=Fraccionarios.new(5,20)
b=Fraccionarios.new(12,18)

puts "Fracciones sin simplificar"
puts a.string
puts b.string
puts "Fracciones simplificadas"
a.simp
b.simp
puts a.string
puts b.string
puts "Suma"
puts a.sum(b).string
puts "Resta"
puts a.res(b).string
puts "Multiplicación"
puts a.mul(b).string
puts "División"
puts a.div(b).string