require 'rails_helper'
require 'player.rb'

RSpec.describe WeeklyScore, type: :model do

  player = Player.last

  subject { 
    described_class.new(score: 10, week: 1, player_id: player.id)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a score" do
    subject.score = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a week" do
    subject.week = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a player id" do
    subject.player_id = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it "belongs to player" do
      assc = described_class.reflect_on_association(:player)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
