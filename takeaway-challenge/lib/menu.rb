class Menu
  attr_reader :dishes
  def initialize
    @dishes = []
  end

  def add_dish(item)
    @dishes << item
  end

  def print_menu
    puts @dishes
    menu_string = @dishes.each_with_index.map do |dish, index|
      "#{index + 1}. #{dish.item} £#{dish.price}"
    end
    menu_string
  end
end