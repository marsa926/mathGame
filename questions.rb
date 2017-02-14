class Question

  def initialize
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @answer = @first_num + @second_num
  end

  def to_string
    "what is #{@first_num} plus #{@second_num}?"
  end

  def correct_answer?(input)
    if input.to_i == @answer
      return true
    else
      return false
    end
  end
end

