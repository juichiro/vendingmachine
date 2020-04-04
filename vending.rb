class VM
  attr_accessor :drinks
  def initialize
    @drinks = []
  end
  def add(drink)
    @drinks << drink
  end
  def show
    index = 0
    @drinks.each do |drink|
      puts "番号:#{index} #{drink.name}: #{drink.price}"
      index += 1
    end
        puts '購入したい商品の番号を入力してください'
  end
  # def sell
  #   puts "購入する商品の番号を入力してください"
  #   number = gets.chomp.to_i
  #   sleep(2)
  #   if @drinks[number].nil?
  #     puts "無効の番号です"
  #   else
  #     puts "#{@drinks[number].name}が出てきた"
  #   end
  # end
end
class Drink
  attr_accessor :name, :price
  def initialize(name,price)
    @name = name
    @price = price
  end
end

class Buyer
  attr_accessor :name, :money
  def initialize(name,money)
    @name = name
    @money = money
  end
  def earn(money)
    @money += money
  end

  def buy(vm)
    number = gets.chomp.to_i
    if vm.drinks[number].nil?
      puts "その番号は無効です"
    elsif self.money >= vm.drinks[number].price
      puts "ゴクゴク、#{vm.drinks[number].name}は美味しいなあ"
    else
      puts "お金が足りない。。。"
    end
  end
end

vm1 = VM.new
vm1.add(Drink.new('coke', 150))
vm1.add(Drink.new('soda',300))
vm1.show
Buyer.new('ひろし',800).buy(vm1)
