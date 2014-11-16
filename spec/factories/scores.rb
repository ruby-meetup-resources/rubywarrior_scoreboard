FactoryGirl.define do
  factory :score do
    warrior { Warrior.first || FactoryGirl.create(:warrior) }
    time_bonus 10
    clear_bonus 10
    total_score "20"
    level_score 30
    level_number 1
  end
end
