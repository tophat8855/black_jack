require 'spec_helper'

describe 'Playing cards (in Blackjack)' do

  describe 'initializing a playing card' do
    it 'returns its given suit and face' do
      card = BlackJack::Card.new(:heart, 'J')

      expect(card.suit).to be == :heart
      expect(card.face).to be == 'J'
    end
  end

  describe '#values' do
    xit 'returns the values of a card when it is a number' do
      card = BlackJack::Card.new(:heart, '6')

      expect(card.values).to be == [6]
    end

    xit 'returns the values of a card when it is a different number' do
      card = BlackJack::Card.new(:heart, '8')

      expect(card.values).to be == [8]
    end

    xit 'returns the values of a card when it is an Ace' do
      card = BlackJack::Card.new(:heart, 'A')

      expect(card.values).to be == [1, 11]
    end

    xit 'returns the values of a card when it is a Queen' do
      card = BlackJack::Card.new(:heart, 'Q')

      expect(card.values).to be == [10]
    end

    xit 'returns the values of a card when it is a King' do
      card = BlackJack::Card.new(:heart, 'K')

      expect(card.values).to be == [10]
    end

    xit 'returns the values of a card when it is a Jack' do
      card = BlackJack::Card.new(:heart, 'J')

      expect(card.values).to be == [10]
    end
  end

  describe '#==' do
    xit 'returns true when two cards have the same face and suit' do
      card_1 = BlackJack::Card.new(:heart, 'K')
      card_2 = BlackJack::Card.new(:heart, 'K')

      expect(card_1 == card_2).to be true
    end

    xit "returns false when two cards have different faces and different suits" do
      card_1 = BlackJack::Card.new(:heart, '3')
      card_1 = BlackJack::Card.new(:diamond, '2')

      expect(card_1 == card_2).to be false
    end

    xit "returns false when two cards have the same face but different suits" do
      card_1 = BlackJack::Card.new(:heart, '3')
      card_1 = BlackJack::Card.new(:diamond, '3')

      expect(card_1 == card_2).to be false
    end

    xit "returns false when two cards have different faces but the same suit" do
      card_1 = BlackJack::Card.new(:heart, '3')
      card_1 = BlackJack::Card.new(:heart, '2')

      expect(card_1 == card_2).to be false
    end
  end
end
