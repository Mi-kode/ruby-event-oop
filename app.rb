# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
# require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

event = Event.new("2025-05-21 17:20", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
puts "Événement de test :"
puts "Date: #{event.start_date}"
puts "Durée: #{event.duration} minutes"
puts "Le rendez-vous fini à #{event.end_date}"
puts "Titre: #{event.title}"
puts "Participants: #{event.attendees}"
puts "Le rendez-vous est-il passé ? #{event.is_past?}"
puts "Le rendez-vous est-il à venir ? #{!event.is_past?}"
puts "Le rendez-vous est-il pour bientôt ? #{event.is_soon?}"
puts "Rendez-vous décalé au #{event.postpone_24h}"