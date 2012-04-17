class Card

  attr_reader :suit, :rank

  def initialize(opts = {})
    @suit = opts[:suit]
    @rank = opts[:rank]
  end

  def to_s
    "#{rank} of #{suit}"
  end

end
