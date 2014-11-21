require 'spec_helper'

describe 'POST /scores.json' do
  it 'should create a score' do
    json_post '/scores', <<-JSON
    {
      "warrior_name": "Test Warrior",
      "level_number": 1,
      "level_score": 10,
      "total_score": 10,
      "source_code": "class Test",
      "tower": "advanced",
      "time_bonus": 0
    }
    JSON
    expect(response.code).to start_with "2"
    expect(json_response).to include({
      "clear_bonus" => 0,
      "level_number" => 1,
      "level_score" => 10,
      "time_bonus" => 0,
      "source_code" => "class Test",
      "tower" => "advanced",
      "total_score" => 10,
    })
    expect(json_response['warrior_id']).to be_a Numeric
    expect(json_response['id']).to be_a Numeric
  end


  def json_post(path, json)
    post path, json, {
      'CONTENT_TYPE' => 'application/json',
      'HTTP_ACCEPT' => 'application/json',
    }
  end

  def json_response
    JSON.parse response.body
  end

end
