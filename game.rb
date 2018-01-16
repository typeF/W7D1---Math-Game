class Game

  attr_accessor :won, :winner, :current_player

  def initialize(players)
    @players = players
    @won = false
    @loser = nil
    @current_player = @players[0]
    @current_player_index = 0
    puts "2-Player Math Game"
  end

  def switch_to_next_player
    @current_player_index = (@current_player_index + 1) % @players.length
    @current_player = @players[@current_player_index]
  end

  def play
    while @won == false
      puts "----- NEW TURN -----"
      question = Questions.new
      puts question.make_question(@current_player)

      response = gets.chomp

      if question.check_answer(response) == true
        puts "YES! You are correct."
      else
        puts "Seriously? No!"
        @current_player.lose_life
      end
      
      if @current_player.game_over?
        @won = true
        @loser = @current_player
        puts "---------------------"
      end

      self.switch_to_next_player
    end  

    puts "#{@loser.name} has no more life points."
    puts "#{@current_player.name} wins!"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    
  end

end