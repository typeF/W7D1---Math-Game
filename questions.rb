class Questions
  
  def make_question(player)
    @a = rand(20)
    @b = rand(20)
    return "#{player.name}: What does #{@a} plus #{@b} equal?"
  end

  def answer
    @a + @b
  end

  def check_answer(response)
    if response.to_i == self.answer
      return true
    else
      return false
    end
  end
  
end