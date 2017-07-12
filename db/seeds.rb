# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
User.destroy_all

users = []
users << User.new("first_name"=>"Kevin", "last_name"=>"Johnson", "university"=>"Tokyo University", "address" => "2-5-5 Azabu Juban, Minato, Tokyo", "email"=>"abc@gmail.com", "password"=>"123456")
users << User.new({"first_name"=>"Earl", "last_name"=>"Harris", "university"=>"Waseda University", "address" => "3-11-1 Shinjuku, Tokyo", "email"=>"abcd@gmail.com", "password"=>"123456"})
users << User.new({"first_name"=>"Amy", "last_name"=>"Brown", "university"=>"Tokyo University", "address" => "2-5-5 Azabu Juban, Minato, Tokyo", "email"=>"abcde@gmail.com", "password"=>"123456"})
users << User.new({"first_name"=>"Mary", "last_name"=>"Potts", "university"=>"Tokyo University", "address" => "2-9-1 Azabu Juban, Minato, Tokyo", "email"=>"abcdef@gmail.com", "password"=>"123456"})
users << User.new({"first_name"=>"Chris", "last_name"=>"Barry", "university"=>"Keio University", "address" => "1-8-5 Roppongi Hills, Minato, Tokyo", "email"=>"abcdefg@gmail.com", "password"=>"123456"})
users << User.new({"first_name"=>"Simon", "last_name"=>"Thompson", "university"=>"Waseda University", "address" => "1-8-2 Roppongi, Minato, Tokyo", "email"=>"abcdefgh@gmail.com", "password"=>"123456"})
users << User.new({"first_name"=>"Peter", "last_name"=>"Bradley", "university"=>"Waseda University", "address" => "1-5-3 Meguro-ku, Meguro, Tokyo", "email"=>"abcdefghi@gmail.com", "password"=>"123456"})
users << User.new({"first_name"=>"David", "last_name"=>"Parker", "university"=>"Waseda University", "address" => "2-11-4 Meguro-ku, Meguro, Tokyo", "email"=>"abcdefghij@gmail.com", "password"=>"123456"})

# User.create(first_name: "David", last_name: "Parker")

#books

Book.destroy_all

books = []
books << Book.new("title"=>"Principal of Microeconomics", "edition"=>"7th", "condition"=>"Like New", "price"=>42, "subject"=>"Econ 101", "description"=>"The book is quite new, i used it for just a few times as I have replied on my professor's slides.", "publisher"=>"Cengage Learning", "isbn"=>"1123456998")
books << Book.new({"title"=>"Intermediate Macroeconomics", "edition"=>"3rd", "condition"=>"Fair", "price"=>28, "subject"=>"Econ 102", "description"=>"The book is quite new, i used it for just a few times as I have replied on my professor's slides.", "publisher"=>"Cengage Learning", "isbn"=>"1123456123"})
books << Book.new({"title"=>"Pre-Calculus", "edition"=>"2nd", "condition"=>"Fair", "price"=>26, "subject"=>"Math 049", "description"=>"The cover and the pages are quite new, just minor traces of usage.",  "publisher"=>"Pearson", "isbn"=>"1123456234"})
books << Book.new({"title"=>"Calculus 1A", "edition"=>"3rd", "condition"=>"Poor", "price"=>12, "subject"=>"Math 101", "description"=>"Highlights and marks are explicit over the pages.", "publisher"=>"McGraw Hill", "isbn"=>"1123456235"})
books << Book.new({"title"=>"calculus 1B", "edition"=>"4th", "condition"=>"Poor", "price"=>14, "subject"=>"Math 102", "description"=>"Quite heavily used before, but it is still solid and usable.", "publisher"=>"McGraw Hill", "isbn"=>"1123433356"})
books << Book.new({"title"=>"Calculus-1B", "edition"=>"4th", "condition"=>"Fair", "price"=>19, "subject"=>"Math 102", "description"=>"Some marks on the pages, in fair to good condition overall.", "publisher"=>"McGraw Hill", "isbn"=>"1123456456"})
books << Book.new({"title"=>"Calculus 1B", "edition"=>"4th", "condition"=>"Good", "price"=>24, "subject"=>"Math 102", "description"=>"Quite heavily used before, but it is still solid and usable.", "publisher"=>"McGraw Hill", "isbn"=>"1123456789"})
books << Book.new({"title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Like New", "price"=>43, "subject"=>"Psych 101", "description"=>"The book is like NEW, barely used! ", "publisher"=>"Oxford University Press", "isbn"=>"1127893456"})
books << Book.new({"title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Poor", "price"=>15, "subject"=>"Psych 101", "description"=>"The book's back cover is damaged, but the inner pages are fine.",  "publisher"=>"Oxford University Press", "isbn"=>"8901123456"})
books << Book.new({"title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Like New", "price"=>45, "subject"=>"Psych 101", "description"=>"The book is in mint condition!!",  "publisher"=>"Oxford University Press", "isbn"=>"1123222456"})
books << Book.new({"title"=>"Early Film History", "edition"=>"3rd", "condition"=>"Like New", "price"=>55, "subject"=>"Film 101", "description"=>"The book is in very new condition, and it is the latest edition!", "publisher"=>"Kendall Hunt Publishing", "isbn"=>"1115123456"})
books << Book.new({"title"=>"Early Film History", "edition"=>"2nd", "condition"=>"Fair", "price"=>34, "subject"=>"Film 101", "description"=>"The book is in fair condition with some marks and highlights.", "publisher"=>"Kendall Hunt Publishing", "isbn"=>"1112223456"})
books << Book.new({"title"=>"Early Film History", "edition"=>"2nd", "condition"=>"Good", "price"=>38, "subject"=>"Film 101", "description"=>"The book is in very good condition! I have been took a good care of the book last semester!", "publisher"=>"Kendall Hunt Publishing", "isbn"=>"8001123456"})

books.each do |book|
 book.user = users.sample
 book.save
end



#purchases

Purchase.destroy_all

purchases = []
purchases << Purchase.new({"dialogue"=>"I would like to purchase this book, make an exchange tomorrow?"})
purchases << Purchase.new({"dialogue"=>"let's meet tomorrow to make the transaction of the book, alright?"})
purchases << Purchase.new({"dialogue"=>"Do you want to make an exchange next Monday?"})
purchases << Purchase.new({"dialogue"=>"I am in need of this book, please contact me at 123-123-234, thanks!"})

purchases.each do |purchase|
  purchase.book = books.sample
  purchase.user = users.reject { |user| purchase.book.user }.sample
  purchase.save
end
