# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
User.destroy_all

user1 = User.create("id"=>1, "first_name"=>"Kevin", "last_name"=>"Johnson", "university"=>"Tokyo University", "address" => "2-5-5 Azabu Juban, Minato, Tokyo", "email"=>"abc@gmail.com", "password"=>"123456")
User.create({"id"=>2, "first_name"=>"Earl", "last_name"=>"Harris", "university"=>"Waseda University", "address" => "3-11-1 Shinjuku, Tokyo", "email"=>"abcd@gmail.com", "password"=>"123456"})
User.create({"id"=>3, "first_name"=>"Amy", "last_name"=>"Brown", "university"=>"Tokyo University", "address" => "2-5-5 Azabu Juban, Minato, Tokyo", "email"=>"abcde@gmail.com", "password"=>"123456"})
User.create({"id"=>4, "first_name"=>"Mary", "last_name"=>"Potts", "university"=>"Tokyo University", "address" => "2-9-1 Azabu Juban, Minato, Tokyo", "email"=>"abcdef@gmail.com", "password"=>"123456"})
User.create({"id"=>5, "first_name"=>"Chris", "last_name"=>"Barry", "university"=>"Keio University", "address" => "1-8-5 Roppongi Hills, Minato, Tokyo", "email"=>"abcdefg@gmail.com", "password"=>"123456"})
User.create({"id"=>6, "first_name"=>"Simon", "last_name"=>"Thompson", "university"=>"Waseda University", "address" => "1-8-2 Roppongi, Minato, Tokyo", "email"=>"abcdefgh@gmail.com", "password"=>"123456"})
User.create({"id"=>7, "first_name"=>"Peter", "last_name"=>"Bradley", "university"=>"Waseda University", "address" => "1-5-3 Meguro-ku, Meguro, Tokyo", "email"=>"abcdefghi@gmail.com", "password"=>"123456"})
User.create({"id"=>8, "first_name"=>"David", "last_name"=>"Parker", "university"=>"Waseda University", "address" => "2-11-4 Meguro-ku, Meguro, Tokyo", "email"=>"abcdefghij@gmail.com", "password"=>"123456"})

# User.create(first_name: "David", last_name: "Parker")

#books

Book.destroy_all

Book.create("id"=>1, "title"=>"Principal of Microeconomics", "edition"=>"7th", "condition"=>"Like New", "price"=>42, "subject"=>"Econ 101", "description"=>"The book is quite new, i used it for just a few times as I have replied on my professor's slides.", "user_id"=> user1.id, "publisher"=>"Cengage Learning", "isbn"=>"1123456998")
Book.create({"id"=>2, "title"=>"Intermediate Macroeconomics", "edition"=>"3rd", "condition"=>"Fair", "price"=>28, "subject"=>"Econ 102", "description"=>"The book is quite new, i used it for just a few times as I have replied on my professor's slides.", "user_id"=>2, "publisher"=>"Cengage Learning", "isbn"=>"1123456123"})
Book.create({"id"=>3, "title"=>"Pre-Calculus", "edition"=>"2nd", "condition"=>"Fair", "price"=>26, "subject"=>"Math 049", "description"=>"The cover and the pages are quite new, just minor traces of usage.",  "user_id"=>3, "publisher"=>"Pearson", "isbn"=>"1123456234"})
Book.create({"id"=>4, "title"=>"Calculus 1A", "edition"=>"3rd", "condition"=>"Poor", "price"=>12, "subject"=>"Math 101", "description"=>"Highlights and marks are explicit over the pages.", "user_id"=>4, "publisher"=>"McGraw Hill", "isbn"=>"1123456235"})
Book.create({"id"=>5, "title"=>"Calculus 1B", "edition"=>"4td", "condition"=>"Poor", "price"=>14, "subject"=>"Math 102", "description"=>"Quite heavily used before, but it is still solid and usable.", "user_id"=>5, "publisher"=>"McGraw Hill", "isbn"=>"1123433356"})
Book.create({"id"=>6, "title"=>"Calculus 1B", "edition"=>"4td", "condition"=>"Fair", "price"=>19, "subject"=>"Math 102", "description"=>"Some marks on the pages, in fair to good condition overall.", "user_id"=>3, "publisher"=>"McGraw Hill", "isbn"=>"1123456456"})
Book.create({"id"=>7, "title"=>"Calculus 1B", "edition"=>"4td", "condition"=>"Good", "price"=>24, "subject"=>"Math 102", "description"=>"Quite heavily used before, but it is still solid and usable.", "user_id"=>4, "publisher"=>"McGraw Hill", "isbn"=>"1123456789"})
Book.create({"id"=>8, "title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Like New", "price"=>43, "subject"=>"Psych 101", "description"=>"The book is like NEW, barely used! ", "user_id"=>6, "publisher"=>"Oxford University Press", "isbn"=>"1127893456"})
Book.create({"id"=>9, "title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Poor", "price"=>15, "subject"=>"Psych 101", "description"=>"The book's back cover is damaged, but the inner pages are fine.",  "user_id"=>7, "publisher"=>"Oxford University Press", "isbn"=>"8901123456"})
Book.create({"id"=>10, "title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Like New", "price"=>45, "subject"=>"Psych 101", "description"=>"The book is in mint condition!!",  "user_id"=>2, "publisher"=>"Oxford University Press", "isbn"=>"1123222456"})
Book.create({"id"=>11, "title"=>"Early Film History", "edition"=>"3rd", "condition"=>"Like New", "price"=>55, "subject"=>"Film 101", "description"=>"The book is in very new condition, and it is the latest edition!", "user_id"=>6, "publisher"=>"Kendall Hunt Publishing", "isbn"=>"1115123456"})
Book.create({"id"=>12, "title"=>"Early Film History", "edition"=>"2nd", "condition"=>"Fair", "price"=>34, "subject"=>"Film 101", "description"=>"The book is in fair condition with some marks and highlights.", "user_id"=>7, "publisher"=>"Kendall Hunt Publishing", "isbn"=>"1112223456"})
Book.create({"id"=>13, "title"=>"Early Film History", "edition"=>"2nd", "condition"=>"Good", "price"=>38, "subject"=>"Film 101", "description"=>"The book is in very good condition! I have been took a good care of the book last semester!",  "user_id"=>8, "publisher"=>"Kendall Hunt Publishing", "isbn"=>"8001123456"})






#purchases

Purchase.destroy_all

Purchase.create({"id"=>1, "user_id"=>3, "dialogue"=>"I would like to purchase this book, make an exchange tomorrow?", "book_id"=>3})
Purchase.create({"id"=>2, "user_id"=>7, "dialogue"=>"let's meet tomorrow to make the transaction of the book, alright?", "book_id"=>9})
Purchase.create({"id"=>3, "user_id"=>2, "dialogue"=>"Do you want to make an exchange next Monday?", "book_id"=>10})
Purchase.create({"id"=>4, "user_id"=>8, "dialogue"=>"I am in need of this book, please contact me at 123-123-234, thanks!", "book_id"=>13})
