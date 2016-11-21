require_relative 'calculator.rb'

def valid_number_input
  # Récupérer l'input
  input = gets.chomp
  # Tester l'input
  until input.match(/^\d+$/)
    puts "Wrong format, enter a valid number"
    print ">"
    input = gets.chomp
  end
  return input.to_i
  # Si input pas bonne > Message d'error
  # Si input bonne > result

end

# Acceuillir l'utilisateur
puts "Hello, welcome in your calculator"

response = "y"

while response == "y"

# Demander le type d'opération
puts "What type of operator you'd like to do (+/-/*/:) ?"
operator = gets.chomp

# Demander chiffre 1
puts "Please, enter your first digit"
print ">"

# Stocker le chiffre 1
first_digit = valid_number_input

# Demander le chiffre 2
puts "Please, enter your second digit"
print ">"

# Stocker le chiffre 2
second_digit = valid_number_input

# Opération entre chiffre 1 et chiffre 2 (addition)
result = calculate(first_digit, second_digit, operator)

# Aficher le resultat ou une erreur
if result == ""
  puts "Error ! Your operator failed"
else
puts "Your result is #{result}"
end

# Demander si autre opération
puts "Do you want to continue with another operator (y/n) ?"
print ">"
response = gets.chomp
end

puts "Have a nice day"
