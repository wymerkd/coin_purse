require('rspec')
require('coin_combos')

describe('#coin_maker') do
  it("returns number of pennies depending on users input") do
    expect(coin_maker(1)).to(eq("penny"))
  end
end
