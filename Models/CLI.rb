
class Application

  def self.main_menu
    puts "Hello! Welcome to the Colorado Tree ID App! What's your name?"
    @@user = gets.chomp
    puts "Hello #{@@user}! "
    @@response = gets.chomp
  end

  self.main_menu

end
