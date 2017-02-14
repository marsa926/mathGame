require "./player"
require "./questions"

def switch_player(current_player, player1, player2)
  if current_player == player1.name
     new_player = player2
  else
    new_player = player1
  end
  new_player
end

def start_game
player1 = Player.new "Max"
player2 = Player.new "Sara"
  current_player = player1
  while player1.lives > 0 && player2.lives > 0 do
    question = Question.new()
    puts current_player.name + ", " + question.to_string
    print "> "
    answer = $stdin.gets.chomp
    if question.correct_answer?(answer) == true
      current_player.correct_answer
      puts current_player.name + " " + "Score: " + "#{current_player.score}"
    else
      current_player.lose_life
      puts "<-></->> " + current_player.name + ", you r dum"
      puts player1.name + " Life: #{player1.lives}" + " vs " + player2.name + " Life: #{player2.lives}"
    end
      current_player = switch_player(current_player.name, player1, player2)
  end
    return puts "GAME OVER! - Winner is #{current_player.name}"
end

start_game
