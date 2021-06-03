defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      value <> " of " <> suit
    end
  end

  #my function to solve the nested lists problem
  #also see List.flatten($listname)
  def init do
    create_deck() |> Enum.concat()
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    #returns hand as index 0, leftover deck as index 1
    Enum.split(deck, hand_size)
  end
end
