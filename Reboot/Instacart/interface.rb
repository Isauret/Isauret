require_relative "utilities"

#Creer le catalogue
stock = {
"laptop" => {price: 900, quantity: 1},
"apple" => {price: 1, quantity: 100},
"table" => {price: 50, quantity: 10},
"kiwi" => {price: 2, quantity: 100},
}

result = 0


# Acceuilir l'utilisateur
puts "Hello, welcome in our catalogue"
puts "Do you want to see our product? (y/n)"

response = gets.chomp
while response == "y"

# Montrer le catalogue (liste des produits)
  puts "This is our product"
  print_stock(stock)

# Demander ce qu'il veut acheter
  puts "please choose a product"
  print ">"

# Récupérer sa commande
  name_to_test = gets.chomp
  command = valid_product (stock, name_to_test)
# Valider que le produit séléctionné est bien présent dans mon sac sinon redemander input
amount = valid_quantity (gets.chomp.to_i, stock[command][:quantity][:price],product)
  product_selected = gets.chomp

  until product_selected == valid_product.has_key?

puts "Your #{x}is valid with a quantity of #{y}"
print ">"
product_selected = gets.chomp
  end





# Afficher le produit choisi
  puts "You choose #{command} - #{stock[command][:price]}euros"

# Demander la quantité choisi
  puts "What quantity do you want? "
  print ">"
  quantity_chosen = gets.chomp.to_i

# Afficher selectionné tel produit avec telle quantité
puts "You choose #{command} and #{quantity_chosen}"

# Décrémenter le stock
stock[command][:quantity] -= quantity_chosen

# Lui afficher le montant total de sa commande
result += stock[command][:price] * quantity_chosen
    puts "You want to add an other product? (Y)"
  print ">"

  break if gets.chomp != "Y"
  end

# Afficher sa commande
puts " #{result}"

puts "Thank for shopping with Instacart"

# Vérifier si le produit existe

# Véerifier si les quantitués sont suffisante


