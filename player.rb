class Player

  attr_accessor :hp, :name

  def initialize(name)
    @hp = 3
    @name = name
  end

  def ask_question(question)
    puts "What does #{question[0]} plus #{question[1]} equal?"
  end

  def lose_life
    @hp -= 1
  end

  def game_over?
    if @hp == 0
      return true
    else
      return false
    end
  end

end