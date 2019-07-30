class Question


# ____________Question_1___________________________

  def self.question_one
    system "clear"

    puts "Conifers are trees with cones and needle-like or scale-like leaves that are typically evergreen (retain their leaves throughout the year)."
    puts "Pines and firs are conifers, for example."
    puts "Deciduous trees lose their leaves annually."
    puts "Maples and oaks are deciduous trees."
    puts "Is your tree coniferous or deciduous?"
    puts "    1. My tree is coniferous."
    puts "    2. My tree is deciduous."
    puts "    3. Get help on this question."
    puts "    4. Return to Main Menu."
    @@response = gets.chomp.to_i
  end

# ____________Question_2_Conifer___________________________

  def self.question_two_conifer
    system "clear"
    puts "Your tree is a conifer! There are XX available conifers."
    puts "The way a conifer's needles are arranged can help you identify the species."
    puts "A conifer can have individual or clustered needles, called fasciles."
    puts "Needles can also be flat or sharp."
    puts "What needle arrangement does your tree have?"
    puts "    1. Needles are in clusters of 2-3."
    puts "    2. Needles are in clusters of 5."
    puts "    3. Needles are flat."
    puts "    4. Needles are sharp."
    puts "    5. Needles are scaled."
    puts "    6. See a list of x remaining trees."
    @@response = gets.chomp.to_i
  end

# ____________Question_3_Conifer___________________________

def self.question_three_conifer
  system "clear"
  puts "Your tree is a conifer! There are XX available conifers."
  puts "The way a conifer's needles are arranged can help you identify the species."
  puts "A conifer can have individual or clustered needles, called fasciles."
  puts "Needles can also be flat or sharp."
  puts "What needle arrangement does your tree have?"
  puts "    1. Needles are in clusters of 2-3."
  puts "    2. Needles are in clusters of 5."
  puts "    3. Needles are flat."
  puts "    4. Needles are sharp."
  puts "    5. Needles are scaled."
  puts "    6. See a list of x remaining trees."
  @@response = gets.chomp.to_i
end















# ____________Question_2_Deciduous___________________________

  def self.question_two_deciduous
    puts "Your tree is deciduous! There XX available deciduous trees."
    puts "The way a tree's leaves are arranged can help you identify the species."
  end


end
