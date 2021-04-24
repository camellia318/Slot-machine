def run_slots!
  slotNumberList = %w[ 1 2 3 4 5 6 7 8 9 ]

  puts "スロットの数字を揃えましょう。お金がなくなるまでプレイできます。"
  puts "合計いくらかけますか？ "
  cash = gets.chomp.to_i
  loop do
    puts "手持ち金額:  #{cash}円"
    puts "いくらかけますか？ "
    bet = gets.chomp.to_i

    cash -= bet
    
    #sample 配列から無作為に要素を選択して返す
    slotNumber1 = slotNumberList.sample 
    slotNumber2 = slotNumberList.sample
    slotNumber3 = slotNumberList.sample
    slotNumber4 = slotNumberList.sample
    slotNumber5 = slotNumberList.sample
    slotNumber6 = slotNumberList.sample
    slotNumber7 = slotNumberList.sample
    slotNumber8 = slotNumberList.sample
    slotNumber9 = slotNumberList.sample
    
    puts "エンターを3回押して数字を揃えよう！" 
    puts = gets
    puts "-------------"
    puts "#{slotNumber1}| | |"
    puts "#{slotNumber2}| | |"
    puts "#{slotNumber3}| | |"
    puts "-------------"
    
    puts = gets
    puts "-------------"
    puts "#{slotNumber1}|#{slotNumber4}| |"
    puts "#{slotNumber2}|#{slotNumber5}| |"
    puts "#{slotNumber3}|#{slotNumber6}| |"
    puts "-------------"
    
    puts = gets
    puts "-------------"
    puts "#{slotNumber1}|#{slotNumber4}|#{slotNumber7}|"
    puts "#{slotNumber2}|#{slotNumber5}|#{slotNumber8}|"
    puts "#{slotNumber3}|#{slotNumber6}|#{slotNumber9}|"
    puts "-------------"
    
    
    if (slotNumber2 == 7) && (slotNumber5 == 7)  && (slotNumber5 == 7)
      puts "-------------"
      puts "真ん中に7の数字が揃いました！"
      puts "100円獲得！"
      puts "-------------" 
      winnings = 100
      cash += winnings
    
    elsif (slotNumber2 == slotNumber5) && (slotNumber5 == slotNumber8) 
      puts "-------------"
      puts "おめでとう！真ん中が同じ数字になりました！"
      puts "50円獲得！"
      puts "-------------"
      winnings = 50
      cash += winnings
      
    elsif (slotNumber1 == slotNumber4) || (slotNumber4 == slotNumber7)
      puts "-------------"
      puts "ラッキー！"
      puts "10円獲得！"
      puts "-------------"
      winnings = 10
      cash += winnings
      
    elsif 
      cash <= 0
      puts "残念。コインが足りません。ゲームオーバー"
      break
      
    else
      puts "残念！もう一回挑戦しよう！"
    end  
    
    puts "ゲームを続けますか? (続ける場合はyesと入力/ yes以外が入力された場合ゲームが終了します。) "
    unless gets.chomp=="yes"
      puts "手持ち#{cash}円ありますが終了します。"
      break
    end
  end
end

run_slots! 
