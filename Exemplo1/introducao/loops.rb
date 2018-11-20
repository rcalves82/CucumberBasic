
# Loop para imprimir meu nome 5 vezes
#timer = 1

# Aspas duplas, somente quando usar interpolacao de variaveis

# 5.times do
#     #puts 'rodada numero ' + timer.to_s
#     puts "rodada numero #{timer}"
#     timer += 1
# end

# Loops com Arrays

vingadores = ['Iron Man', 'Hulk', 'Spiderman','Thor']

#for

#timer = 1
# for item in(0...vingadores.size)
#     puts vingadores[item]
# end

# for each
# vingadores.each do |v|
#     puts v
# end

posicao = 0
vingadores.size.times do
    puts vingadores[posicao]
    posicao += 1
end