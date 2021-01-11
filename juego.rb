def opcion()
    choice = 0
    puts "\n\t1.Piedra
        2.Papel
        3.Tijeras
        4.Exit\n"
end

def jugador_one(n)
    choice_p1 = 'error' if n != 1 || n != 2 || n != 3 || n != 4
    choice_p1 = 'piedra' if n == 1
    choice_p1 = 'papel' if n == 2
    choice_p1 = 'tijeras' if n == 3
    choice_p1 = 'salir' if n == 4
    return choice_p1
end

def jugador_two(n)
    choice_p2 = 'error' if n != 1 || n != 2 || n != 3 || n != 4
    choice_p2 = 'piedra' if n == 1
    choice_p2 = 'papel' if n == 2
    choice_p2 = 'tijeras' if n == 3
    choice_p2 = 'salir' if n == 4
    return choice_p2
end

puts "Turno del 'Jugador uno!!' \nElije una opcion"
opcion()
player_1 = gets.chomp.to_i

if jugador_one(player_1) == 'piedra'||jugador_one(player_1) == 'papel'||jugador_one(player_1) == 'tijeras'
    print "Eleccion del jugador uno: \n"
    puts jugador_one(player_1).capitalize!
elsif jugador_one(player_1) == 'salir'
    exit()
else
    while jugador_one(player_1) == 'error' do 
        puts"Opcion invalida!! \nElije una opcion del 1 al 4"
        player_1 = gets.chomp.to_i
        print "Eleccion del jugador uno: \n"
        puts jugador_one(player_1).capitalize!   
    end
end

puts "Turno del 'Jugador uno!!' \nElije una opcion"
opcion()
player_2 = gets.chomp.to_i

if jugador_two(player_2) == 'piedra'||jugador_two(player_2) == 'papel'||jugador_two(player_2) == 'tijeras'
    print "Eleccion del jugador uno: \n"
    puts jugador_two(player_2).capitalize!
elsif jugador_two(player_2) == 'salir'
    exit()
else
    while jugador_two(player_2) == 'error' do 
        puts"Opcion invalida!! \nElije una opcion del 1 al 4"
        player_2 = gets.chomp.to_i
        print "Eleccion del jugador uno: \n"
        puts jugador_two(player_2).capitalize!   
    end
end

puts "\nEl resultado es...     !!!\n"
puts 'Piedra le gana a Tijeras' if jugador_one(player_1) == 'tijeras' && jugador_two(player_2) == 'piedra' 
puts 'Piedra le gana a Tijeras' if jugador_one(player_1) == 'piedra' && jugador_two(player_2) == 'tijeras'
puts 'Tijeras le gana a Papel' if jugador_one(player_1) == 'tijeras' && jugador_two(player_2) == 'papel' 
puts 'Tijeras le gana a Papel' if jugador_one(player_1) == 'papel' && jugador_two(player_2) == 'tijeras'
puts 'Papel le gana a Piedra' if jugador_one(player_1) == 'piedra' && jugador_two(player_2) == 'papel' 
puts 'Papel le gana a Piedra' if jugador_one(player_1) == 'papel' && jugador_two(player_2) == 'piedra'
puts 'Empataron!!' if jugador_one(player_1) == jugador_two(player_2)