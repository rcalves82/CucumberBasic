
puts 'Bem vindo a Calculadora'

puts 'Informe o valor 1'
v1 = STDIN.gets.to_i

puts 'Informa o valor 2'
v2 = STDIN.gets.to_i

puts 'Informe o Operador'
operador = gets.chomp

resultado = nil

case operador
when '/'
    resultado = v1 / v2
when '*'
    resultado = v1 * v2
when '+'
    resultado = v1 + v2
when '-'
    resultado = v1 - v2
else 
    puts 'Operador invalido'
end

if resultado != nil
    puts 'O resultado é:'
    puts resultado
end

puts 'O resultado é:'
puts resultado