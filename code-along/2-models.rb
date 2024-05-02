# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# puts "There are #{Company.all.count} companies"

# 2. insert new rows in companies table
new_company = Company.new
# p new_company
new_company["name"] = "Apple"
new_company["city"] = "Bangkok"
new_company.save
# p new_company

# puts "There are #{Company.all.count} companies"

company = Company.new
company["name"] = "Amazon"
company["city"] = "USA"
company.save
# puts "There are #{Company.all.count} companies"

company = Company.new
company["name"] = "Twitter"
company["city"] = "France"
company.save
puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company
all_companies = Company.all
# p all_companies
bkk_company = Company.where ({"city" => "Bangkok"})
# p bkk_company

# 4. query companies table to find single row for Apple
apple = Company.find_by({"name" => "Apple"})
# p apple

# 5. read a row's column value
# p apple["name"]
# p apple["city"]

# 6. update a row's column value
twitter = Company.find_by({"name" => "Twitter"})
# p twitter
twitter["name"] = "X"
# p twitter
twitter.save

# 7. delete a row

X = Company.find_by({"name" => "X"})
# p X
X.destroy

puts "There are #{Company.all.count} companies"