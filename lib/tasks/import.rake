require 'csv'

namespace :import do
  task users: :environment do
    filename = File.join Rails.root, "users.csv"
     counter = 0

     CSV.foreach(filename) do |row|
       name, email, sorte1, sorte22 = row
       user = User.create(name: name, email: email, sorte11: sorte1, sorte22: sorte22)
       counter += 1 if user.persisted?
    end
    puts "Imported #{counter} users"
  end
end
