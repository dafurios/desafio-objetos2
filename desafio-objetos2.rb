class Carta
  attr_reader :pinta, :numero
  def initialize(pinta, numero)
    @pinta = pinta
    @numero = numero
  end
end

  def jugar
    mano = []
    pinta = ['corazon', 'pica', 'trebol', 'diamante']
    numero = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
    5.times do
      mano.push(Carta.new(pinta.sample, numero.sample))
    end
    mano
  end

  def menu
    puts
    puts "Escriba una Opcion"
    puts "1) 'Jugar'"
    puts "2) 'Mostrar'"
    puts "3) 'Salir'"
    puts
  end

  menu

  while  opcion = gets.chomp.downcase
    case opcion
    when 'jugar'
      puts '*******************************'
      puts '.... Ahora escribe "Mostrar"'
      arreglo_cartas = jugar
      menu

    when 'mostrar'
      if arreglo_cartas.nil?
        puts '*******************************'
        puts '..... Antes debes escribir "Jugar"'
      else
        puts "La mano de cartas es:"
          arreglo_cartas.each do |revelar|
          puts "....#{revelar.pinta} #{revelar.numero}"
        end
        menu
      end
    when 'salir'
      puts '*******************************'
      puts 'Fin del Juego'
      puts '*******************************'
      puts 'GAME OVER'
      puts puts
      break
    else
      puts '*******************************'
      puts 'Opcion Invalida'
      puts
      puts 'Escriba la Opcion Correctamente'
      puts '*******************************'
      menu
  end
end
