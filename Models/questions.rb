class Question

  def self.question_one
    system "clear"
    puts "Is your tree coniferous or deciduous?"
    puts "    1. My tree is coniferous."
    puts "    2. My tree is deciduous."
    puts "    3. Get help on this question."
    puts "    4. Return to Main Menu."
    @@response = gets.chomp.to_i

    if @@response == 1
      Question.question_two_conifer
    elsif @@response == 2
      Question.question_two_deciduous
    elsif @@response == 3
      MainMenuMethod.list_trees_by_characteristics
    elsif @@response == 4
      Application.main_menu
    else
      puts "Please enter a number between 1 and 4"
      self.main_menu
    end
  end



  def self.question_two_conifer

  end



  def self.question_two_deciduous

  end





end
