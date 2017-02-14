class Player

attr_accessor :name
attr_accessor :score
attr_accessor :lives


  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def correct_answer
    @score += 1
  end

  def lose_life
    @lives -= 1
  end
end



