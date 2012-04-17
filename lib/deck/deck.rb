class Deck

  attr_reader :cards, :drawn

  def initialize
    build_deck
    shuffle
  end

  def shuffle
    build_deck if !@drawn.empty?
    @cards.shuffle!
  end

  def draw(hand_size = 1)
    hand_size = size if hand_size > size
    if hand_size == 1
      card = @cards.shift
      @drawn.unshift(card)
      card
    else
      _cards = []
      hand_size.times do
        _cards << draw
      end
      _cards
    end
  end

  def size
    @cards.size
  end

  private

  def build_deck
    @cards = standard_deck
    @drawn = []
  end

  def standard_deck
    cards = []
    %w(Hearts Spades Clubs Diamonds).each do |suit|
      ((1..9).to_a + %w(Jack Queen King Ace)).each do |rank|
        cards << Card.new(suit: suit, rank: rank)
      end
    end
    cards
  end

end
