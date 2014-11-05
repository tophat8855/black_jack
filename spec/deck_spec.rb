require 'spec_helper'

describe BlackJack::Deck do

  describe 'on initialization of a new Deck' do
    it "has 52 cards in it" do
      deck = BlackJack::Deck.new

      expect(deck.size).to be == 52
    end

    it "has only Card objects in it" do
      deck = BlackJack::Deck.new

      card_classes = deck.cards.map(&:class).uniq

      expect(card_classes.first).to be == BlackJack::Card
      expect(card_classes.length).to eq(1)
    end
  end

  describe '#shuffle' do
    it "changes the order of the cards" do
      deck = BlackJack::Deck.new

      original_deck = deck.cards
      shuffled_deck = deck.shuffle

      expect(original_deck).to_not be == shuffled_deck
    end
  end

  describe '#deal' do
    it "decrements the deck size by 1" do
      deck = BlackJack::Deck.new

      deck.deal
      expect(deck.size).to be == 51
    end

    it "returns the card" do
      deck = BlackJack::Deck.new

      expect(deck.deal).to be_instance_of(BlackJack::Card)
    end

    it "returns nil when all the cards have been dealt" do
      deck = BlackJack::Deck.new

      52.times { deck.deal }

      expect(deck.deal).to be == nil
    end
  end
end
