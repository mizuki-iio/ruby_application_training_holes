require "./drink"
require "./vending_machine"
require "./user"

puts "販売する商品を3つ補充してください"
drinks = []

3.times do |i|
  puts "用意する商品名は？"
  drink_name = gets.chomp

  puts "商品はいくら？"
  drink_price = gets.to_i

  puts "商品は何個補充する？"
  drink_number = gets.to_i

  drinks << Drink.new(drink_name, drink_price, drink_number)
end

vending_machine = VendingMachine.new(drinks)
vending_machine.show_drinks
money = 0
user_new = true

while true do
  puts "-----------------------------------------------"
  puts "お金を入れてください！！！"
  money = gets.to_i
  if user_new
    user = User.new(money)
    user_new = false
  else
    user.money += money
  end
  puts "投入金額は#{user.money}円です！"

  vending_machine.pay(user)

  puts "まだ買いますか？？"
  puts "[0]: はい！"
  puts "[1]: いいえ！"
  continue = gets.to_i
  if continue == 1
    return
  end
end