require "pry"

def game_hash
    {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {
        :player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
        },
        {
        :player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
        },
        {
        :player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
        },
        {
        :player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
        },
        {
        :player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
        }
      ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        {
        :player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
        },
        {
        :player_name => "Bismack Biyombo", 
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
        },
        {
        :player_name => "DeSagna Diop", 
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
        },
        {
        :player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
        },
        {
        :player_name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
        }
      ]
    }
  }
  end
  
def num_points_scored(player_name)
  num_points = nil
    game_hash.each do |location, team_data|
      team_data[:players].each do |player|
        # binding.pry
        if player[:player_name] == player_name
          num_points = player[:points]
          # binding.pry
        end
      end
    end
    return num_points
  end
  
  # can do the same thing as above because shoe is in the same data set as points
  
def shoe_size(player_name)
  shoe_var = nil
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      if player[:player_name] == player_name
        shoe_var = player[:shoe]
    end
  end
end
  return shoe_var
end
  

  
  def team_colors(team_name)
game_hash.each do |location, team_data|
  # binding.pry
  if team_data[:team_name] == team_name
    return team_data[:colors]
    end
  end
end
  
def team_names
  # want new arrays so .each isnt ideal
  game_hash.map do |location, team_data|
    # binding.pry
    team_data[:team_name]
end
end

def player_numbers(team_name)
  #new array for player_numbers
  number_array = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      team_data[:players].each do |player|
        player.each do |key, value|
          # binding.pry
          if key == :number
            number_array << value
        end
      end
      end
    end
  end
  return number_array
end

def player_stats(player_name) 
  stat_hash = {}
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      # binding.pry
      if attribute == :players
        data.each do |player_stats|
          if player_stats[:player_name] == player_name
            player_stats.delete(:player_name)
            stat_hash = player_stats
            # binding.pry
          return stat_hash
        end
      end
  end
end
end
stat_hash
binding.pry
end

def big_shoe_rebounds
  big_shoe = 0
  most_rebounds = 0
  player_name = ""
  game_hash.each do |location, team_data|
    team_data[:players].each  do |player|
    # binding.pry
    if big_shoe < player[:shoe]
      big_shoe = player[:shoe]
      most_rebounds = player[:rebounds]
  end
end
end
return most_rebounds
end