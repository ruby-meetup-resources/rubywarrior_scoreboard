require 'spec_helper'

describe 'POST /scores.json' do
  it 'should do something' do
    json_post '/scores', <<-JSON
    {
      "warrior_name": "Test Warrior",
      "level_number": 1,
      "level_score": 10,
      "total_score": 10,
      "time_bonus": 0
    }
    JSON
    expect(response.code).to eq "200"
  end


  def json_post(path, json)
    post path, json, {
      'CONTENT_TYPE' => 'application/json',
      'HTTP_ACCEPT' => 'application/json',
    }
  end

end
