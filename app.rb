# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

require_relative 'lib/event'
require_relative 'lib/user'

# Classe Event

event = Event.new("2010-10-31 12:00", 30, "RDV super important", ["pierre@pierre.com", "jean@jean.jean"])

event.to_s

# Classe User

User.new("julie@julie.com", 35)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)

puts "\nRecherche d'email :"
print "> "
email = gets.chomp

user_1 = User.find_by_email(email)

if user_1
    puts "\nVoici l'âge du user trouvé : #{user_1.age} ans"
else
    puts "Aucun user trouvé."
end

# puts "Date: #{event.start_date}"
# puts "Durée: #{event.duration} minutes"
# puts "Le rendez-vous fini à #{event.end_date}"
# puts "Titre: #{event.title}"
# puts "Participants: #{event.attendees}"
# puts "Le rendez-vous est-il passé ? #{event.is_past?}"
# puts "Le rendez-vous est-il à venir ? #{!event.is_past?}"
# puts "Le rendez-vous est-il pour bientôt ? #{event.is_soon?}"
# puts "Rendez-vous décalé au #{event.postpone_24h}"