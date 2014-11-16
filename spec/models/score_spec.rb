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
end
