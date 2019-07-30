require "pry"
require_relative "./help"
require_relative "./questions.rb"
require_relative "../config/environment.rb"

class Application

# ____________TITLE_PAGE___________________________

  @@user = nil

  def self.get_username
    system "clear"
    puts "Hello! Welcome to the Colorado Tree ID App! What's your name?".white.on_green
    @@user = gets.chomp
  end
  self.get_username

  system "clear"


# ____________MAIN_MENU___________________________

  def self.main_menu
    puts "Hello, #{@@user}! What would you like to do today?"
    puts "    1. Identify a tree."
    puts "    2. See a list of all available trees."
    puts "    3. See a list of all available trees by characteristic."
    puts "    4. Learn how to use this app."
    @@response = gets.chomp.to_i

    if @@response == 1
      Question.question_one
    elsif @@response == 2
      Help.list_all_trees
    elsif @@response == 3
      Help.list_trees_by_characteristics
    elsif @@response == 4
      Help.main_menu_help
    else
      puts "Please choose a correct choice: 1 - 4"
      # self.main_menu
    end
  end
  self.main_menu

end
