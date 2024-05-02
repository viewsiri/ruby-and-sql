# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

puts "Salespeople: #{Salesperson.all.count}"

# 2. insert 1-2 rows in salespeople table.
sales = Salesperson.new
sales["first_name"] = "James"
sales["last_name"] = "Pitt"
sales["email"] = "james.pitt@hotmail.com"
sales.save
# p sales

sales = Salesperson.new
sales["first_name"] = "Peter"
sales["last_name"] = "Page"
sales["email"] = "peter.page@hotmail.com"
sales.save
p sales


# 3. write code to display how many salespeople rows are in the database

puts "Salespeople: #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

james = Salesperson.find_by({"first_name" => "Peter","last_name" => "Page"})

# p james

james["first_name"] = "Louis"
james.save

p james


# CHALLENGE:
# 5. write code to display each salesperson's full name
salespeople = Salesperson.all

for person in salespeople
first_name = person["first_name"]
last_name = person["last_name"]
puts "#{first_name} #{last_name}"
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
