require 'spec_helper'

describe BlackJack::Hand do

  let(:hand) { BlackJack::Hand.new }

  describe 'on initialization' do
    it "starts out empty" do
      expect(hand.empty?).to be == true
    end

    xit "has a values array that is empty" do
      expect(hand.values).to be_empty
    end
  end

  xdescribe '#add' do
    it "increases the size of the hand" do
      hand.add(BlackJack::Card.new(:heart, 'Q'))
      expect(hand.size).to be == 1
      hand.add(BlackJack::Card.new(:heart, 'K'))
      expect(hand.size).to be == 2
    end
  end

  describe '#values' do
    # the goal of our values method is to return all the possible
    # but unique sums of the cards values

    context 'when only one card' do
      context 'when it is a non-ace card' do
        it "is an array of size 1" do
          hand.add(BlackJack::Card.new(:heart, 'Q'))
          expect(hand.values.length).to be == 1
        end
        it "includes the value of the card" do
          hand.add(BlackJack::Card.new(:heart, 'Q'))
          expect(hand.values).to be == [10]
        end
      end

      context 'when it is an ace' do
        it "is the same as the card.values" do
          card = BlackJack::Card.new(:heart, 'A')
          hand.add(card)
          expect(hand.values).to be == card.values
        end

      end
    end

    context 'when two cards' do
      context 'when neither is an ace' do
        it "is an array with length 1" do
          hand.add(BlackJack::Card.new(:heart, '3'))
          hand.add(BlackJack::Card.new(:heart, '4'))
          expect(hand.values.length).to be == 1
        end
        it "includes the sum of the two card values" do
          hand.add(BlackJack::Card.new(:heart, '3'))
          hand.add(BlackJack::Card.new(:heart, '4'))
          expect(hand.values).to be == [7]
        end
      end

      context 'when both are aces' do
        it "is an array with length 3" do
          hand.add(BlackJack::Card.new(:heart, 'A'))
          hand.add(BlackJack::Card.new(:diamond, 'A'))
          expect(hand.values.length).to be == 3
        end
        it "includes 2" do
          hand.add(BlackJack::Card.new(:heart, 'A'))
          hand.add(BlackJack::Card.new(:diamond, 'A'))
          expect(hand.values).to include(2)
        end
        it "includes 12" do
          hand.add(BlackJack::Card.new(:heart, 'A'))
          hand.add(BlackJack::Card.new(:diamond, 'A'))
          expect(hand.values).to include(12)
        end
        it "includes 22"do
          hand.add(BlackJack::Card.new(:heart, 'A'))
          hand.add(BlackJack::Card.new(:diamond, 'A'))
          expect(hand.values).to include(22)
        end
      end

      context 'when only one is an ace' do
        it "is an array of length two" do
          hand.add(BlackJack::Card.new(:heart, 'A'))
          hand.add(BlackJack::Card.new(:diamond, '5'))
          expect(hand.values.length).to be == 2
        end
        it "includes a value that is 1 more than the non-ace card value" do
          hand.add(BlackJack::Card.new(:heart, 'A'))
          hand.add(BlackJack::Card.new(:diamond, '5'))
          expect(hand.values).to include(6)
        end
        it "includes a value that is 11 more than the non-ace card value" do
          hand.add(BlackJack::Card.new(:heart, 'A'))
          hand.add(BlackJack::Card.new(:diamond, '5'))
          expect(hand.values).to include(16)
        end
      end
    end

    # stretch exercises
    context 'when three cards' do
      # what are the cases to consider?
      # write specs and make it go
    end
  end

  describe '#bust?' do
    context 'when the values are all greater than 21' do
      it "is true"
    end

    context 'when none of the values are greater than 21' do
      it 'is false'
    end

    context 'when any of the values are less than or equal to 21' do
      it "is false"
    end
  end

  describe '#hit?' do
    # stretch exercises
    # figure out some rules for suggesting whether this hand should hit
    # check the internet or come up with your own ways to make this assessment
    #
    # write tests
    # make them pass
    # do this one at a time
    # step by step
  end
end
