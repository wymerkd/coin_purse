require('rspec')
require('coin_combos')

describe('#coin_hash') do
  it("returns array of coin names") do
    test = Pocket.new(50)
    expect(test.coin_hash()).to(eq("2 quarters"))
  end
  it("returns number of pennies depending on users input") do
    test = Pocket.new(35)
    expect(test.coin_hash()).to(eq("1 quarter 1 dime"))
  end
  it("returns number of pennies depending on users input") do
    test = Pocket.new(45)
    expect(test.coin_hash()).to(eq("1 quarter 2 dimes"))
  end
  it("returns number of pennies depending on users input") do
    test = Pocket.new(80)
    expect(test.coin_hash()).to(eq("3 quarters 1 nickel"))
  end
  it("returns number of pennies depending on users input") do
    test = Pocket.new(111)
    expect(test.coin_hash()).to(eq("4 quarters 1 dime 1 penny"))
  end
  it("returns number of pennies depending on users input") do
    test = Pocket.new(11105)
    expect(test.coin_hash()).to(eq("444 quarters 1 nickel"))
  end
end
