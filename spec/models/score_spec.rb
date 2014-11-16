require 'spec_helper'

describe Score do
  let(:score) { Score.new }

  it "must have a warrior" do
    score.valid?
    expect(score.errors[:warrior].size).to eq(1)
  end

  it "must have a level number" do
    score.valid?
    expect(score.errors[:level_number].size).to eq(1)
  end

  context "valid" do
    let(:score) { FactoryGirl.build(:score) }

    it "must give the combined score" do
      expect(score.combined_score).to eq(50)
    end
  end
end
