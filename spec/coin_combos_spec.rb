require('rspec')
require('coin_combos')

describe('#coin_hash') do
  it("returns array of coin names") do
    test = Pocket.new(50)
    expect(test.coin_hash()).to(eq([2,"quarters"]))
  end
  # it("returns number of pennies depending on users input") do
  #   test = Pocket.new(45)
  #   expect(test.coin_hash()).to(eq(2))
  # end
end
