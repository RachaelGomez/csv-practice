require 'csv'
require 'awesome_print'

# athlete_data = CSV.read("data/athlete_events.csv", headers: true).map { |row| row.to_h }
# ap athlete_data[0]

def get_all_olympic_athletes(filename)
  olympic_hashes = CSV.read(filename, headers: true).map { |athlete| athlete.to_h }
  new_array = []
  olympic_hashes.each do |athlete|
    new_array << athlete.select {|key| %w[ID Name Height Team Year City Sport Event Medal].include?(key)}
    olympic_hashes = new_array

  end
  length = olympic_hashes.length
  print length
  return olympic_hashes


end

def total_medals_per_team(olympic_data)
  team_medals = []
  olympic_data.each do |athlete|
    athlete.each do |k, v|
      if k == "Team"

      end
    end

  end

end

# def get_all_gold_medalists(olympic_data)
# end
puts get_all_olympic_athletes('data/athlete_events.csv')