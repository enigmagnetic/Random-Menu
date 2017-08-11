
def user_prompt(array, num_items)
  puts "Please provide at least #{num_items} #{array} you would use to describe food. Separate each word with a space:"
  # split string into individual words
  array = gets.chomp.split(" ")
  # check that there are enough words to fill the menu
  until array.length >= num_items
    puts "That was not enough adjectives. Please enter #{num_items} or more words:"
    array = gets.chomp.split(" ")
  end
  # give each item proper capitalization
  return array.each { |adj| adj.capitalize! }
end

# greet user
puts "Welcome to the menu generator! How many menu items would you like to see today?"
num_items = gets.chomp.to_i

adjectives = user_prompt("adjectives", num_items)
methods = user_prompt("methods", num_items)
foods = user_prompt("foods", num_items)

rand_adjs = adjectives.sample(num_items)
rand_methods = methods.sample(num_items)
rand_foods = foods.sample(num_items)

# match the randomized array elements by index and print menu items
puts "Menu du jour:"
num_items.times do |i|
  puts "#{i + 1}. #{rand_adjs[i]} #{rand_methods[i]} #{rand_foods[i]}"
end
