
class Pocket
  attr_reader(:coin, :pennies, :nickles, :dimes, :quarters)

  def initialize(coin)
    @coin = coin
    @pennies = 0
    @nickles = 0
    @dimes = 0
    @quarters = 0
  end

  def coin_hash
    until (@coin === 0)
      if @coin >= 25 && @coin % 25 === 0
          @coin -= 25
          @quarters += 1
        elsif @coin % 10
          @coin -= 10
          @dimes += 1
        end
      end
      purse = []
      purse.push(@quarters)
      purse.push("quarters")
      purse
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
