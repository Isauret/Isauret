def comment_anchorman (message, duration, horses)
  sleep duration
  puts message
  print_race(horses)
end

def print_race (horses)
  horses.shuffle.each_with_index do |horse, index|
    puts "#{index+1} - #{horse}"
  end
end


# Définir mon array de chevaux
horses = ["Marguerite", "Sibiscute", "Black"]


# Afficher le nom des chevaux

horses.each_with_index do |horse, index|
  puts "#{index+1} - #{horse}"
end

# Demander à l'utilisateur sur quel cheval il mise
puts "What is the number that you choose?"
print ">"

# Stocker son choix
choice = gets.chomp.to_i
horse_chosen = horses[choice-1]

puts " You choose this horse : #{horse_choosen}"

comment_anchorman ("oulala super départ", 1, horses)
comment_anchorman ("la course s'intensifie", 2, horses)
comment_anchorman ("On est tout proche du but", 3, horses)

result = horses.shuffle

# Générer aléatoirement un classement

horses_sorted = horses.shuffle

horses_sorted.each_with_index do |horse, index|
  puts "#{index+1} - #{horse}"
end

# Dire à l'utilisateur si son choix est gagnant

if horses_sorted[0] == horse_chosen
  puts "You won!"
else
  puts "You lost"
end


