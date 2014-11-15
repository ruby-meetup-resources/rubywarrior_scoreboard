require 'spec_helper'

describe Score do
  let(:score) { Score.new }

  it "must have a warrior" do
    score.valid?
    expect(score.errors[:warrior].size).to eq(1)
  end
end
