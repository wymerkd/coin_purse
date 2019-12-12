

class Pocket
  attr_accessor(:coin, :pennies, :nickels, :dimes, :quarters)

  def initialize(coin)
    @coin = coin
    @pennies = 0
    @nickels = 0
    @dimes = 0
    @quarters = 0
    @purse = []
  end

  def coin_hash
    until (@coin == 0)
      if @coin >= 25
        @coin -= 25
        @quarters += 1
      elsif @coin % 10 == 0 && @coin >= 10
        @coin -= 10
        @dimes += 1
      elsif @coin % 5 == 0
        @coin -= 5
        @nickels += 1
      else
        @coin -= 1
        @pennies += 1
      end
    end
    if @quarters > 1
      @purse.push(@quarters)
      @purse.push("quarters")
    elsif @quarters == 1
      @purse.push(@quarters)
      @purse.push("quarter")
    end
    if @dimes > 1
      @purse.push(@dimes)
      @purse.push("dimes")
    elsif @dimes == 1
      @purse.push(@dimes)
      @purse.push("dime")
    end
    if @nickels > 1
      @purse.push(@nickels)
      @purse.push("nickels")
    elsif @nickels == 1
      @purse.push(@nickels)
      @purse.push("nickel")
    end
    if @pennies > 1
      @purse.push(@pennies)
      @purse.push("pennies")
    elsif @pennies == 1
      @purse.push(@pennies)
      @purse.push("penny")
    end
    @purse_string = @purse.join(" ")
    @purse_string
  end
end

# @coin_purse = []

#   coin_word = {1 => "penny", 2 => "penny", 3 => "penny", 4 => "penny", 5 => "nickel", 10 => "dime", 25 => "quarter"}
#   x = 0
#   array = []
# until (x >= @coin )
#   x = x + 1
#     fetch_coin = coin_word.fetch(@coin)
#     if fetch_coin === "nickel"
#       @coin = @coin - 5
#       array.push(fetch_coin)
#     elsif @coin < 5
#       @coin = @coin -1
#       array.push(fetch_coin)
#     end
#   end
#   array
# end
