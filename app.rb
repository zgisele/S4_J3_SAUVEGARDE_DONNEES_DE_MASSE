require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
#$:.unshift File.expand_path("./lib", __dir__)
require 'app/scrapper'

# Exécuter le scrapping
scrapper = Scrapper.new
#emails = scrapper.perform
emails = scrapper.fetch_townhall_emails

# Sauvegarder les données dans différents formats
#scrapper.save_as_JSON(emails)
#scrapper.save_as_spreadsheet(emails)
scrapper.save_as_csv(emails)










#binding.pry



