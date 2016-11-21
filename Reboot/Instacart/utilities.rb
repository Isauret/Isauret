def print_stock (stock)
stock.each do |name, infos|
  puts "#{name} - #{infos[:price]} - #{infos[:quantity]}"
  end
end


def valid_product (stock,name)
  until stock.has_key? (name)
    puts "Wrong article, try again"
    print ">"
    name = gets.chomp
  end
  return name
end


def valid_quantity (amount,availibity,product)
  while amount > availibity
    puts "Not enough #{product} ! Only #{availibity} left"
    print ">"
    amount = gets.chomp.to_i
  end
  return amount
end


