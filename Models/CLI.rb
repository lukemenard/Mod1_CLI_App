require "pry"
require_relative "./help"
require_relative "./questions.rb"
require_relative "../config/environment.rb"

class Application

# ____________TITLE_PAGE___________________________

  @@user = nil
  @@type = nil
  @@needles = nil

  def self.get_username
    system "clear"
    puts "Hello! Welcome to the Colorado Tree ID App!".white.on_green
    puts "What's your name?".white.on_green
    # @@user = gets.chomp
  end
  self.get_username


# ____________MAIN_MENU___________________________

  def self.main_menu
    system "clear"
    puts "Hello, #{@@user}! What would you like to do?"
    puts "    1. Identify a tree."
    puts "    2. See a list of all available trees."
    puts "    3. See a list of all available trees by characteristic."
    puts "    4. Learn how to use this app."
    # @@response = gets.chomp.to_i

    # case @@response
    when 1
      Question.question_one
    when 2
      Help.list_all_trees
    when 3
      Help.list_trees_by_characteristics
    when 4
      Help.main_menu_help
    else
      puts "Please enter a number between 1 and 4"
      # self.main_menu
    end
  end
  self.main_menu


# ____________Question_1___________________________

  def self.question_one
    # case @@response
    when 1
      @@type = "coniferous"
      Question.question_two_conifer
    when 2
      @@type = "deciduous"
      Question.question_two_deciduous
    when 3
      MainMenuMethod.list_trees_by_characteristics
    when 4
      Application.main_menu
    else
      puts "Please enter a number between 1 and 4"
      self.question_one
    end
  end
  Application.question_one


  # ____________Question_2___________________________

  def self.question_two_conifer
    case @@response
    when 1
      @@needles = "Clusters of 2-3"
      Question.question_three_conifer
    when 2
      @@needles = "Clusters of 5"
      Question.question_three_conifer
    when 3
      @@needles = "Flat"
      Question.question_three_conifer
    when 4
      @@needles = "Sharp"
      Question.question_three_conifer
    when 5
      @@needles = "Scaled"
      Question.question_three_conifer
    when 6
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 6"
      self.question_two_conifer
    end
  end
  Application.question_two_conifer



# ____________Question_3_Conifer___________________________

  def self.question_three_conifer
    case @@response
    when 1
      @@cones = "Woody"
      Question.question_four_conifer
    when 2
      @@cones = "Papery"
      Question.question_four_conifer
    when 3
      @@cones = "Berry"
      Question.question_four_conifer
    when 4
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 4"
      self.question_three_conifer
    end
  end
  Application.question_three_conifer

  # ____________Question_4_Conifer___________________________

    def self.question_four_conifer
      case @@response
      when 1
        @@bark_texture = "Smooth"
        Question.question_five_conifer
      when 2
        @@bark_texture = "Bumpy"
        Question.question_five_conifer
      when 3
        @@bark_texture = "Furrowed"
        Question.question_five_conifer
      when 4
        @@bark_texture = "Scaled"
        Question.question_five_conifer
      when 5
        @@bark_texture = "Peeling"
        Question.question_five_conifer
      when 6
        Help.list_all_trees
      else
        puts "Please enter a number between 1 and 6"
        self.question_four_conifer
      end
    end
    Application.question_four_conifer


    # ____________Question_5_Conifer___________________________

      def self.question_five_conifer
        case @@response
        when 1
          @@bark_color = "brown"
          Question.question_five_conifer
        when 2
          @@bark_color = "gray-brown"
          Question.question_five_conifer
        when 3
          @@bark_color = "gray"
          Question.question_five_conifer
        when 4
          @@bark_color = "red-brown"
          Question.question_five_conifer
        when 5
          Help.list_all_trees
        else
          puts "Please enter a number between 1 and 5"
          self.question_five_conifer
        end
      end
      Application.question_five_conifer


end
