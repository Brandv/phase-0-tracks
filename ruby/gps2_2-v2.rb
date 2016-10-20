# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define method for list which takes in items and quantities as parameters.
  # create new hash for grocery list.
  # take string of items and convert to array.
  # loop through each item in array, set each item to grocery list hash with default value of 1.
  #  print the list to the console with #print_list
# output: hash list with each item and quantity
def list(item)
	grocery_list = {}
	item_array = item.split("-") # "-" to fix ice cream edge case. Is this ok or bad code?
	item_array.each do |item, quantity|
		grocery_list[item.intern] = 1
	end
	grocery_list #why do I need to include this to avoid a typeError?
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
	# create add_item method with item and quantity parameters
	# add new item with quantity to hash 
# output: new item and quantity push to hash
def add_item(list_hash, item, quantity = 1)
	list_hash[item.intern] = quantity
	list_hash
end

# Method to remove an item from the list
# input: key symbol
# steps: 
	# create delete_item method with hash and key item parameter
	# run .delete method to hash on item argument
	# return updated hash
# output: hash, minus deleted key
def delete_item(list_hash, item)
	list_hash.delete(item.intern)
	list_hash
end

# Method to update the quantity of an item
# input: related key and new value
# steps:
	# create new_quantity method with hash, key, and value parameters.
	# assign new value to key in hash
	# return updated hash
# output: hash with updated quantity value
def new_quantity(list_hash, item, quantity)
	list_hash[item.intern] = quantity
	list_hash
end

# Method to print a list and make it look pretty
# input: name of hash to print
# steps: 
	# create print_list method(hash)
	# loop through each value of the hash
	# print each item and quantity in a sentence
# output: printed string for each item with quantity
def print_list(list_hash)
	list_hash.each do |item, quantity|
		puts "I need #{quantity} vine/bag/pints/bunch of #{item}!"
	end
end


#DRIVER CODE
grocery_list = list("Lemonade-Tomatoes-Onions-Ice Cream")
  new_quantity(grocery_list, "Lemonade", 2)
  new_quantity(grocery_list, "Tomatoes", 3)
  new_quantity(grocery_list, "Onions", 1)
  new_quantity(grocery_list, "Ice Cream", 4)
  add_item(grocery_list, "kale")
  delete_item(grocery_list, "Lemonade")
  new_quantity(grocery_list, "Ice Cream", 1)
p grocery_list
print_list(grocery_list)

#I did not refactor because I believe my code simple enough to be readable and effecient. 

# What did you learn about pseudocode from working on this challenge?
	# I learned how helpful it can be to split up drawing up blueprints and constructing the project.

# What are the tradeoffs of using arrays and hashes for this challenge?
	# With a hash you need more arguments. Arrays on their own can be incomplete and need to be passed into hashes.
# What does a method return?
	# the last output, unless you call Return before that.
# What kind of things can you pass into methods as arguments?
	# strings, integers, booleans, arrays, hashes
# How can you pass information between methods?
	# just make sure the arguments and variables are all accessible. 
# What concepts were solidified in this challenge, and what concepts are still confusing?
	# definitely solidifed how to build and add to a hash. also solidified how calling and nesting works. Still get tripped up on scope in terms of what you can call or not.