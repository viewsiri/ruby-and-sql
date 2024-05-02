# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

puts "There are #{Company.all.count} comapnies"
puts "There are #{Contact.all.count} comapnies"

# - Insert and read contact data for companies in the database

apple = Company.find_by({"name" => "Apple"})
p apple

# 1. insert new rows in the contacts table with relationship to a company

contact = Contact.new
contact["first_name"] = "Tim"
contact["last_name"] = "Cook"
contact["email"] = "tim@apple.com"
contact["company_id"] = apple["id"]
contact.save
p contact

amazon = Company.find_by({"name" => "Amazon"})
p amazon

contact = Contact.new
contact["first_name"] = "Larry"
contact["last_name"] = "Page"
contact["email"] = "larry@amazon.com"
contact["company_id"] = apple["id"]
contact.save
p contact


# 2. How many contacts work at Apple?



# 3. What is the full name of each contact who works at Apple?
