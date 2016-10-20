# GPS 2.2

# Method to create a list


def create_list(groceries)
	grocery_list = groceries.split(" ")
	grocery_hash = {}
	grocery_list.each do |quantity|
	grocery_hash[quantity] = 1
	end
	grocery_hash	
end

def add_item(grocery_hash, item, quantity = 1)
	grocery_hash[item] = quantity
	grocery_hash
end

def remove_item(grocery_hash, item)
	grocery_hash.delete(item)
	grocery_hash
end

def update_quantity(grocery_hash, item, quantity)
	grocery_hash[item] = quantity
	grocery_hash
end

def print_list(grocery_hash)
	grocery_hash.each do |item, quantity|
	puts "I need #{quantity} #{item}."
	end
end

shopping_list = create_list("lemonade tomatoes onions ice-cream")
p add_item(shopping_list, "lemonade", 2)
p add_item(shopping_list, "tomatoes", 3)
p add_item(shopping_list, "ice-cream", 4)
p remove_item(shopping_list, "lemonade") 
p update_quantity(shopping_list, "ice-cream", 1)
print_list(shopping_list)

# new_hash = list("carrots broccoli peas")
# p list("carrots broccoli peas")
# p assign_quantity("carrot", 10)
# p add_item(new_hash, "tomato", 6)
# p remove_item(new_hash, "carrots")
# p update_quantity(new_hash, "tomato", 8)
# print_list(new_hash)



# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list

# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: