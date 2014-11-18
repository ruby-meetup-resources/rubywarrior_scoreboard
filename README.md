RubyWarrior Scoreboard
======================

Basic API call

    POST /scores
    {
      "warrior_name": "Test Warrior",
      "level_number": 1,
      "level_score": 10,
      "total_score": 10,
      "source_code": "class Player ... end",
      "time_bonus": 0
    }
    
    
### ENV variables

* If the `HIDE_SOURCE` ENV variable is present, source code will be hidden
* If the `HIDE_FLOG` ENV variable is present, flog details will be hidden
