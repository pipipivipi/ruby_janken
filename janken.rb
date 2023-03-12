puts "最初は　グー！"
puts "ジャンケン！"

def janken
puts "数字を選択してください：[0]グー　　[1]チョキ　　[2]パー　　[3]戦わない"

players_hand = gets.to_i
program_hand = rand(3)

hands = ["グー","チョキ","パー","戦わない"]
puts "あなたの手：#{hands[players_hand]},相手の手：#{hands[program_hand]}"

if players_hand == program_hand
  puts "あいこで"
  return true
  elsif players_hand == 3
    puts "試合を終了します"
    exit
  elsif(players_hand == 0 && program_hand ==1)||(players_hand == 1 && program_hand == 2)||(players_hand == 2 && program_hand == 0)
    puts "あなたの勝ち"
    win_lose = "win"
  else
    puts "あなたの負け"
    win_lose = "lose"
  end
  
  puts "あっち向いて〜"
  puts "数字を選択してください：[0]上　　[1]右　　[2]下　　[3]左"
  
  players_direction = gets.to_i
  program_direction = rand(4)
  
  directions = ["上","右","下","左"]
  puts "あなたの方向：#{directions[players_direction]},相手の方向：#{directions[program_direction]}"
  
  if win_lose = "win" && players_direction == program_direction
    puts "あなたの勝ち！！！"
    return false
  elsif win_lose = "lose" && players_direction == program_direction
    puts "あなたの負け・・・"
    return false
  else
    return true
  end
end

next_game = true

while next_game
  next_game = janken
end
