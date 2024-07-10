require 'bundler'
Bundler.require

#require 'json'

$:.unshift File.expand_path("./../lib", __FILE__)
#$:.unshift File.expand_path("./lib", __dir__)

#require 'app/fichier\_1'

#require 'views/fichier\_2'

#require_relative 'lib/player'
#require_relative 'lib/game'
#require 'pry'


#CSV.open("db/emails.csv", "wb") do |csv|
    #csv << ["ligne", "de", "csv","données"]
    #csv << ["autre", "ligne"]
#end

#objet = CSV.read ("db/emails.csv")

   # f.write (JSON.pretty_generate(d))
#end
#d ={
    #"a" => 1,
    #"b" => 2,
    #"c" => 3,
    #"d" => 3
#}

#File.open("db/emails.json","w") do |f|
   # f.write (JSON.pretty_generate(d))
#end

#json= File.read('db/emails.json')
#objet=JSON.parse(json)

#pp "db/emails.json"

require 'app/scrapper'

# Exécuter le scrapping
scrapper = Scrapper.new
#emails = scrapper.perform
emails = scrapper.fetch_townhall_emails

# Sauvegarder les données dans différents formats
scrapper.save_as_JSON(emails)
#scrapper.save_as_spreadsheet(emails)
#scrapper.save_as_csv(emails)










#binding.pry



