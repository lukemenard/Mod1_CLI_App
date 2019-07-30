class Question1

  def self.question_one
    system "clear"
    puts "Is your tree coniferous or deciduous?"
    puts "    1. My tree is coniferous."
    puts "    2. My tree is deciduous."
    puts "    3. Get help on this question."
    puts "    4. Return to Main Menu."
    @@response = gets.chomp.to_i

    if @@response == 1
      Question1.question_one
    elsif @@response == 2
      MainMenuMethod.list_all_trees
    elsif @@response == 3
      MainMenuMethod.list_trees_by_characteristics
    elsif @@response == 4
      MainMenuMethod.main_menu_help
    else
      puts "Please choose a correct choice: 1 - 4"
      self.main_menu
    end


  end

end
