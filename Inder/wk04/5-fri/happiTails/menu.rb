

class Menu

    attr_reader:length_quit

      def initialize(*menu_args)
        @menu_args = menu_args
        @length_quit = @menu_args.length
      end


      def get_menu_choice
        # puts "\e[2J"
          @menu_args.each_with_index do |item, index|
          puts "#{index + 1}. #{item}"
          end
        print "Enter Shelter Menu Item Number: "
        user_choice = gets.to_i
      return user_choice
      end
end

menu=Menu.new("Display Animals", "Display Clients", "Create Animal", "Create Client", "Adopt Animal", "Give for Adoption", "Quit")

  while ((choice = menu.get_menu_choice) != menu.length_quit)

      case choice 
        when 1
          puts "Display Animal function"
          dispAnimal()
        when 2
          puts "Display Client function"
          dispClient()
        when 3
          puts "Create Animal function"
        when 4
          puts "Create Client function"
        when 5 
          puts "Adopt function"
        when 6 
          puts "Give function"
       end
  end
       
      

  
    
  

 