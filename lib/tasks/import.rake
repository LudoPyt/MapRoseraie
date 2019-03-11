require 'csv'
namespace :import do
  desc "TODO"
  task csv: :environment do
    roses = './lib/seeds/Liste_Rosiers.csv'
    positions = './lib/seeds/Liste_Positions.csv'
    CSV.foreach(roses, headers: true) do |row|
      name = row[4].to_s.strip
      next if name.blank?
      person = row[6]
      number = row[8]
      rose = Rose.find_or_create_by name: name
      rose.family = row[7]
      rose.creationDate = row[5]
      rose.getter = row[6]
      rose.existingNumber = row[8]
      rose.save
      CSV.foreach(positions, headers: true) do |row|
        plant_id = row[3]
        if plant_id == rose.id
            rose.latitude = row[1]
            rose.longitude = row[2]
            rose.save
        end
      end
    end

  end
end
