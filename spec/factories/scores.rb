FactoryGirl.define do
  factory :score do
    warrior { Warrior.first || FactoryGirl.create(:warrior) }
    time_bonus 10
    clear_bonus 10
    total_score "100 + 10 + 10 + 30 = 150"
    level_score 30
    level_number 1
    source_code "class Player
                    def play_turn(warrior)
                      warrior.walk!
                    end
                  end"
  end
end
