defmodule Cards do
  def hello do # define a new method inside our module
    "Hi there !"  # will automatically return this string (implicite return)
                  # last value will automatically get returned
                  # same as `return "Hi there !"`
  end

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do # deck is an argument of our method
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
