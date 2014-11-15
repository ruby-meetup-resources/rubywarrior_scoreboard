require 'spec_helper'

describe Warrior do
  let(:warrior) { Warrior.new }

  it "must have a name" do
    warrior.valid?
    expect(warrior.errors[:name].size).to eq(1)
  end
end
