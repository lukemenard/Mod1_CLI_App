require "pry"
require_relative "./main_menu_methods"
require_relative "./question_1"

class Application

  @@user = nil

  def self.get_username
    puts "Hello! Welcome to the Colorado Tree ID App! What's your name?"
    @@user = gets.chomp
  end
  Application.get_username

  def self.main_menu
    puts "Hello #{@@user}! What would you like to do today?"
    puts "    1. Identify a tree."
    puts "    2. See a list of all available trees."
    puts "    3. See a list of all available trees by characteristic."
    puts "    4. Learn how to use this app."
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
  Application.main_menu



end
