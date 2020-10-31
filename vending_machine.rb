class VendingMachine
  def initialize(drinks)
    @drinks = drinks
  end

  def drinks
    @drinks
  end

  def show_drinks
    puts "-----------------------------------------------"
    puts "いらっしゃい！！！好きな商品を選んで数字を入力してね！！"
    self.drinks.each_with_index do |drink, i|
      puts "[#{i+1}]：#{"===ドリンク名==="} #{"===ドリンクの価格==="}円"   # 穴埋め問題
    end
  end

  def pay(user)
    puts "商品を選んでください"
    chosen_drink = "===ユーザーが選択したドリンク名==="   # 穴埋め問題 Userクラスのchoose_drinkメソッドを使用する

    if chosen_drink.number == 0
      puts "ごめんなさい、#{"===ドリンク名==="}は売り切れです。"   # 穴埋め問題
    end

    charge = "===ユーザーの所持金===" - "===ドリンクの価格==="   # 穴埋め問題

    if charge >= 0
      puts "#{"===ドリンク名==="}のお買い上げありがとうございます！"   # 穴埋め問題
      puts "おつりは#{charge}円です！"
      chosen_drink.pay
      # "===ユーザの所持金を、購入後の金額で更新する==="   # 穴埋め問題
    else
      puts "投入金額が足りないよ！"
      return
    end

  end

end